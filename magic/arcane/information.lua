--[[
Illarion Server

This program is free software: you can redistribute it and/or modify it under
the terms of the GNU Affero General Public License as published by the Free
Software Foundation, either version 3 of the License, or (at your option) any
later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY
WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A
PARTICULAR PURPOSE.  See the GNU Affero General Public License for more
details.

You should have received a copy of the GNU Affero General Public License along
with this program.  If not, see <http://www.gnu.org/licenses/>.
]]
local runes = require("magic.arcane.runes")
local magicDamage = require("magic.arcane.magicDamage")
local magicResistance = require("magic.arcane.magicResistance")
local common = require("base.common")

local M = {}

local function turnMRintoText(target, spell)
local MR = magicResistance.getMagicResistance(target, spell)
local returnText
    if MR < 0.33 then
        returnText = "The target has low magic resistance.\n"
    elseif MR < 0.66 then
        returnText = "The target has average magic resistance.\n"
    elseif MR > 0.66 then
        returnText = "The target has high magic resistance.\n"
    end
return returnText
end

local function turnHealthIntoText(target)
local health = target:increaseAttrib("hitpoints", 0)
local returnText
    if health == 10000 then
        returnText = "Target is perfectly healthy.\n"
    elseif health > 8000 then
        returnText = "Target is slightly wounded.\n"
    elseif health > 5000 then
        returnText = "Target is wounded.\n"
    elseif health > 2000 then
        returnText = "Target is heavily wounded.\n"
    elseif health > 0 then
        returnText = "Target is near death.\n"
    elseif health == 0 then
        returnText = "Target is dead.\n"
    end
return returnText
end

local function turnManaIntoText(target)
local mana = target:increaseAttrib("mana", 0)
local returnText
    if mana == 10000 then
        returnText = "Target is brimming with mana.\n"
    elseif mana > 8000 then
        returnText = "Target is nearly satiated with mana.\n"
    elseif mana > 5000 then
        returnText = "Target has moderate amount of mana.\n"
    elseif mana > 2000 then
        returnText = "Target is running low on mana.\n"
    elseif mana > 0 then
        returnText = "Target is almost out of mana.\n"
    elseif mana == 0 then
        returnText = "Target only has enough mana to survive.\n"
    end
return returnText
end

local function turnStaminaIntoText(target)
local stamina = target:increaseAttrib("foodlevel", 0)
local returnText
    if stamina == 10000 then
        returnText = "Target is brimming with energy.\n"
    elseif stamina > 8000 then
        returnText = "Target is almost full on energy.\n"
    elseif stamina > 5000 then
        returnText = "Target is starting to get hungry.\n"
    elseif stamina > 2000 then
        returnText = "Target is hungry.\n"
    elseif stamina > 0 then
        returnText = "Target is nearly starving.\n"
    elseif stamina == 0 then
        returnText = "Target is starving.\n"
    end
return returnText
end

local function getTotalSkillValue(target)
--check every skill that isnt a language skill and combine them
return 0
end

local function skillValueIntoText(target)
local skillValue = getTotalSkillValue(target)
local returnText
    if skillValue >= 3000 then
        returnText = "Target is highly experienced in many professions.\n"
    elseif skillValue >= 2000 then
        returnText = "Target is very experienced in many professions\n"
    elseif skillValue >= 1000 then
        returnText = "Target is experienced in many professions.\n"
    elseif skillValue >= 500 then
        returnText = "Target is experienced in some professions.\n"
    elseif skillValue >= 250 then
        returnText = "Target has some experience in multiple professions.\n"
    elseif skillValue >= 100 then
        returnText = "Target has at least some experience in a profession.\n"
    elseif skillValue >= 0 then
        returnText = "Target has little to no experience in a profession.\n"
    end
return returnText
end

local statText = {
{stat = "intelligence", adjective = "intelligent"},
{stat = "strength", adjective = "strong"},
{stat = "constitution", adjective = "sturdy"},
{stat = "dexterity", adjective = "dexterous"},
{stat = "agility", adjective = "nimble"},
{stat = "willpower", adjective = "strong-minded"},
{stat = "perception", adjective = "perceptive"},
{stat = "essence", adjective = "spiritual"}
}

local function statsIntoText(target)
local returnText = ""
    for _, attribute in pairs(statText) do
        local stat = target:increaseAttrib(attribute.stat,0)
        if stat > 14 then
            returnText = returnText.."The target is very "..attribute.adjective..".\n"
        elseif stat > 8 then
            returnText = returnText.."The target is somewhat "..attribute.adjective..".\n"
        else
            returnText = returnText.."The target is not very "..attribute.adjective..".\n"
        end
    end
return returnText
end

