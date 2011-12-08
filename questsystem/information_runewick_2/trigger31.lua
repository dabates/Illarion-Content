require("handler.sendmessagetoplayer")
require("questsystem.base")
module("questsystem.information_runewick_2.trigger31", package.seeall)

local QUEST_NUMBER = 10000
local PRECONDITION_QUESTSTATE = 202
local POSTCONDITION_QUESTSTATE = 196

local POSITION = position(727, 770, 0)
local RADIUS = 10

function MoveItemBeforeMove(PLAYER, item, itemAfter)
  if PLAYER:isInRangeToPosition(POSITION,RADIUS)
      and ADDITIONALCONDITIONS(PLAYER)
      and questsystem.base.fulfilsPrecondition(PLAYER, QUEST_NUMBER, PRECONDITION_QUESTSTATE) then
    -- informNLS(PLAYER, TEXT_DE, TEXT_EN)
    
    HANDLER(PLAYER)
    
    questsystem.base.setPostcondition(PLAYER, QUEST_NUMBER, POSTCONDITION_QUESTSTATE)
    return true
  end

  return false
end

function informNLS(player, textDe, textEn)
  if player:getPlayerLanguage() == Player.german then
    player:inform(player, item, textDe)
  else
    player:inform(player, item, textEn)
  end
end

-- local TEXT_DE = TEXT -- German Text before movement -- Deutscher Text vor Bewegung
-- local TEXT_EN = TEXT -- English Text before movement -- Englischer Text vor Bewegung


function HANDLER(PLAYER)
    handler.sendmessagetoplayer.sendMessageToPlayer(PLAYER, "Bring die Traube zu Numila nun.", "Bring the grapes to Numila now."):execute()
end

function ADDITIONALCONDITIONS(PLAYER)
return true
end