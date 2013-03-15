--- Base NPC script for trader NPCs
--
-- This script offers the functions that are required to turn an NPC into a trader
--
-- Author: Martin Karing

require("base.class")
require("base.common")
require("base.messages")
require("base.money")
require("npc.base.basic")

module("npc.base.trade", package.seeall)

tradeNPC = base.class.class(function(self, rootNPC)
    if (rootNPC == nil or not rootNPC:is_a(npc.base.basic.baseNPC)) then
        return;
    end;
    self["_parent"] = rootNPC;
    
    self["_sellItems"] = {};
    
    self["_buyItems"] = {};
    
    self["_wrongItemMsg"] = base.messages.Messages();
    self["_notEnoughMoneyMsg"] = base.messages.Messages();
    self["_dialogClosedMsg"] = base.messages.Messages();
    self["_dialogClosedNoTradeMsg"] = base.messages.Messages();
end);

function tradeNPC:addItem(item)
    if (item == nil or not item:is_a(tradeNPCItem)) then
        return;
    end;
    
    if (item._type == "sell") then
        table.insert(self._sellItems, item);
    elseif (item._type == "buyPrimary" or item._type == "buySecondary") then
		if (item._itemId == 97 or item._itemId == 320 or item._itemId == 321
			or item._itemId == 799 or item._itemId == 1367 or item._itemId == 2830) then
			debug("NPC can't buy item " .. item._itemId .. " because its blacklisted (container).");
		else
			table.insert(self._buyItems, item);
		end;
    end;
end;

function tradeNPC:addWrongItemMsg(msgGerman, msgEnglish)
    self._wrongItemMsg:addMessage(msgGerman, msgEnglish);
end;

function tradeNPC:addNotEnoughMoneyMsg(msgGerman, msgEnglish)
    self._notEnoughMoneyMsg:addMessage(msgGerman, msgEnglish);
end;

function tradeNPC:addDialogClosedMsg(msgGerman, msgEnglish)
    self._dialogClosedMsg:addMessage(msgGerman, msgEnglish);
end;

function tradeNPC:addDialogClosedNoTradeMsg(msgGerman, msgEnglish)
    self._dialogClosedNoTradeMsg:addMessage(msgGerman, msgEnglish);
end;

function tradeNPC:showDialog(npcChar, player)
    local anyTradeAction = false;
    local callback = function(dialog)
        local result = dialog:getResult()
        if result == MerchantDialog.playerSells then
            self:buyItemFromPlayer(npcChar, player, dialog:getSaleItem());
            anyTradeAction = true;
        else
            if result == MerchantDialog.playerBuys then
                self:sellItemToPlayer(npcChar, player, dialog:getPurchaseIndex(), dialog:getPurchaseAmount());
                anyTradeAction = true;
            elseif (not anyTradeAction and self._dialogClosedNoTradeMsg:hasMessages()) then
                local msgGerman, msgEnglish = self._dialogClosedNoTradeMsg:getRandomMessage();
                npcChar:talk(Character.say, msgGerman, msgEnglish);
            elseif (self._dialogClosedMsg:hasMessages()) then    
                local msgGerman, msgEnglish = self._dialogClosedMsg:getRandomMessage();
                npcChar:talk(Character.say, msgGerman, msgEnglish);
            end;
        end;
    end;
        
    local dialog = MerchantDialog(base.common.GetNLS(player, "Handel", "Trade"), callback)
    
    table.foreach(self._sellItems, function(_, item)
        item:addToDialog(player, dialog);
    end);
    table.foreach(self._buyItems, function(_, item)
        item:addToDialog(player, dialog);
    end);
    
    player:requestMerchantDialog(dialog)
end;

local function isFittingItem(tradeItem, boughtItem)
    if (tradeItem._itemId ~= boughtItem.id) then
        return false;
    end;
    
    if (tradeItem._data ~= nil and tradeItem._data ~= boughtItem.data) then
        return false;
    end;
    
    return true;
