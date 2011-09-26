-- Longterm Cooldown
-- by Estralis

require("base.common")

module("lte.longterm_cooldown", package.seeall)

EffectID = 33;

function addEffect( Effect, Character)
    -- it is needed to add at least value to make sure the effect does not get deleted right after
    -- the first call
    Effect:addValue("10",0);
end;

function callEffect( Effect, Char ) -- Effect wird ausgeführt

if Char:idleTime() < 300 then --absolutely no regeneration effect if the player is afk for more than five minutes

    --Addition by Estralis: Quest 119/120 (Cadomyr daily missions)
	theQuestStatus=Char:getQuestProgress(120);
	if theQuestStatus > 0 then --Is there a cooldown? Will only be reduced if the player isn't AFK/idle
	    Char:setQuestProgress(120,theQuestStatus-1); --cooling!
    end
	--Addition end
	
end --all above is only conducted for players that aren't afk for more than five minutes

    base.common.InformNLS( Char,"LTE 33 called.","LTE 33 called."); --Debugging
	Effect.nextCalled = 3000; --Effect gets called each 5 minutes

end

function removeEffect( Effect, Character )

--This effect doesn't get removed.

end

function loadEffect(Effect, Character)

end
