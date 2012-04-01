-- I_2744_pfeife.lua
--
require("base.common")
require("item.general.wood")

module("item.id_2744_pipe", package.seeall, package.seeall(item.general.wood))

-- UPDATE common SET com_script='item.id_2744_pipe' WHERE com_itemid = 2744;

function UseItem( Character, SourceItem, TargetItem, Counter, Param)
	
	local ammountSib = Character:countItemAt("belt",155);
	local ammountTob = Character:countItemAt("belt",772);
	if (amountTab == 0 and AmountSib == 0) then
		base.common.InformNLS( Character,
        "1.Du ben�tigst Sibanac-Bl�tter oder Tabak um Pfeife rauchen zu k�nnen.",
        "1.You need sibanac-leafs or tobacco to smoke a pipe." );
	
	elseif (ammountSib ~= 0) then 
	-- Effekt setzen falls noch nicht vorhanden
			find, stonedEffect = Character.effects:find(19);
			if find then
			found, stonedIndex = stonedEffect:findValue("stonedIndex");
			if found then
			stonedEffect:addValue("stonedIndex",(stonedIndex+1));
			end
			else

			Character.effects:addEffect( LongTimeEffect(19,10) );
			end

			Character:talkLanguage(Character.say,Player.german ,"#me nimmt einen tiefen Zug von der Pfeife.");
			Character:talkLanguage(Character.say,Player.english,"#me takes a deep drag from the pipe.");
    
			Character:eraseItem( 155, 1 );
			end
	
	elseif (AmmountTob ~= 0) then
		Character:talkLanguage(Character.say,Player.german ,"#me bl�st einen Rauchkringel in die Luft.");
		Character:talkLanguage(Character.say,Player.english,"#me puffs a ring of smoke into the air.");
    
		Character:eraseItem( 772, 1 );
	end

	

	
	
function LookAtItem(User, Item)
	
	local customText = base.lookat.GetItemDescription(User,Item,2,false,false);
	if Item.data > 2^30 then
		world:itemInform( User, Item, customText );
	else
		world:itemInform( User, Item, User:getPlayerLanguage()==0 and
			world:getItemName(Item.id,0) or
			world:getItemName(Item.id,1) );
	end
end
