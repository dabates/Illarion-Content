require("base.common")
require("base.treasure")

module("base.gcraft", package.seeall)

RandomItem = {
	ID = 0,
    Quantity = 1,
    Quality = 333,
    Data = 0,
    ProbRange = { },
    MessageDE = nil,
	MessageEN = nil,
};

GCraft = {
	RandomItems = { },
	InterruptMsg = { },
	Monsters = { },
	LeadAttribute = "",
	LeadSkill = "",
	LeadSkillGroup = 2,
	Treasure = 0,
	TreasureMsg = { },
	FoodLevel = 100
};

Monster = {
	MonsterID = 0,
	Probability = 100,
	MessageDE = "",
	MessageEN = "",
	Sound = nil,
	GFX = {}
};

function GCraft:new(gc)
    gc = gc or {};
    setmetatable(gc, self);
    self.__index = self;
    gc.RandomItems = {{}};
    gc.InterruptMsg = {};
    return gc;
end

function RandomItem:new(item)
	item = item or {};
	setmetatable(item, self);
	self.__index = self;
	return item;
end

function Monster:new(m)
	m = m or {};
	setmetatable(m, self);
	self.__index = self;
	return m;
end

function GCraft:SetFoodLevel(FoodLevel)
	self.FoodLevel = FoodLevel;
end

function GCraft:SetTreasureMap(Probability, MessageDE, MessageEN)
	self.Treasure = Probability;
	self.TreasureMsg[0] = MessageDE;
	self.TreasureMsg[1] = MessageEN;
end

function GCraft:AddRandomItem(ItemID, Quantity, Quality, Data, Probability)
	local minr;
	local maxr;
	if(self.RandomItems[0] == nil) then
		minr = 0;
		maxr = minr + Probability;
	else
		minr = self.RandomItems[#self.RandomItems].ProbRange[1];
		maxr = minr + Probability;
	end
	table.insert(self.RandomItems, RandomItem:new{["ID"] = ItemID, ["Quantity"] = Quantity, ["Quality"] = Quality, ["Data"] = Data, ["ProbRange"] = {minr,maxr}});
	return;
end

function GCraft:AddInterruptMessage(MessageDE, MessageEN)
	table.insert(self.InterruptMsg, { MessageDE, MessageEN });
	return;
end

function GCraft:AddMonster(MonsterID, Probability, MessageDE, MessageEN, Sound, GFX)
	table.insert(self.Monsters, Monster:new{["MonsterID"] = MonsterID, ["Probability"] = Probability, ["MessageDE"] = MessageDE, ["MessageEN"] = MessageEN, ["Sound"] = Sound, ["GFX"] = GFX});
	return;
end

function GCraft:AddSpecialRandomItem(ItemID, Quantity, Quality, Data, Probability, MessageDE, MessageEN)
	local minr;
	local maxr;
	if(self.RandomItems[0] == nil) then
		minr = 0;
		maxr = minr + Probability;
	else
		minr = self.RandomItems[#self.RandomItems].ProbRange[1];
		maxr = minr + Probability;
	end
	table.insert(self.RandomItems, RandomItem:new{["ID"] = ItemID, ["Quantity"] = Quantity, ["Quality"] = Quality, ["Data"] = Data, ["ProbRange"] = {minr,maxr}, ["MessageDE"] = MessageDE, ["MessageEN"] = MessageEN});
	return;
end

function GCraft:FindRandomItem(User)
    if base.common.IsInterrupted(User) then
		if(self.InterruptMsg[0] ~= nil) then
			local m = math.random(#self.InterruptMsg);
			base.common.InformNLS(User, self.InterruptMsg[m][0], self.InterruptMsg[m][1]);
			return false
		end
    end
	if not base.common.FitForWork(User) then
		return false
	end
	base.common.GetHungry(User, self.FoodLevel);
	
	-- Deactivated on Noobia
	if (User.pos.z == 100) or (User.pos.z == 101) then
		return true
	end
	
	if (self.Treasure > 0) then
		local rand = math.random() * 100;
		if(rand < self.Treasure) and base.treasure.createMap(User) then
			base.common.InformNLS(User, self.TreasureMsg[1], self.TreasureMsg[2]);
			return false
		end
	end
	
	if (self.Monsters[0] ~= nil) then
		local ra = math.random(#self.Monsters);
		local pa = math.random() * 100;
		if(pa < self.Monsters[ra].Probability) then
			local TargetPos = base.common.GetFrontPosition(User);
			world:createMonster(self.Monsters[ra].MonsterID, TargetPos, 20);
			for g = 0, #self.Monsters[ra].GFX, 1 do
				world:gfx(self.Monsters[ra].GFX[g], TargetPos);
			end
			if(self.Monsters[ra].Sound ~= nil) then
				world:makeSound(self.Monsters[ra].Sound, TargetPos);
			end
			base.common.InformNLS(User, self.Monsters[ra].MessageDE, self.Monsters[ra].MessageEN);
			return false
		end
	end
	
	if(self.RandomItems[0] ~= nil) then
		local p = math.random() * 100;
		for it = 0, #self.RandomItems, 1 do
			if(self.RandomItems[it].ProbRange[0] > p and self.RandomItems[it].ProbRange[1]) then
				if (self.RandomItems[it].MessageDE ~= nil) and (self.RandomItems[it].MessageEN ~= nil) then
					base.common.InformNLS(User, self.RandomItems[it].MessageDE, self.RandomItems[it].MessageEN);
				end
				local notcreated = User:createItem(self.RandomItems[it].ID, self.RandomItems[it].Quantity, self.RandomItems[it].Quality, self.RandomItems[it].Data);
				if(notcreated > 0) then
					world:createItemFromId(self.RandomItems[it].ID, notcreated, User.pos, true, self.RandomItems[it].Quality, self.RandomItems[it].Data);
					base.common.InformNLS(User, "Du kannst nichts mehr halten!", "You can't carry anymore!");
					return false
				end
			end
		end
	end
	return true
end

-- Arbeitszeit Generieren
function GCraft:GenWorkTime(User, toolItem)
    local Skill  = User:getSkill(self.LeadSkill);
    local Attrib = User:increaseAttrib(self.LeadAttrib, 0);
	if(toolItem ~= nil) then
		gem1, str1, gem2, str2=base.common.GetBonusFromTool(toolItem);
		step=0;
		if gem1==3 then     -- ruby modifies skill!
			step=str1;
		end
		if gem2==3 then
			step=step+str2;
		end
		Skill=Skill+step;
		step=0;
		if gem1==6 then     -- amethyst modifies time needed
			step=str1;
		end
		if gem2==6 then
			step=step+str2;
		end
		step=step*1.75;
		return math.floor( (( -0.2 * ((Skill * 1.2)+Attrib) + 50) + math.random(0,40))*(100-step)/100);
	else
		return math.floor( -0.4 * ((Skill * 1.2)+Attrib) + 70);
	end 
end










