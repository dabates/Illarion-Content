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
local magic = require("base.magic")
local incantation = require("magic.arcane.incantation")
local M = {}

local function getRuneToTeach(spell)
    for i = 1, #runes.Runes do
        if i ~= 6 then --no point checking for Bhona
            if runes.checkSpellForRune(i, spell) then
                return i
            end
        end
        if i == #runes.Runes then
            return 6
        end
    end
end

local function getTargetsMagicLevels(target, rune)
    local skillNames = {"fireMagic", "spiritMagic", "windMagic","earthMagic","waterMagic"}
    local targetLevels = {}
    local magicLevel = 0
    for _, skill in pairs(skillNames) do
        local targetLevel= target:getSkill(Character[skill])
        if targetLevel then
            targetLevels[#targetLevels+1] = targetLevel
        end
    end
    if rune == 6 then
        for _, level in pairs(targetLevels) do
            magicLevel = magicLevel + level
        end
        magicLevel = magicLevel/#skillNames
    else
        for _, level in pairs(targetLevels) do
            if level > magicLevel then
                magicLevel = level
            end
        end
    end
return magicLevel
end

local function levelRequirementNotMet(target, runeToTeach)
    local levelReq = runes.getLevelRequirementOfRune(runeToTeach)
    local targetLevel = getTargetsMagicLevels(target, runeToTeach)
    if targetLevel >= levelReq then
        return false
    end
return true
end

local function notEnoughTimeHasPassed(target, spell)
    return false --temporarily just bypass teaching cooldown
end

local function statRequirementNotMet(target, runeToTeach)
    local statReq = runes.getStatRequirementOfRune(runeToTeach)
    local targetStatTotal = target:increaseAttrib("willpower", 0) + target:increaseAttrib("essence", 0) + target:increaseAttrib("intelligence", 0)

    if tonumber(targetStatTotal) >= tonumber(statReq) then
        return false
    end

return true
end

local function notAMage(target)
    return false --temporarily bypass mage check
end

local function reachedTeachingCapacity(user)
    return false --temporarily bypass teaching capacity
end

local function setLearningCooldown(target)
    return --awaiting implementation of learning cooldown
end

local function setTeachingCooldown(user)
    return --awaiting implemenation of teaching cooldown
end

local function teachingCheck(user, target, spell)
    local manaCost = 5000
    local runeToTeach = getRuneToTeach(spell)
        if  magic.hasSufficientMana(user,manaCost) then
            if runes.checkIfLearnedRune(target,"", runeToTeach, "isQuest") then
                user:inform("","Target already knows that rune.")
                return
            end
            if levelRequirementNotMet(target, runeToTeach) then
                user:inform("", "Target is not skilled enough at magic to learn this rune yet.")
                return
            end
            if notEnoughTimeHasPassed(target, spell) then
                user:inform("", "Not enough time has passed yet since the last time the target was taught how to use a magic rune.")
                return
            end
            if statRequirementNotMet(target, runeToTeach) then
                user:inform("", "The target does not have the mental faculties to learn this rune.")
                return
            end
            if notAMage(target) then
                user:inform("", "The target is not attuned to the ways of magic.")
                return
            end
            if reachedTeachingCapacity(user) then
                user:inform("", "You've been teaching too many people runes recently.")
                return
            end
            user:increaseAttrib("mana", -manaCost)
            world:gfx(41,target.pos)
            world:makeSound(13,target.pos)
            runes.learnRune(target,"", runeToTeach, "isQuest")
            target:inform("","You have learned how to use the rune "..runes.Runes[runeToTeach][2]..".")
            user:inform("","You have taught the target how to use the rune "..runes.Runes[runeToTeach][2]..".")
            setLearningCooldown(target)
            setTeachingCooldown(user)
            incantation.speakIncantation(user, spell)
        else
            user:inform("","Not enough mana.")
        end
    return
end

function M.teachRune(user, targets, spell)
local target = targets.targetToTeach
    if not target then
        user:inform("","You need a target.")
        return
    else
        if target:getType() == Character.monster or target:getType() == Character.npc then
            user:inform("","Target must be a player.")
            return
        end
        teachingCheck(user, target, spell)
    end

end



return M