end;

function tradeNPC:buyItemFromPlayer(npcChar, player, boughtItem)
	-- Buying at special price
    for index, item in pairs(self._buyItems) do 
        if isFittingItem(item, boughtItem) then
            local price = item._price * boughtItem.number;
            if world:erase(boughtItem, boughtItem.number) then
                base.money.GiveMoneyToChar(player, price);
            end;
            return;
        end;
    end;
	
	-- Reject item
	if (self._wrongItemMsg:hasMessages()) then    
		local msgGerman, msgEnglish = self._wrongItemMsg:getRandomMessage();
		npcChar:talk(Character.say, msgGerman, msgEnglish);
	end;
end;

function tradeNPC:sellItemToPlayer(npcChar, player, itemIndex, amount)
    local item = self._sellItems[itemIndex + 1];
    if (item == nil) then
        base.common.InformNLS(player, "Ein Fehler ist beim Kauf des Items aufgetreten", "An error occurred while buying the item");
        return;
    end;
    
    if (base.money.CharHasMoney(player, item._price * amount)) then
        base.money.TakeMoneyFromChar(player, item._price * amount);
        local notCreated = player:createItem(item._itemId, amount, item._quality, item._data);
        if (notCreated > 0) then
            world:createItemFromId(item._itemId, notCreated, player.pos, true, item._quality, item._data);
        end;
    elseif (self._notEnoughMoneyMsg:hasMessages()) then
        local msgGerman, msgEnglish = self._notEnoughMoneyMsg:getRandomMessage();
        npcChar:talk(Character.say, msgGerman, msgEnglish);
    end;
end;

tradeNPCItem = base.class.class(function(self, id, itemType, nameDe, nameEn, price, stack, quality, data)
    if (id == nil or id <= 0) then
        error("Invalid ItemID for trade item");
    end;
    
    if (itemType ~= "sell" and itemType ~= "buyPrimary" and itemType ~= "buySecondary") then
        error("Invalid type for trade item");
    end;
    
    self["_itemId"] = id;
    self["_type"] = itemType;
    
    if (nameDe == nil or nameEn == nil) then
        self["_nameDe"] = world:getItemName(id, Player.german);
        self["_nameEn"] = world:getItemName(id, Player.english);
    else
        self["_nameDe"] = nameDe;
        self["_nameEn"] = nameEn;
    end;
    
    if (price == nil) then
        if (itemType == "sell") then
            self["_price"] = world:getItemStatsFromId(id).Worth;
        elseif (itemType == "buyPrimary") then
            self["_price"] = world:getItemStatsFromId(id).Worth * 0.1;
        elseif (itemType == "buySecondary") then
            self["_price"] = world:getItemStatsFromId(id).Worth * 0.05;
        end;
    else
        self["_price"] = price;
    end;
    
    if (itemType == "sell" and stack ~= nil) then
        self["_stack"] = stack;
    else
        self["_stack"] = world:getItemStatsFromId(id).BuyStack;
		if (self["_stack"] == nil) then
			debug("_stack is NIL, the server failed! Hard.");
			self["_stack"] = 1;
		end;
    end;
    
	if (itemType == "sell" and quality ~= nil) then
		self["_quality"] = quality;
	else
        self["_quality"] = 580;
	end;
    
    if (itemType == "sell") then
        self["_data"] = data;
    else
        self["_data"] = nil;
    end;
end);

function tradeNPCItem:addToDialog(player, dialog)
    local name = base.common.GetNLS(player, self._nameDe, self._nameEn);
    if (self._type == "sell") then
        dialog:addOffer(self._itemId, name, self._price * self._stack, self._stack);
    elseif (self._type == "buyPrimary") then
        dialog:addPrimaryRequest(self._itemId, name, self._price);
    else
        dialog:addSecondaryRequest(self._itemId, name, self._price)
    end;
end;
