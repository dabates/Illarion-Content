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
local M = {}
M.MAGIC_LOAD_LIST = {}

function M.castingSpeedByRuneSize(size) -- Just basic temporary values
    if size == "Short" then
        return 5
    elseif size == "Medium" then
        return 10
    elseif size == "Long" then
        return 15
    end
end
function M.arcaneSpellCastSpeed(user, spell) -- Should return total cast time required to cast a spell
local castSpeed = 0
    for i = 1,#runes.Runes do
        if runes.checkIfLearnedRune(user, nil, i, nil, nil, spell) then
            castSpeed = castSpeed+M.castingSpeedByRuneSize(runes.Runes[i][4])
        end
    end
    if runes.checkSpellForRuneByName("Pera", spell) then
        castSpeed = castSpeed/1.3
    end
return castSpeed
end

return M