function M.getInputFromAndSendTo(user, target)
    local callback = function(dialog)
        if not dialog:getSuccess() then
            user:inform("You decided against responding to the telepathic connection.")
        else
            local input = dialog:getInput()
            target:inform("","You hear the voice of your telepathic partner in your mind: "..input)
        end
    end

    local dialog = InputDialog("What do you want to tell your telepathic partner?","", false, 255, callback)
    user:requestInputDialog(dialog)
end

local function telepathy(user, targets, spell)
    for _, target in pairs(targets) do
        if target.category ~= "character" then
            return
        end
        if target.target:getType() ~= Character.player then
            return
        end
        if runes.checkSpellForRuneByName("Kel", spell) or runes.checkSpellForRuneByName("Tah", spell) then
            target.target:inform("","You feel a telepathic connection establish between you and someone else.")
        end
        if runes.checkSpellForRuneByName("Kel", spell) then
            M.getInputFromAndSendTo(user, target.target)
        end
        if runes.checkSpellForRuneByName("Tah", spell) then
            M.getInputFromAndSendTo(target.target, user)
        end
    end
end

local monsterType = magicDamage.raceList

local function checkIfTypeOf(target, typeOf)
    for _, monster in pairs(monsterType) do
        if target:getRace() == monster.race then
            if monster.typeOf == typeOf then
                return true
            end
        end
    end
return false
end

local function getDirectionRelativeToUser(user, target)
    return "East" --temporary
end

local function getDistanceBetweenUserAndTarget(user, target)
    return 5 --temporary
end

local function getPositionOfTarget(user, target, spell)
local Mes = runes.checkSpellForRuneByName("Mes", spell)
local returnText = ""
    if Mes then
        local direction = getDirectionRelativeToUser(user, target)
        local distance = getDistanceBetweenUserAndTarget(user, target)
        returnText = "Target's position is "..distance.." tiles to the "..direction.." of you."
    end
return returnText
end

local function speedIntoText(target)
local speed = target.speed
local returnText
    if speed == 1 then
        returnText = "Target is not under the effect of any hastening or slowing spells.\n"
    elseif speed > 1 then
        returnText = "Target is under the effect of a hastening spell.\n"
    elseif speed < 1 then
        returnText = "Target is under the effect of a slowing spell.\n"
    end
return returnText
end

local function getItemProperties(target)
local itemID = target.target.id
local itemStats = world:getItemStatsFromId(itemID)
local itemName = itemStats.English
local itemWeight = itemStats.Weight
local itemQuality = target.target.quality
local itemWear = target.target.wear
local returnText = itemName..":\nWeight - "..itemWeight..".\nQuality - "..itemQuality..".\nDurability - "..itemWear.."."
return returnText
end

local function getGenderText(target)
local genderNumber = target:getBaseAttribute("sex")
local gender
    if genderNumber == 0 then
        gender = "male"
    elseif genderNumber == 1 then
        gender = "female"
    end
return gender
end

local raceList = {
    {name = "human", id = 0},
    {name = "dwarf", id = 1},
    {name = "halfling", id = 2},
    {name = "elf", id = 3},
    {name = "orc", id = 4},
    {name = "lizardman", id = 5},
    {name = "forest troll", id = 9},
    {name = "mummy", id = 10},
    {name = "skeleton", id = 11},
    {name = "beholder", id = 12},
    {name = "sheep", id = 18},
    {name = "spider", id = 19},
    {name = "pig", id = 24},
    {name = "wasp", id = 27},
    {name = "stone golem", id = 30},
    {name = "cow", id = 37},
    {name = "wolf", id =39},
    {name = "bear", id = 51},
    {name = "raptor", id = 52},
    {name = "zombie", id = 53},
    {name = "hellhound", id = 54},
    {name = "imp", id = 55},
    {name = "iron golem", id = 56},
    {name = "ratman", id = 57},
    {name = "dog", id = 58},
    {name = "beetle", id = 59},
    {name = "fox", id = 60},
    {name = "slime", id = 61},
    {name = "chicken", id = 62},
    {name = "bone dragon", id = 63},
    {name = "rat", id = 111},
    {name = "dragon", id = 112},
    {name = "rabbit", id = 113},
    {name = "demon", id = 114},
    {name = "fairy", id = 115},
    {name = "deer", id = 116},
    {name = "ettin", id = 117}
}

local function getRaceText(target)
local raceNumber = target:getRace()
local raceText = "Race not found. Please contact a developer."
    for _, race in pairs(raceList) do
        if race.id == raceNumber then
            raceText = race.name
        end
    end
return raceText
end


local function getPlayerProperties(target, spell)
local Ira = runes.checkSpellForRuneByName("Ira", spell)
local Kah = runes.checkSpellForRuneByName("Kah", spell)
local Orl = runes.checkSpellForRuneByName("Orl", spell)
local Pherc = runes.checkSpellForRuneByName("Pherc", spell)
local Qwan = runes.checkSpellForRuneByName("Qwan", spell)
local Sih = runes.checkSpellForRuneByName("Sih", spell)
local Sul = runes.checkSpellForRuneByName("Sul", spell)
local returnText = "Race: "..getRaceText(target).." "..getGenderText(target).."\n"
    if Ira then
        debug("Ira: "..tostring(turnManaIntoText(target)))
        returnText = returnText..turnManaIntoText(target)
    end
    if Kah then
        debug("Kah: "..tostring(turnStaminaIntoText(target)))
        returnText = returnText..turnStaminaIntoText(target)
    end
    if Orl then
        debug("Orl: "..tostring(skillValueIntoText(target)))
        returnText = returnText..skillValueIntoText(target)
    end
    if Pherc then
        debug("Pherc: "..tostring(turnMRintoText(target, spell)))
        returnText = returnText..turnMRintoText(target, spell)
    end
    if Qwan then
        debug("Qwan: "..tostring(statsIntoText(target)))
        returnText = returnText..statsIntoText(target)
    end
    if Sih then
        debug("Sih: "..tostring(turnHealthIntoText(target)))
        returnText = returnText..turnHealthIntoText(target)
    end
    if Sul then
        debug("Sul: "..tostring(speedIntoText(target)))
        returnText = returnText..speedIntoText(target)
    end
    debug("Final text: "..tostring(returnText))
return returnText
end

local function getMonsterProperties(target, spell)
local Yeg = runes.checkSpellForRuneByName("Yeg", spell)
local Ura = runes.checkSpellForRuneByName("Ura", spell)
local Taur = runes.checkSpellForRuneByName("Taur", spell)
local undead = checkIfTypeOf(target, "undead")
local sentient = checkIfTypeOf(target, "sentient")
local animal = checkIfTypeOf(target, "animal")
local Pherc = runes.checkSpellForRuneByName("Pherc", spell)
local Sih = runes.checkSpellForRuneByName("Sih", spell)
local Qwan = runes.checkSpellForRuneByName("Qwan", spell)
local Sul = runes.checkSpellForRuneByName("Sul", spell)
local returnText = false
    if (Yeg and undead) or (Taur and sentient) or (Ura and animal) then
        returnText = "Target race: "..getRaceText(target).."\n"
        if Pherc then
            returnText = returnText..turnMRintoText(target, spell)
        end
        if Sih then
            returnText = returnText..turnHealthIntoText(target)
        end
        if Qwan then
            returnText = returnText..statsIntoText(target)
        end
        if Sul then
            returnText = returnText..speedIntoText(target)
        end
    end
return returnText
end

local tileDescriptions = {
{id = 0, english = "Air", german = ""},
{id = 1, english = "Rocky terrain", german = ""},
{id = 2, english = "Rocky terrain", german = ""},
{id = 3, english = "Sandy terrain", german = ""},
{id = 4, english = "Muddy terrain", german = ""},
{id = 5, english = "Lava", german = ""},
{id = 6, english = "Water", german = ""},
{id = 7, english = "Rocky terrain", german = ""},
{id = 8, english = "Muddy terrain", german = ""},
{id = 9, english = "Muddy terrain", german = ""},
{id = 10, english = "Snowy terrain", german = ""},
{id = 11, english = "Grassy terrain", german = ""},
{id = 12, english = "Sandy terrain", german = ""},
{id = 13, english = "Rocky terrain", german = ""},
{id = 14, english = "Grassy terrain", german = ""},
{id = 15, english = "Rocky terrain", german = ""},
{id = 16, english = "Muddy terrain", german = ""},
{id = 17, english = "Rocky terrain", german = ""},
{id = 18, english = "Rocky terrain", german = ""},
{id = 19, english = "Icy terrain", german = ""},
{id = 20, english = "Icy terrain", german = ""},
{id = 34, english = "Air", german = ""},
{id = 40, english = "Wooden ground", german = ""},
{id = 41, english = "Rocky terrain", german = ""},
{id = 42, english = "Rocky terrain", german = ""},
{id = 43, english = "Wooden ground", german = ""},
{id = 45, english = "Carpet", german = ""},
{id = 46, english = "Carpet", german = ""},
{id = 47, english = "Carpet", german = ""},
{id = 48, english = "Carpet", german = ""},
{id = 49, english = "Carpet", german = ""},
{id = 50, english = "Carpet", german = ""},
{id = 51, english = "Carpet", german = ""},
{id = 52, english = "Carpet", german = ""},
{id = 53, english = "Carpet", german = ""},
{id = 55, english = "Rocky terrain", german = ""},
{id = 56, english = "Rocky terrain", german = ""},
{id = 57, english = "Rocky terrain", german = ""},
{id = 58, english = "Rocky terrain", german = ""},
{id = 59, english = "Wooden ground", german = ""},
{id = 60, english = "Layered bricks", german = ""},
{id = 61, english = "Layered bricks", german = ""},
{id = 62, english = "Wooden ground", german = ""},
{id = 63, english = "Wooden ground", german = ""},
{id = 64, english = "Wooden ground", german = ""},
{id = 65, english = "Wooden ground", german = ""},
{id = 66, english = "Rocky terrain", german = ""},
{id = 67, english = "Carpet", german = ""},
{id = 68, english = "Carpet", german = ""},
{id = 69, english = "Carpet", german = ""},
{id = 70, english = "Carpet", german = ""},
{id = 71, english = "Carpet", german = ""},
{id = 72, english = "Carpet", german = ""},
{id = 73, english = "Carpet", german = ""},
{id = 74, english = "Muddy terrain", german = ""},
{id = 75, english = "Muddy terrain", german = ""}
}

local function getTileProperties(target)
local field
    if target.target.pos then
        field = world:getField(target.target.pos)
    elseif target.category == "item" then
        field = world:getField(target.position)
    else
        field = world:getField(target.target)
    end
local tileID = field:tile()
local returnText = "Tile information:\n"
    for _, tile in pairs(tileDescriptions) do
        if tile.id == tileID then
            returnText = returnText..tile.english.."\n"
        end
    end
return returnText
end

function M.getText(user, target, spell)
local returnText
local Anth = runes.checkSpellForRuneByName("Anth", spell)
local Fhen = runes.checkSpellForRuneByName("Fhen", spell)
    if Anth and target.category == "item" then
        returnText = getItemProperties(target)
    elseif target.category == "character" then
        if Fhen and target.target:getType() == Character.player then
            returnText = getPlayerProperties(target.target, spell)
        elseif target.target:getType() == Character.monster then
            returnText = getMonsterProperties(target.target, spell)
        end
    end
    if not returnText then
        returnText = getTileProperties(target)
    end
    returnText = returnText..getPositionOfTarget(user, target, spell).."\n"
return returnText
end

local function fakeDialogue()
--set up a fake dialogue that looks like the real one, but the results are chosen by caster in a selectiondialogue
end

local function gatherTextsIntoDialogue(user, targets, spell)
local returnText = ""
local targetNumber = 1
    for _, target in pairs(targets) do
        returnText = returnText.."Target "..targetNumber..":\n"..M.getText(user, target, spell)
        targetNumber = targetNumber + 1
    end
return returnText
end

local function getInformation(user, targets, spell)
local text = gatherTextsIntoDialogue(user, targets, spell)
    local callback = function(dialog)
    end
    local dialog = MessageDialog("Magically obtained information", text, callback)
user:requestMessageDialog(dialog)
end

local function selectNearbyPlayer(user)
local range = 7
local nearbyPlayers = world:getCharactersInRangeOf(user.pos, range)
local callback = function(dialog)
    if not dialog:getSuccess() then
        return
    end
    local index = dialog:getSelectedIndex() +1
    for i = 1, #nearbyPlayers do
        if index == i then
            return nearbyPlayers[i]
        end
    end
end
local dialog = SelectionDialog(common.GetNLS(user,"","Target Selection"), common.GetNLS(user,"","Select who you want to send the information to."), callback)
    for i = 1, #nearbyPlayers do
        dialog:addOption(0,nearbyPlayers[i].name)
    end
user:requestSelectionDialog(dialog)
end

local function sendInfoToOtherPlayer(user, targets, spell)
local Fhan = runes.checkSpellForRuneByName("Fhan", spell)
local Lhor = runes.checkSpellForRuneByName("Lhor", spell)
    if not Fhan then
        return
    end
local textSent = gatherTextsIntoDialogue(user, targets, spell)
    if Lhor then
        textSent = fakeDialogue()
    end
local target = selectNearbyPlayer(user)
debug("target: "..tostring(target))

    local callback = function(dialog)
        target:inform("You feel a flow of information stream into your mind through magical forces.")
    end
    local dialog = MessageDialog("Magically obtained information", textSent, callback)
target:requestMessageDialog(dialog)
end

function M.invokeSpiritSpells(user, targets, spell)
telepathy(user, targets, spell)
getInformation(user, targets, spell)
sendInfoToOtherPlayer(user, targets, spell)
end

return M
