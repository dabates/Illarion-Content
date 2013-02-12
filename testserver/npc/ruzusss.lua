--------------------------------------------------------------------------------
-- NPC Name: Ruzusss                                                  Cadomyr --
-- NPC Job:  hunter                                                           --
--                                                                            --
-- NPC Race: lizardman                  NPC Position:  126, 630, 0            --
-- NPC Sex:  male                       NPC Direction: south                  --
--                                                                            --
-- Author:   envi                                                             --
--                                                     easyNPC Parser v1.23.1 --
--------------------------------------------------------------------------------

--[[SQL
INSERT INTO "npc" ("npc_type", "npc_posx", "npc_posy", "npc_posz", "npc_faceto", "npc_name", "npc_script", "npc_sex", "npc_hair", "npc_beard", "npc_hairred", "npc_hairgreen", "npc_hairblue", "npc_skinred", "npc_skingreen", "npc_skinblue") 
VALUES (5, 126, 630, 0, 4, 'Ruzusss', 'npc.ruzusss', 0, 3, 5, 34, 139, 34, 154, 205, 50);
---]]

require("npc.base.basic")
require("npc.base.condition.chance")
require("npc.base.condition.language")
require("npc.base.condition.quest")
require("npc.base.condition.state")
require("npc.base.condition.town")
require("npc.base.consequence.attribute")
require("npc.base.consequence.inform")
require("npc.base.consequence.item")
require("npc.base.consequence.money")
require("npc.base.consequence.quest")
require("npc.base.consequence.rankpoints")
require("npc.base.consequence.state")
require("npc.base.talk")
module("npc.ruzusss", package.seeall)

function initNpc()
mainNPC = npc.base.basic.baseNPC();
local talkingNPC = npc.base.talk.talkNPC(mainNPC);
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Help");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Game Help] This NPC is Ruzusss the hunter. Keywords: Question, information, Cadomyr, places."));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hilfe");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Spielhilfe] Dieser NPC ist Ruzusss der J�ger. Schl�sselw�rter: Auskunft, Information, Cadomyr, Orte."));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(640, "=", 1));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger(".*");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest End 'Find Ruzusss'] You received 10 silvercoins."));
talkEntry:addConsequence(npc.base.consequence.money.money("+", 1000));
talkEntry:addConsequence(npc.base.consequence.quest.quest(640, "=", 2));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("+", 5));
talkEntry:addResponse("Greetingsss. Finally you found me! Frizza hasss already informed me about your visit. There you have sssome sssilvercoinsss for that you found me.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(640, "=", 1));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger(".*");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest Ende 'Finde Ruzusss'] Du hast 10 Silberst�cke erhalten."));
talkEntry:addConsequence(npc.base.consequence.money.money("+", 1000));
talkEntry:addConsequence(npc.base.consequence.quest.quest(640, "=", 2));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("+", 5));
talkEntry:addResponse("Gr�sssse. Endlich habssst du mich gefunden. Frizza hat mich bereitsss informiert �ber deinen Besssuch. Hier hassst du deine wohlverdienten M�nzen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(640, "=", 1));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger(".*");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest End 'Find Ruzusss'] You received 10 silvercoins."));
talkEntry:addConsequence(npc.base.consequence.money.money("+", 1000));
talkEntry:addConsequence(npc.base.consequence.quest.quest(640, "=", 2));
talkEntry:addResponse("Greetingsss. Finally you found me! Frizza hasss already informed me about your visit. There you have sssome sssilvercoinsss for that you found me.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(640, "=", 1));
talkEntry:addTrigger(".*");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest Ende 'Finde Ruzusss'] Du hast 10 Silberst�cke erhalten."));
talkEntry:addConsequence(npc.base.consequence.money.money("+", 1000));
talkEntry:addConsequence(npc.base.consequence.quest.quest(640, "=", 2));
talkEntry:addResponse("Gr�sssse. Endlich habssst du mich gefunden. Frizza hat mich bereitsss informiert �ber deinen Besssuch. Hier hassst du deine wohlverdienten M�nzen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hello");
talkEntry:addTrigger("Greet");
talkEntry:addTrigger("Hail");
talkEntry:addTrigger("Good day");
talkEntry:addTrigger("Good morning");
talkEntry:addTrigger("Good evening");
talkEntry:addTrigger("Good night");
talkEntry:addResponse("Greetingsss, can I help you?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gr��");
talkEntry:addTrigger("Gru�");
talkEntry:addTrigger("Guten Morgen");
talkEntry:addTrigger("Guten Tag");
talkEntry:addTrigger("Guten Abend");
talkEntry:addTrigger("Gute Nacht");
talkEntry:addTrigger("Mahlzeit");
talkEntry:addTrigger("Tach");
talkEntry:addTrigger("Moin");
talkEntry:addTrigger("Mohltied");
talkEntry:addResponse("Gr�sssse, kann ich helfen?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Hiho");
talkEntry:addTrigger("Hallo");
talkEntry:addTrigger("Hey");
talkEntry:addTrigger("Greeb");
talkEntry:addResponse("Greetingsss, can I help you?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hiho");
talkEntry:addTrigger("Hallo");
talkEntry:addTrigger("Hey");
talkEntry:addTrigger("Greeb");
talkEntry:addResponse("Gr�sssse, kann ich helfen?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addTrigger("Farebba");
talkEntry:addResponse("Sssee you again if you need more information.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addTrigger("Farebba");
talkEntry:addResponse("Wir sssehen unsss wenn mehr Information ben�tigt wird.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("How are you");
talkEntry:addTrigger("How feel");
talkEntry:addTrigger("How do you do");
talkEntry:addResponse("Very good, jussst won another game.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Wie geht");
talkEntry:addTrigger("Wie f�hlst");
talkEntry:addTrigger("Wie ist es ergangen");
talkEntry:addTrigger("Wie Befind");
talkEntry:addResponse("Sssehr gut, gerade wieder ein Ssspiel gewonnen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("your name");
talkEntry:addTrigger("who are you");
talkEntry:addTrigger("who art thou");
talkEntry:addResponse("Ruzusss the hunter.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("ihr name");
talkEntry:addTrigger("dein name");
talkEntry:addTrigger("wer bist du");
talkEntry:addTrigger("wer seid ihr");
talkEntry:addTrigger("wie hei�t");
talkEntry:addResponse("Ruzusss der J�ger.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("profession");
talkEntry:addResponse("Hunter. I can tell you many thingsss about Cadomyr. Just asssk me about locationsss around Cadomyr.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("beruf");
talkEntry:addResponse("J�ger. Ich kann viele Dinge �ber Cadomyr erz�hlen. Frag nur nach Orten in der N�he von Cadomyr.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("job");
talkEntry:addResponse("Hunter. I can tell you many thingsss about Cadomyr. Just asssk me about locationsss around Cadomyr.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("job");
talkEntry:addResponse("J�ger. Ich kann viele Dinge �ber Cadomyr erz�hlen. Frag nur nach Orten in der N�he von Cadomyr.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("inform");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Keywords] Illarion, northeast, northwest, southwest, southeast"));
talkEntry:addResponse("I have information about placesss clossse to Cadomyr. Just asssk me!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("inform");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Schl�sselw�rter] Illarion, Nordosten, Nordwesten, S�dwesten, S�dosten"));
talkEntry:addResponse("Ich habe Informationen zu den Orten in der N�he von Cadomyr geben. Frag einfach!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("question");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Keywords] Illarion, northeast, northwest, southwest, southeast"));
talkEntry:addResponse("I have information about placesss clossse to Cadomyr. Just asssk me!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Frage");
talkEntry:addTrigger("Auskunft");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Schl�sselw�rter] Illarion, Nordosten, Nordwesten, S�dwesten, S�dosten"));
talkEntry:addResponse("Ich habe Informationen zu den Orten in der N�he von Cadomyr geben. Frag einfach!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Frizza");
talkEntry:addResponse("You can find her outssside of the town clossse to the teleporter. Sssshe hasss a lot of information and sssome tasksss for you.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Frizza");
talkEntry:addResponse("Du findest sssie drau�en vor der Stadt, nahe am Teleporter. Sssie hat eine Menge Informationen und Auftr�ge f�r dich.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Illarion");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Keywords] northeast, northwest, southwest, southeast"));
talkEntry:addResponse("This land is called Illarion and I devide it in northeast, northwest, southwest and southeast.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Illarion");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Schl�sselw�rter] Nordosten, Nordwesten, S�dwesten, S�dosten"));
talkEntry:addResponse("Dieses Land wird Illarion genannt und ich unterteile es in in Nordost, Nordwest, S�dwest und S�dost.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("northeast");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Keywords] Elstree Forest, Elstree Plain, Eastland, Pauldron Isle, Dead Marsh, Spider's Mouth, Hemp Necktie Inn, Bounding Stream, Glowing River, Plains of Silence, Northern Woods, Insurmountable Limes, Evilrock, Three Fingertips, Wulfgorda."));
talkEntry:addResponse("I know following places: Elstree Forest, Elstree Plain, Eastland, Pauldron Isle, The Dead Marsh, Spider's Mouth, Hemp Necktie Inn, Bounding Stream, Glowing River, Plains of Silence, Northern Woods, The Insurmountable Limes, Evilrock, Three Fingertips. But for more detailed information ask Wulfgorda at the Hemp Necktie Inn.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Nordost");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Schl�sselw�rter] Elstree Wald, Elstree Ebene, Ostland, Schulterplatte Insel, Todes Sumpf, Spinnen Maul, Gasthof zur Hanfschlinge, Grenzstrom, Gl�hender Fluss, Ebenen der Stille, N�rdliche W�lder, Un�berwindbarer Limes, B�ser Fels, Dreifingerspitzen, Wulfgorda."));
talkEntry:addResponse("Dort gibt es: Elstree Wald, Elstree Ebene, Ostland, Schulterplatte Insel, Todes Sumpf, Spinnen Maul, Gasthof zur Hanfschlinge, Grenzstrom, Gl�hender Fluss, Ebenen der Stille, N�rdliche W�lder, Un�berwindbarer Limes, B�ser Fels, Dreifingerspitzen. Aber f�r ausf�hrlichere Informationen frage Wulfgorda beim Gasthof zur Hanfschlinge.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("northwest");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Keywords] Lake Syrita, Nargun's Plain, The Swamp, Temple of the Five, Lonely Mountains, Galmair Plateau, Lotta Medborgar."));
talkEntry:addResponse("I know following places: Lake Syrita, Nargun's Plain, The Swamp, Temple of the Five, Lonely Mountains, Galmair Plateau. But for more detailed information ask Lotta Medborgar in Galmair.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Nordwest");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Schl�sselw�rter] See Syrita, Narguns Ebene, Der Sumpf, Tempel der F�nf, Einsame Berge, Galmair Hochebene, Lotta Medborgar."));
talkEntry:addResponse("Ich habe Informationen zu folgenden Orten: See Syrita, Narguns Ebene, Der Sumpf, Tempel der F�nf, Einsame Berge, Galmair Hochebene. Aber f�r ausf�hrlichere Informationen frage Lotta Medborgar in Galmair.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("southwest");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Keywords] Shadowland, Wight Canal, Sentry Forest, Great Ocean, Border Mountains, Katanbi Desert, Katanbi Delta, Western Katanbi Desert"));
talkEntry:addResponse("I know following places: Shadowland, Wight Canal, Sentry Forest, Great Ocean, Border Mountains, Katanbi Desert, Katanbi Delta, Western Katanbi Desert.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("S�dwest");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Schl�sselw�rter] Schattenland, Wichtkanal, Wachwald, Gro�er Ozean, Grenzberge, Katanbi W�ste, Katanbi Delta, Westliche Katanbi W�ste"));
talkEntry:addResponse("Ich habe Informationen zu folgenden Orten: Schattenland, Wichtkanal, Wachwald, Gro�er Ozean, Grenzberge, Katanbi W�ste, Katanbi Delta, Westliche Katanbi W�ste");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("southeast");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Keywords] Snakehead Bay, Lonely Islands, Death's Stench, Dragon's Lair, Dewy Swamps Yewdale, Numila Irunnleh."));
talkEntry:addResponse("I know following places: Snakehead Bay, Lonely Islands, Death's Stench, Dragon's Lair, Dewy Swamps, Yewdale. But for more detailed information ask Numila Irunnleh in Runewick.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("S�dost");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Schl�sselw�rter] Schlangenkopfbucht, Einsame Inseln, Todes Gestank, Drachenh�hle, Frische S�mpfe, Eibental, Numila Irunnleh."));
talkEntry:addResponse("Ich habe Informationen zu folgenden Orten: Schlangenkopfbucht, Einsame Inseln, Todes Gestank, Drachenh�hle, Frische S�mpfe, Eibental.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elstree Forest");
talkEntry:addResponse("Well, as I said, it is in the northeast and you better ask someone who lives there. For example Wulfgorda.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elstree Wald");
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im Nordosten zu finden. Bez�glich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Wulfgorda.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elstree Plain");
talkEntry:addResponse("Well, as I said, it is in the northeast and you better ask someone who lives there. For example Wulfgorda.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elstree Ebene");
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im Nordosten zu finden. Bez�glich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Wulfgorda.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Eastland");
talkEntry:addResponse("Well, as I said, it is in the northeast and you better ask someone who lives there. For example Wulfgorda.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ostland");
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im Nordosten zu finden. Bez�glich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Wulfgorda.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Pauldron");
talkEntry:addResponse("Well, as I said, it is in the northeast and you better ask someone who lives there. For example Wulfgorda.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Schulterplatte");
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im Nordosten zu finden. Bez�glich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Wulfgorda.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Dead Marsh");
talkEntry:addResponse("Well, as I said, it is in the northeast and you better ask someone who lives there. For example Wulfgorda.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Todes Sumpf");
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im Nordosten zu finden. Bez�glich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Wulfgorda.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Spider Mouth");
talkEntry:addResponse("Well, as I said, it is in the northeast and you better ask someone who lives there. For example Wulfgorda.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Spinnen Maul");
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im Nordosten zu finden. Bez�glich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Wulfgorda.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hemp Necktie Inn");
talkEntry:addResponse("The Hemp Necktie Inn is a neutral taverne in the Spider's Mouth and many adventurer are resting there. Among others Wulfgorda. You can use the teleporter to get there.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gasthof Hanfschlinge");
talkEntry:addResponse("Der Gasthof zur Hanfschlinge ist eine neutrale Taverne im Spinnen Mund und viele Abenteuerer rasten dort. Unteranderem Wulfgorda. Du kannst den Teleporter verwenden um dort hinzukommen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(650, "<", 1));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Wulfgorda");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New Quest 'Find Wulfgorda' started] Try to find Wulfgorda and bring her the sibanac leafs to get your reward."));
talkEntry:addConsequence(npc.base.consequence.item.item(155, 10, 333, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(650, "=", 1));
talkEntry:addResponse("Wulfgorda is a hunter who knows almost each place in the northeast. You can find her infront of the Hemp Necktie Inn. Furthermore, you should bring her these leafs here. *hands some sibanac leafs*");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(650, "<", 1));
talkEntry:addTrigger("Wulfgorda");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest 'Finde Wulfgorda' gestartet] Finde Wulfgorda und bringe ihr die Sibanacbl�tter um deine Belohnung zur erhalten."));
talkEntry:addConsequence(npc.base.consequence.item.item(155, 10, 333, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(650, "=", 1));
talkEntry:addResponse("Wulfgorda ist eine J�gerin, welche beinahe jeden Platz im Nordosten kennt. Du findest sie vor dem Gasthaus zur Hanfschlinge. Des weiteren kannst du ihr auch gleich diese Bl�tter hier bringen. *�berreicht Sibanac Bl�tter*");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Wulfgorda");
talkEntry:addResponse("Wulfgorda is a hunter who knows almost each place in the northeast. You can find her infront of the Hemp Necktie Inn.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Wulfgorda");
talkEntry:addResponse("Wulfgorda ist eine J�gerin, welche beinahe jeden Platz im Nordosten kennt. Du findest sie vor dem Gasthaus zur Hanfschlinge.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Bounding Stream");
talkEntry:addResponse("Well, as I said, it is in the northeast and you better ask someone who lives there. For example Wulfgorda.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Grenzstrom");
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im Nordosten zu finden. Bez�glich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Wulfgorda.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Glowing River");
talkEntry:addResponse("Well, as I said, it is in the northeast and you better ask someone who lives there. For example Wulfgorda.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gl�hender Fluss");
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im Nordosten zu finden. Bez�glich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Wulfgorda.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Plains Silence");
talkEntry:addResponse("Well, as I said, it is in the northeast and you better ask someone who lives there. For example Wulfgorda.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ebenen Stille");
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im Nordosten zu finden. Bez�glich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Wulfgorda.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Northern Woods");
talkEntry:addResponse("Well, as I said, it is in the northeast and you better ask someone who lives there. For example Wulfgorda.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("N�rdliche W�lder");
talkEntry:addTrigger("N�rdlichen W�lder");
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im Nordosten zu finden. Bez�glich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Wulfgorda.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Insurmountable Limes");
talkEntry:addResponse("Well, as I said, it is in the northeast and you better ask someone who lives there. For example Wulfgorda.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Un�berwindbarer Limes");
talkEntry:addTrigger("Un�berwindbare Limes");
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im Nordosten zu finden. Bez�glich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Wulfgorda.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Evilrock");
talkEntry:addResponse("Well, as I said, it is in the northeast and you better ask someone who lives there. For example Wulfgorda.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("B�se Fels");
talkEntry:addTrigger("B�ser Fels");
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im Nordosten zu finden. Bez�glich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Wulfgorda.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Three Fingertips");
talkEntry:addResponse("Well, as I said, it is in the northeast and you better ask someone who lives there. For example Wulfgorda.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Dreifingerspitzen");
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im Nordosten zu finden. Bez�glich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Wulfgorda.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Snakehead Bay");
talkEntry:addResponse("Well, as I said, it is in the southeast and you better ask someone who lives there. For example Numila Irunnleh in Runewick.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Schlangenkopfbucht");
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im S�dosten zu finden. Bez�glich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Numila Irunnleh in Runewick.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Lonely Islands");
talkEntry:addResponse("Well, as I said, it is in the southeast and you better ask someone who lives there. For example Numila Irunnleh in Runewick.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Einsame Inseln");
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im S�dosten zu finden. Bez�glich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Numila Irunnleh in Runewick.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Death's Stench");
talkEntry:addTrigger("deaths stench");
talkEntry:addResponse("Well, as I said, it is in the southeast and you better ask someone who lives there. For example Numila Irunnleh in Runewick.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Todes Gestank");
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im S�dosten zu finden. Bez�glich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Numila Irunnleh in Runewick.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Dragon's Lair");
talkEntry:addTrigger("dragons lair");
talkEntry:addResponse("Well, as I said, it is in the southeast and you better ask someone who lives there. For example Numila Irunnleh in Runewick.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Drachenh�hle");
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im S�dosten zu finden. Bez�glich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Numila Irunnleh in Runewick.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Dewy Swamps");
talkEntry:addResponse("Well, as I said, it is in the southeast and you better ask someone who lives there. For example Numila Irunnleh in Runewick.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Frische S�mpfe");
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im S�dosten zu finden. Bez�glich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Numila Irunnleh in Runewick.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Yewdale");
talkEntry:addResponse("Well, as I said, it is in the southeast and you better ask someone who lives there. For example Numila Irunnleh in Runewick.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Eibental");
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im S�dosten zu finden. Bez�glich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Numila Irunnleh in Runewick.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Numila");
talkEntry:addTrigger("Irunnleh");
talkEntry:addResponse("You can find her in Runewick and she knows several places in the southeast, thus around Runewick.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Numila");
talkEntry:addTrigger("Irunnleh");
talkEntry:addResponse("Die findet man in Runewick und die kennt s�mtliche Orte im S�dosten, sprich um Runewick.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Lake Syrita");
talkEntry:addResponse("Well, as I said, it is in the northwest and you better ask someone who lives there. For example Lotta Medborgar in Galmair.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("See Syrita");
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im Nordosten zu finden. Bez�glich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Lotta Medborgar in Galmair.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Nargun's Plain");
talkEntry:addTrigger("narguns plain");
talkEntry:addResponse("Well, as I said, it is in the northwest and you better ask someone who lives there. For example Lotta Medborgar in Galmair.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Narguns Ebene");
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im Nordosten zu finden. Bez�glich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Lotta Medborgar in Galmair.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Swamp");
talkEntry:addResponse("Well, as I said, it is in the northwest and you better ask someone who lives there. For example Lotta Medborgar in Galmair.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Sumpf");
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im Nordosten zu finden. Bez�glich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Lotta Medborgar in Galmair.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Temple five");
talkEntry:addResponse("Well, as I said, it is in the northwest and you better ask someone who lives there. For example Lotta Medborgar in Galmair.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tempel F�nf");
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im Nordosten zu finden. Bez�glich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Lotta Medborgar in Galmair.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Lonely Mountains");
talkEntry:addResponse("Well, as I said, it is in the northwest and you better ask someone who lives there. For example Lotta Medborgar in Galmair.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Einsame Berge");
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im Nordosten zu finden. Bez�glich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Lotta Medborgar in Galmair.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Galmair Plateau");
talkEntry:addResponse("Well, as I said, it is in the northwest and you better ask someone who lives there. For example Lotta Medborgar in Galmair.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Galmair Hochebene");
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im Nordosten zu finden. Bez�glich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Lotta Medborgar in Galmair.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Lotta");
talkEntry:addTrigger("Medborgar");
talkEntry:addResponse("You can find her in Galmair and she knows several places in the northwest, thus around Galmair.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Lotta");
talkEntry:addTrigger("Medborgar");
talkEntry:addResponse("Die findet man in Galmair und die kennt s�mtliche Orte im Nordwesten, sprich um Galmair.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Shadowland");
talkEntry:addResponse("It has two entrances. One at the Malachite mine and one at the southwest of the Border Mountains. No one has ever passed it. It is very dangerous there. The gate, therefore, is looked and only the three rulers know how to enter.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Schattenland");
talkEntry:addResponse("Es hat zwei Eing�nge. Einen bei der Malachit Mine und einen s�dwestlich der Grenzberge. Niemand hat es je durchquert. Viel zu gef�hrlich! Die Tore sind daher verschlossen und nur die drei Herrscher wissen wie man sie �ffnet.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Wight Canal");
talkEntry:addResponse("The Wight Canal can be found at the eastside of the Border Mountains, where it connects these Mountains with the Snakehead Bay. You can find Sssumroz's Home, the Firelimes, the Lighthouse Ruins, the Fisherhouse and the Cemetery very close to it.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Wichtkanal");
talkEntry:addResponse("Der Wichtkanal kann an der Ostseite der Grenzberge gefunden werden, wo er dieses Gebierge mit der Schlangenkopf Bucht verbindet. Du findes dort Sssumrozs Heim, den Feuerlimes, die Leuchthaus Ruinen, die Fischerh�tte und den Friedhof in der N�he.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Sentry Forest");
talkEntry:addResponse("The Sentry Forest can be found at the southeast of the Border Mountains. You will find Ushara's Spire, Sentry Outpost, Oldra's Corner, Gnuremground and Harrowed Mount there and around.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Wachwald");
talkEntry:addResponse("Der Wachwald kann im S�dosten der Grenzberge gefunden werden. Du wird dort und herum den Ushara Schrein, den Wachau�enposten, Oldras Ecke, Gnuremgrund und den Gequ�lten Berg finden.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Great Ocean");
talkEntry:addResponse("The Great Ocean is the water in the south, which is ruled by our ships. The Katanbi River flows into this Ocean.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gro�er Ozean");
talkEntry:addResponse("Der Gro�e Ozean ist das Gew�sser im S�den, welches von unseren Schiffen beherrscht wird. Der Katanbi Fluss m�ndet in diesen Ozean.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Border Mountains");
talkEntry:addResponse("The Border Mountain are the east border of the Katanbi Desert and the southeast part of the Lonly Mountains.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Grenzberge");
talkEntry:addResponse("Die Grenzberge sind die �stliche Grenze der Katanbi W�ste und der s�d�stliche Teil der Einsamen Berge.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Western Katanbi Desert");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Keywords] Mount Siba, Milkhouse, Cornerstone Candour, Rosaline Cube, Cube Camp, Faber's Guardhouse, Remote Dwelling, Pirate cove, Cape Farewell, Katanbi River, Liberty Quarry, Grugmutz's cave, Creek Settlement"));
talkEntry:addResponse("Which place there do you mean: Mount Siba, Milkhouse, Cornerstone of Candour, Rosaline Cube, Cube Camp, Faber's Guardhouse, Remote Dwelling, Pirate cove, Cape Farewell, Katanbi River, Liberty Quarry, Grugmutz's cave, Creek Settlement.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Westliche Katanbi W�ste");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Schl�sselw�rter] Berg Siba, Milchhaus, Grundstein Aufrichtigkeit, Rosaline W�rfel, W�rfel Lager, Fabers Wachhaus, Entfernte Wohnst�tte, Piratenbucht, Kap Abschied, Katanbi Fluss, Freiheitsbruch, Grugmutz H�hle, Bach Siedlung."));
talkEntry:addResponse("Welchen Platz meinst du? Berg Siba, Milchhaus, Grundstein der Aufrichtigkeit, Rosaline W�rfel, W�rfel Lager, Fabers Wachhaus, Entfernte Wohnst�tte, Piratenbucht, Kap des Abschieds, Katanbi Fluss, Freiheitsbruch, Grugmutz H�hle, Bach Siedlung.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Mount Siba");
talkEntry:addResponse("A mountain in the south of Cadomyr. It is very close to the town. It is more or less next to the Cornerstone of Candour.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Berg Siba");
talkEntry:addResponse("Ein Berg im S�den von Cadomyr. Er ist sehr nahe an der Stadt. Er liegt mehr oder weniger neben dem Grundstein der Aufrichtigkeit.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Milkhouse");
talkEntry:addResponse("That is the name of a shop for foreignrs. It is in the east from here before you cross the Katanbi Bridge.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Milchhaus");
talkEntry:addResponse("Das ist der Name eines Laden der von fremden H�ndlern verwendet wird. Er kann im Osten von hier bevor man die Katanbi Br�cke �berquert gefunden werden.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Cornerstone Candour");
talkEntry:addResponse("This coal mine is south of us. Just walk south, cross the street which leeds to either east or west, and you will find it.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Grundstein Aufrichtigkeit");
talkEntry:addResponse("Diese Kohlemine ist s�dlich von uns. Geh einfach in den S�den, �berquere die Stra�e welche dich entweder in den Westen oder Osten f�hrt, und schon bist du dort.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Rosaline Cube");
talkEntry:addResponse("The Rosaline Cube will become our queens grave in the futher. We are building it right now and Robertus is responsible for it. The cube is south of Mount Siba.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Rosaline W�rfel");
talkEntry:addResponse("Der Rosaline W�rfel wird das Grab unserer K�nigin irgendwann mal werden. Wir bauen es gerade und Robertus ist veranwortlich daf�r. Der W�rfel ist s�dlich von Berg Siba.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Cube Camp");
talkEntry:addResponse("The Cube Camp is a place to rest for those who are working on the Rosaline Cube and therefore it is close to that.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("W�rfel Lager");
talkEntry:addResponse("Das W�rfel Lager ist ein Rastplatz f�r jene die am Rosaline W�rfel arbeiten und ist daher nahe diesen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Faber's Guardhouse");
talkEntry:addTrigger("Fabers Guardhouse");
talkEntry:addResponse("Faber's Guardhouse ist on the westcoast and was destroyed when pirates attacked us in the year 23 after the sorcerer and Faber was able to stop them.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Fabers Wachhaus");
talkEntry:addResponse("Fabers Wachhaus ist an der Westk�ste und wurde zerst�rt als Piraten uns attackierten im Jahre 23 nach dem Hexenmeister und Faber war es m�glich sie aufzuhalten.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Remote Dwelling");
talkEntry:addResponse("This building is the last before you might enter the pirate cove in the northwest and contains some riddels to solve.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Entfernte Wohnst�tte");
talkEntry:addResponse("Dieses Geb�ude ist das letzte bevor du die Piraten Bucht im Nordwesten betreten wirst und beinhaltet einige R�tseln.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Pirate cove");
talkEntry:addResponse("The Pirate cove in the northwest a place of potential threat. We have had several conflicts with them so far.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Piratenbucht");
talkEntry:addResponse("Die Piratenbucht im Nordwesten ist ein Platz mit potentialer Gefahr. Wir hatten immer wieder Konflikte mit den soweit.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Cape Farewell");
talkEntry:addResponse("The Cape Farewell can be found at the westcose close to Faber's Guardhouse.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Kap Abschied");
talkEntry:addResponse("Das Kap des Abschiedes kann an der Westk�ste gefunden werden nahe Faber's Guardhouse.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Katanbi River");
talkEntry:addResponse("The Katanbi River in the east from here has its orgin in the Lonely Mountains, seperates Western Katanbi Desert from Katanbi Desert and finds it way to the Great Ocean at Katanbi Delta.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Katanbi Fluss");
talkEntry:addResponse("Der Katanbi Fluss im Osten von hier hat seinen Ursprung in den Einsamen Bergen, trennt die Westliche Katanbi W�ste von der Katanbi W�ste und findet seinen Weg in den Gro�en Ozean am Katanbi Delta.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Liberty Quarry");
talkEntry:addResponse("The Liberty Quarry is in the northeast on the west shore of the Katanbi River. You might find iron, gold or copper there.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Freiheitsbruch");
talkEntry:addResponse("Der Freiheitsbruch ist im Nordosten am westlichen Ufer des Katanbi Flusses. Du kannst dort Eisen, Gold oder Kupfer finden.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Grugmutz's cave");
talkEntry:addTrigger("Grugmutzs cave");
talkEntry:addResponse("Grugmutz's cave is the north of Liberty Quarry. Grugmutz and his oger clan have tried to raid us several times. Be careful!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Grugmutz H�hle");
talkEntry:addResponse("Grugmutzs H�hle ist n�rdlich des Freiheitsbruch. Grugmutz und sein Oger Klan haben immer wieder versucht uns zu pl�ndern. Sei vorsicht!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Creek Settlement");
talkEntry:addResponse("The Creek Settlement was once on of our richest places. It was at the northern end of the Katanbi River. It was destroyed by either dwarfs from Fortress Hammerfall, Buccaneers or Grugmutz's ogers. We don't know yet.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Bach Siedlung");
talkEntry:addResponse("Die Bach Siedlung war einst einer unserer reichsten Orte. Es war am n�rdlichen Ende des Katanbi Flusses. Es wurde zerst�rt entweder von den Zwergen der Festung Hammerfall, von Seer�ubern oder von Grugmutzs Ogers zerst�rt. Wir wissen es nicht.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Katanbi Desert");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Keywords] Prison, Druid's Tear, Royal places, Desert Hole, Pyramid Discord, Pearl Sirani, Frontus Farm, Queen's Corner, Irundar, Zumbrass Tomb, Mount Zotmore, Buccaneers Lurk, Envy Creek, Weary Inn, eastern parts"));
talkEntry:addResponse("Which place there do you mean: Prison, Druid's Tear, Royal places, Desert Hole, Pyramid of Discord, Pearl of Sirani, Frontus Farm, Queen's Corner, Irundar, Zumbrass Tomb, Mount Zotmore, Buccaneers Lurk, Envy Creek, Weary Inn or its eastern parts of Katanbi desert?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Katanbi W�ste");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Schl�sselw�rter] Gef�ngnis, Druiden Tr�ne, K�nigliche Orte, W�stenloch, Pyramide Zwietracht, Perle Sirani, Frontus Hof, K�nigins Eck, Irundar, Zumbrass Grab, Berg Zotmore, Seer�uber Lauer, Neidbach, Matter Gasthof, �stlichen Teile"));
talkEntry:addResponse("Welchen Platz? Gef�ngnis, Druiden Tr�ne, K�nigliche Orte, W�stenloch, Pyramide der Zwietracht, Perle der Sirani, Frontus Hof, K�nigins Eck, Irundar, Zumbrass Grab, Berg Zotmore, Seer�uber Lauer, Neidbach, Matter Gasthof oder die �stlichen Teile der Katanbi W�ste?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Prison");
talkEntry:addResponse("The Prison can be found south of the Royal Academy of Gladiators. You do not want to end there.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gef�ngnis");
talkEntry:addResponse("Das Gef�ngnis kann s�dlich der K�niglichen Akademie der Gladiatioren gefunden werden. Du m�chtest dort nicht enden.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Druid's Tear");
talkEntry:addTrigger("Druids Tear");
talkEntry:addResponse("The Druid Tear can be found southeast of the Royal Academy of Gladiators. Ask a druid for further information.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Druiden Tr�ne");
talkEntry:addResponse("Die Druiden Tr�ne kann s�d�stlich der K�niglichen Akademie der Gladiatioren gefunden werden. Frage einen Druiden f�r weitere Information.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Royal places");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Keywords] Royal Academy, Academy Gladiators, Blood Circle Arena, Royal Slave Market"));
talkEntry:addResponse("There are the Royal Academy of Gladiators, the Blood Circle Arena and the Royal Slave Market.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("K�nigliche Orte");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Schl�sselw�rter] K�nigliche Akademie, Akademie Gladiatoren, Blurtkreisarena, K�niglicher Sklaven Markt"));
talkEntry:addResponse("Da w�ren die K�nigliche Akademie der Gladiatoren, die Blurtkreisarena und der K�nigliche Sklaven Markt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Royal Academy");
talkEntry:addTrigger("Academy Gladiators");
talkEntry:addResponse("Our Royal Academy of Gladiators is south on the road to the east. It is a place where participents in the Blood Circle Arena can train.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("K�nigliche Akademie");
talkEntry:addTrigger("Akademie Gladiatoren");
talkEntry:addResponse("Unsere K�nigliche Akademie der Gladiatoren ist s�dlich an der Stra�e in den Osten. Sie dient als Trainingsst�tte f�r jene die sich in der Blurtkreisarena beweisen wollen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Blood Circle Arena");
talkEntry:addResponse("The Blood Circle Arena was built by Sir Reginald in the year 6. It is a place for warriors and it is north on the road to the east");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Blutkreisarena");
talkEntry:addResponse("Die Blutkreisarena wurde von Sir Reginald im Jahre 6 erbaut. Sie dient als Platz f�r Krieger und kann n�rdlich an der Stra�e in den Osten gefunden werden.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Royal Slave Market");
talkEntry:addResponse("The Royal Slave Market can be found northeast of the Blood Circle Arena. For some coins you will find some productive slaves there.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("K�niglicher Sklaven Markt");
talkEntry:addResponse("Der K�nigliche Sklaven Markt kann nord�stlich der Blutkreisarena gefundne werden. F�r wenige M�nzen findest du dort produktive Sklaven.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Desert Hole");
talkEntry:addResponse("The Desert Hole southeast of the Blood Circle Arena ist a former mine and used by creatures like worms now.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("W�stenloch");
talkEntry:addResponse("Das W�stenloch s�d�stlich der Blutkreisarena war einst eine Mine und wird nun von Kreaturen wie W�rmern behaust.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Pyramid Discord");
talkEntry:addResponse("The Pyramid of Discord in the north of the Blood Circle Arena was probably a temple of a former civiliazation. But we are not sure about that.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Pyramide Zwietracht");
talkEntry:addResponse("Die Pyramide der Zwietracht n�rdlich der Blutkreisarena war wahrscheinlich ein Templer einer alten Zivilisation. Wir sind uns dar�ber aber nicht sicher.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Pearl Sirani");
talkEntry:addResponse("This place north of the Pyramid of Discord was used for royal weddings, but also by the aristocracy.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Perle Sirani");
talkEntry:addResponse("Dieser Platz n�rdlich der Pyramide der Zwietracht wurde f�r K�nigliche Hochzeiten, aber auch von den Aristokraten verwendet.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Frontus Farm");
talkEntry:addResponse("A Farmer called Frontus had a farm north of the Royal Slave Market until it was destroyed by worms.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Frontus Hof");
talkEntry:addResponse("Ein Bauer mit den Namen Frontus hatte n�rdlich vom K�niglichen Sklaven Markt einen Hof bis dieser zerst�rt wurde.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Queen's Corner");
talkEntry:addTrigger("Queens Corner");
talkEntry:addResponse("There are sore rumors about this place, I do not want to tell them. But you can find this place close to the Weary Inn in the north.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("K�nigins Eck");
talkEntry:addResponse("Es gibt dazu einige Ger�chte, die ich nicht mit dir teilen m�chte. Aber du kannst diesen Platz beim Matter Gasthof im Norden finden.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Zumbrass Tomb");
talkEntry:addResponse("Poor Zumbrass! She died there but I have no idea who killed her. However, you can find her tomb north of Mount Zotmore.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Zumbrass Grab");
talkEntry:addResponse("Arme Zumbrass! Sie wurde dort get�tet aber ich habe keine Ahnung von wem. Wie dem auch sei, du findest ihr Grab n�rdlich von Berg Zotmore.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Mount Zotmore");
talkEntry:addResponse("Mount Zotmore is probably the most dangerous place in the desert. Dont even think to go there. But if you still want, it is in the very north.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Berg Zotmore");
talkEntry:addResponse("Berg Zotmore ist wahrscheinlich der gef�hrlichste Platz in der W�ste. Denk gar nicht daran dort hinzugehen. Wenn du aber denoch willst, du findest ihn ganz im Norden.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Envy Creek");
talkEntry:addResponse("You will find the Envy Creek if you follow the eastern shore of the Katanbi River.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Neidbach");
talkEntry:addResponse("Du wirst den Neidbach finden in dem du dem �stlichen Ufer des Katanbi Flusses folgst.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Buccaneer");
talkEntry:addTrigger("Lurk");
talkEntry:addResponse("The Buccaneer Lurk is a dangerous place between Katanbi River and Envy Creek.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Seer�uber");
talkEntry:addTrigger("Lauer");
talkEntry:addResponse("Die Seer�uber Lauer ist ein gef�hrlicher Platz zwischen Katanbi Fluss und Neidbach.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Weary Inn");
talkEntry:addResponse("The Weary Inn was once a place for travelers until it got destroyed. You find it east of the Envy Creek.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Matter Gasthof");
talkEntry:addResponse("Der Matter Gasthof war einst ein Platz f�r Reisende bis er zerst�rt wurde. Du findest ihn �stlich des Neidbaches.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Irundar");
talkEntry:addResponse("Irundar? Somewhere in the desert, but where?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Irundar");
talkEntry:addResponse("Irundar? Irgendwo in der W�ste, aber wo?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("eastern part");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Keywords] Chapel Five, Lumpskrump's Band, Moshran's Brood, Oasis Star, Raptor Hole, Sarakas' Home, Khesra, Akaltut's Chamber, Cursed Place, Wizard Bane."));
talkEntry:addResponse("The eastern part of the Katanbi Desert contains: Chapel of the Five, Lumpskrump's Band, Moshran's Brood, Oasis of Stars, Raptor Hole, Sarakas' Home, Khesra, Akaltut's Chamber, Cursed Place, Wizard Bane.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("�stlichen teile");
talkEntry:addTrigger("�stliche teile");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Schl�sselw�rter] Kapelle F�nf, Lumpskrump Band, Moshran Brut, Oasis Stern, Raptoren Loch, Sarakas Heim, Khesra, Akaltut Kammer, Verfluchte Platz, Hexer Fluch."));
talkEntry:addResponse("Der �stliche Teil der Katanbi W�ste beinhaltet: Kapelle der F�nf, Lumpskrumps Bande, Moshrans Brut, Oasis der Sterne, Raptoren Loch, Sarakas Heim, Khesra, Akaltuts Kammer, Verfluchte Platz, Hexer Fluch.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Chapel Five");
talkEntry:addResponse("The Chapel of the Five is on the southern end of the Border Mountains and at the eastern border of Katanbi Desert. Just follow the street to the southeast.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Kapelle F�nf");
talkEntry:addResponse("Die Kapelle der F�nf ist am s�dlichen Ende der Grenzberge und an der �stlichen Grenze der Katanbi W�ste. Folge einfach der Stra�e in den S�dosten.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Chapel");
talkEntry:addResponse("The Chapel of the Five is on the southern end of the Border Mountains and at the eastern border of Katanbi Desert. Just follow the street to the southeast.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Kapelle");
talkEntry:addResponse("Die Kapelle der F�nf ist am s�dlichen Ende der Grenzberge und an der �stlichen Grenze der Katanbi W�ste. Folge einfach der Stra�e in den S�dosten.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Lumpskrump's Band");
talkEntry:addResponse("This place of bandits on the road to the east after the Desert Hole.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Lumpskrumps Band");
talkEntry:addTrigger("Lumpskrump");
talkEntry:addResponse("This place of bandits on the road to the east after the Desert Hole.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Lumpskrumps Band");
talkEntry:addTrigger("Lumpskrump");
talkEntry:addResponse("Dieser Platz mit Banditen ist an der Stra�e in den Osten kurz nach dem W�stenloch.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Moshran's Brood");
talkEntry:addResponse("The Moshran Brood, an orc-clan, can be found eastwards of Lumpskrump Band.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Moshrans Brut");
talkEntry:addResponse("Die Moshran Brut, ein Orkklan, kann �stlich von Lumpskrump Bande gefunden werden");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Oasis Star");
talkEntry:addResponse("The Oasis of Stars is a place eastwards of the Blood Circle Arena. You can dig for sand there.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Oasis Stern");
talkEntry:addResponse("Die Oasis der Sterne ist ein Platz �stlich der Blutzirkelarena. ");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Raptor Hole");
talkEntry:addResponse("The Raptor Hole is a cave in the south of the Border Mountains north of Akaltut's Chamber.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Raptoren Loch");
talkEntry:addResponse("Das Raptoren Loch ist eine H�hle im S�den der Grenzberge n�rdlich von Akaltuts Kammer.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Sarakas' Home");
talkEntry:addResponse("The home of this old murder can be found in the Border Mountains between the entrance to the Shadowland and the Raptor Hole.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Sarakas Heim");
talkEntry:addResponse("Das Heim dieses alten M�rder kann in den Grenzbergen zwischen den Eing�ngen zum Schattenland und des Raptoren Loches gefunden werden.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Khesra");
talkEntry:addResponse("Khesra's Dungeon can be found close to the cursed place. You will not find anything than hate there.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Khesra");
talkEntry:addResponse("Keshras Verlies kann in der N�he des Verfluchten Platz gefunden werden. Du wirst dort nichts anderes finden als Hass.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Cursed Place");
talkEntry:addResponse("The Cursed Place is east of Frontus Farm. Be careful that you don't get poisoned.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Verfluchte Platz");
talkEntry:addResponse("Der Verfluchte Platz ist �stlich von Frontus Hof. Sei vorsichtig, dass du dort nicht vergiftet wirst.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Akaltut's Chamber");
talkEntry:addTrigger("Akaltuts Chamber");
talkEntry:addResponse("Akaltut's Chamber can be found on the very south end of the Border Mountains. I hope you can run fast if you dare to show up there.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Akaltut Kammer");
talkEntry:addResponse("Akaltuts Kammer kann ganz am s�dlichen Ende der Grenzberge gefunden werden. Ich hoffe du kannst schnell laufen falls du tats�chlich dort hingehen m�chtest.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Wizard Bane");
talkEntry:addResponse("This place can be found in the very northeast of the desert.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hexer Fluch");
talkEntry:addResponse("Dieser Platz kann ganz im Nordosten der W�ste gefunden werden.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Katanbi Delta");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Keywords] Merchants Folly, Cadomyr Harbour, Harp Pain, Lost Harbour, Tear Sirani, Kata Island, Mount Letma"));
talkEntry:addResponse("Which place there do you mean: Merchants' Folly, Cadomyr Harbour, Harp of Pain, Lost Harbour, Tear of Sirani, Kata Island, Mount Letma");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Katanbi Delta");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Schl�sselw�rter] H�ndlers Unsinn, Cadomyr, Hafen, Schmerzvolle Harfe, Verlorener Hafen, Tr�ne Sirani, Kata Insel, Berg Letma"));
talkEntry:addResponse("Welchen Platz dort meinst du? H�ndlers Unsinn, Cadomyr, Hafen, Schmerzvolle Harfe, Verlorener Hafen, Tr�ne der Sirani, Kata Insel, Berg Letma?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Merchants Folly");
talkEntry:addTrigger("Merchants' Folly");
talkEntry:addResponse("It can be found close to the Cadomyr Harbour.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("H�ndlers Unsinn");
talkEntry:addResponse("Es kann nahe des Cadomyr Hafen gefunden werden.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Cadomyr Harbour");
talkEntry:addTrigger("Cadomyr Harbor");
talkEntry:addResponse("Our harbour is on the very south at the Great Ocean after you passed Western Katanbi Desert.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Cadomyr Hafen");
talkEntry:addResponse("Unser Hafen ist ganz im S�den am Gro�en Ozean nachdem du die Westliche Katanbi W�ste durchquerrt hast.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Harp Pain");
talkEntry:addResponse("The Harp of Pain can be found at one of the island in the Katanbi Delta. You better don't play it.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Schmerzvolle Harfe");
talkEntry:addResponse("Die Schmerzvolle Harfe kann auf einer der Inseln im Katanbi Delta gefunden werden. Du spielst sie besser nicht.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Lost Harbour");
talkEntry:addResponse("The Lost Harbour has been destroyed by an attack of Runewick forces once in the year 10 after the sorcerer. Some ruins are left at the southern point of Katanbi Delta.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Verlorener Hafen");
talkEntry:addTrigger("Verlorene Hafen");
talkEntry:addResponse("Der Verlorene Hafen wurde durch einen Angriff von Runewick Streitkr�ften im Jahre 10 nach dem Hexenmeister zerst�rt. Einige Ruinen k�nnen am s�dlichsten Punkt im Katanbi Delta gefunden werden.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tear Sirani");
talkEntry:addResponse("This place is used for weddings for common or lower ranked people. It is at the northern part of the Katanbi Delta and accessible at the eastern shore of the Katanbi River.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tr�ne Sirani");
talkEntry:addResponse("Dieser Platz wird f�r Hochzeiten f�r gew�hnliche und unangesehnere Leute verwendet. Er ist am n�rdlichen Teil im Katanbi Delta zu finden und �ber das Ostufer des Katanbi Fluss erreichbar.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Kata Island");
talkEntry:addResponse("This island is in the southern part of the Katanbi Delta and used by Pirates.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Kata Insel");
talkEntry:addResponse("Diese Insel ist im s�dlichen Teil vom Katanbi Delta und wird von Piraten verwendet.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Mount Letma");
talkEntry:addResponse("This place in the east of the Katanbi Delta can be accessed over the eastern shore of the Katanbi River. But be careful, it is occupied by thousands of Golems. ");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Berg Letma");
talkEntry:addResponse("Dieser Platz im Osten vom Katanbi Delta kann �ber das �stliche Ufer des Katanbi Fluss erreicht werden. Aber sei vorsichtig, er ist �berf�llt mit Golems!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(642, "<", 1));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New Quest 'Find Queen Rosaline Edwards' started] Find Queen Rosaline Edwards and bring her your gift."));
talkEntry:addConsequence(npc.base.consequence.item.item(144, 1, 777, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(642, "=", 1));
talkEntry:addResponse("Have you already met our Queen? If not, you could introduce yourself with a gift to her. She will appreciate this gift here, since she loves beautiful things. *hands over a flower*");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(642, "<", 1));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest 'Finde K�nigin Rosaline Edwards' gestartet] Finde K�nigin Rosaline Edwards und bringe ihr dein Geschenk."));
talkEntry:addConsequence(npc.base.consequence.item.item(144, 1, 777, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(642, "=", 1));
talkEntry:addResponse("Hast du bereits die K�nigin kennengelernt? Falls nicht, dann solltest du dich bei ihr mit einem Geschenk vorstellen. Sie wird dieses Geschenk hier bestimmt m�gen, da sie ein Auge f�r das Sch�ne hat. *�berreicht eine Blume*");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(642, "<", 1));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New Quest 'Find Queen Rosaline Edwards' started] Find Queen Rosaline Edwards and bring her your gift."));
talkEntry:addConsequence(npc.base.consequence.item.item(144, 1, 777, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(642, "=", 1));
talkEntry:addResponse("Have you already met our Queen? If not, you could introduce yourself with a gift to her. She will appreciate this gift here, since she loves beautiful things. *hands over a flower*");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(642, "<", 1));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest 'Finde K�nigin Rosaline Edwards' gestartet] Finde K�nigin Rosaline Edwards und bringe ihr dein Geschenk."));
talkEntry:addConsequence(npc.base.consequence.item.item(144, 1, 777, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(642, "=", 1));
talkEntry:addResponse("Hast du bereits die K�nigin kennengelernt? Falls nicht, dann solltest du dich bei ihr mit einem Geschenk vorstellen. Sie wird dieses Geschenk hier bestimmt m�gen, da sie ein Auge f�r das Sch�ne hat. *�berreicht eine Blume*");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Nothing to do for you yet but soon I have plenty of tasks for you.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Ich habe nichts f�r dich zu tun momentan aber bald habe ich einige Aufgaben f�r dich.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addResponse("Nothing to do for you yet but soon I have plenty of tasks for you.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addResponse("Ich habe nichts f�r dich zu tun momentan aber bald habe ich einige Aufgaben f�r dich.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("archmage");
talkEntry:addResponse("The archmage ownsss two ssstonesss of power. Thessse are an Emerald and a Ruby. They protect Runewick against being beaten by our forcesss.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Erzmagier");
talkEntry:addResponse("Der Erzmagier besssitzt zwei Sssteine der Macht. Einen Smaragd und einen Rubin. Die besssch�tzen Runewick vor der �bernahme durch unsssere Streitkr�fte.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Elvaine");
talkEntry:addTrigger("Morgan");
talkEntry:addResponse("The archmage ownsss two ssstonesss of power. Thessse are an Emerald and a Ruby. They protect them against being beaten by our forcesss.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elvaine");
talkEntry:addTrigger("Morgan");
talkEntry:addResponse("Der Erzmagier besssitzt zwei Sssteine der Macht. Einen Smaragd und einen Rubin. Die besssch�tzen Runewick vor der �bernahme durch unsssere Streitkr�fte.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Runewick");
talkEntry:addResponse("Runewick? It isss in the eassst. Crosss Katanbi Desert, get behind Border Mountainsss to the other ssside of the Snakehead Bay. Look for sssignposts. But be careful. Dangerousss way, ussse better the teleporter outssside the town.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Runewick");
talkEntry:addResponse("Runewick? Dasss issst im Osssten. Durchqu�re die Katanbi W�ste, gehe hinter dasss Grenzberge zu der anderen Ssseite der Ssschlangenkopf Bucht. Ssschau nach Wegssschildern. Issst aber ein gef�hrlicher Weg. Verwende bessser den Teleporter.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Valerio");
talkEntry:addTrigger("Guilianni");
talkEntry:addTrigger("Don");
talkEntry:addResponse("The Don ownsss two ssstonesss of power. These are a Sapphire and a Obsidian. They protect Galmair against being beaten by our forcesss.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Valerio");
talkEntry:addTrigger("Guilianni");
talkEntry:addTrigger("Don");
talkEntry:addResponse("Der Don besssitzt zwei Sssteine der Macht. Einen Saphir und einen Obsidian. Die besssch�tzen Galmair vor der �bernahme durch unsere Ssstreitkr�fte.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Galmair");
talkEntry:addResponse("Galmair? It isss in the north. Crosss Katanbi Desert, get behind Border Mountainsss, and then walk to the north. Look for sssignposts. But be careful. Dangerousss way, ussse better the teleporter outssside the town.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Galmair");
talkEntry:addResponse("Galmair? Dasss issst im Norden. Durchqu�re die Katanbi W�ste, gehe hinter dasss Grenzberge und dann in den Norden. Ssschau nach Wegssschildern. Issst aber ein gef�hrlicher Weg. Verwende bessser den Teleporter.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Queen");
talkEntry:addResponse("The Queen ownsss two ssstonesss of power. These are a Topaz and an Amethyst. They protect usss againssst Runewick and Galmair.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("K�nigin");
talkEntry:addResponse("Der K�nigin besitzt zwei Sssteine der Macht. Einen Topas und einen Amethyst. Die besch�tzen unsss vor Runewick und Galmair.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("rosaline");
talkEntry:addTrigger("edwards");
talkEntry:addResponse("The Queen owns two stones of power. These are a Topaz and an Amethyst. They protect us against Runewick and Galmair.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("rosaline");
talkEntry:addTrigger("edwards");
talkEntry:addResponse("Der K�nigin besitzt zwei Steine der Macht. Einen Topas und einen Amethyst. Die besch�tzen uns vor Runewick und Galmair.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Cadomyr");
talkEntry:addResponse("That isss here and if you want to know more about it asssk Frizza at the teleporter outside for further information.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Cadomyr");
talkEntry:addResponse("Das issst hier und wenn du mehr dar�ber wisssen m�chtest, dann frag Frizza beim Teleporter drau�en nach weiterer Information.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("god");
talkEntry:addResponse("Primarly, we pray to three godsss in Cadomyr. They are Sirani, Zhambra and Malachin. But I pray to Zelphia, mother of my race");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gott");
talkEntry:addTrigger("G�tter");
talkEntry:addResponse("Bevorzugt betten wir drei G�tter in Cadomyr an. Die w�ren Sirani, Zhambra und Malachin. Aber ich bette zu Zelphia, der Mutter meiner Rassse.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Adron");
talkEntry:addResponse("If you like to know more about thisss god asssk sssomone elssse. For example Frizza outssside at the teleporter.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Adron");
talkEntry:addResponse("Wenn du mehr �ber diessse Gottheit zu wissen m�chtessst, dann fragt jemand anderen. Zum Beissspiel Frizza drausssen beim Teleporter.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Bragon");
talkEntry:addTrigger("Br�gon");
talkEntry:addResponse("If you like to know more about thisss god asssk sssomone elssse. For example Frizza outssside at the teleporter.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Bragon");
talkEntry:addTrigger("Br�gon");
talkEntry:addResponse("Wenn du mehr �ber diessse Gottheit zu wissen m�chtessst, dann fragt jemand anderen. Zum Beissspiel Frizza drausssen beim Teleporter.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Cherga");
talkEntry:addResponse("If you like to know more about thisss god asssk sssomone elssse. For example Frizza outssside at the teleporter.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Cherga");
talkEntry:addResponse("Wenn du mehr �ber diessse Gottheit zu wissen m�chtessst, dann fragt jemand anderen. Zum Beissspiel Frizza drausssen beim Teleporter.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Elara");
talkEntry:addResponse("If you like to know more about thisss god asssk sssomone elssse. For example Frizza outssside at the teleporter.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elara");
talkEntry:addResponse("Wenn du mehr �ber diessse Gottheit zu wissen m�chtessst, dann fragt jemand anderen. Zum Beissspiel Frizza drausssen beim Teleporter.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Eldan");
talkEntry:addResponse("If you like to know more about thisss god asssk sssomone elssse. For example Frizza outssside at the teleporter.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Eldan");
talkEntry:addResponse("Wenn du mehr �ber diessse Gottheit zu wissen m�chtessst, dann fragt jemand anderen. Zum Beissspiel Frizza drausssen beim Teleporter.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Findari");
talkEntry:addResponse("If you like to know more about thisss god asssk sssomone elssse. For example Frizza outssside at the teleporter.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Findari");
talkEntry:addResponse("Wenn du mehr �ber diessse Gottheit zu wissen m�chtessst, dann fragt jemand anderen. Zum Beissspiel Frizza drausssen beim Teleporter.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Irmorom");
talkEntry:addResponse("If you like to know more about thisss god asssk sssomone elssse. For example Frizza outssside at the teleporter.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Irmorom");
talkEntry:addResponse("Wenn du mehr �ber diessse Gottheit zu wissen m�chtessst, dann fragt jemand anderen. Zum Beissspiel Frizza drausssen beim Teleporter.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Malachin");
talkEntry:addTrigger("Malach�n");
talkEntry:addResponse("You can find a Temple of him in the South. Just go to the mine 'Cornerstone of Candour', and you will find the temple above. Just follow the signposts.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Malachin");
talkEntry:addTrigger("Malach�n");
talkEntry:addResponse("Du kannst den Tempel im S�den. Gehe einfach zur Mine 'Grundstein der Aufrichtigkeit', und du wirst den Tempel dar�ber finden. Folge einfach den Wegschildern.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.state.state("=", 1));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Moshran");
talkEntry:addConsequence(npc.base.consequence.attribute.attribute("hitpoints", "-", 9999));
talkEntry:addConsequence(npc.base.consequence.attribute.attribute("hitpoints", "+", 1));
talkEntry:addResponse("#me draws two swords and hisses: 'I warned you, but you did not lisssten. Face the consssequencesss now!'");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.state.state("=", 1));
talkEntry:addTrigger("Moshran");
talkEntry:addConsequence(npc.base.consequence.attribute.attribute("hitpoints", "-", 9999));
talkEntry:addConsequence(npc.base.consequence.attribute.attribute("hitpoints", "+", 1));
talkEntry:addResponse("#me zieht zwei Schwerter und zischt: 'Wer nicht h�ren will muss f�hlen!'");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Moshran");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 1));
talkEntry:addResponse("One more word about him and you will have to visit the cross! *hisses with his tongue*");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Moshran");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 1));
talkEntry:addResponse("Ein weiteres Wort �ber ihn und du wirst das Kreuz aufsuchen m�ssen! *zischt mit seiner Zunge*");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Nargun");
talkEntry:addTrigger("Narg�n");
talkEntry:addTrigger("Narg�n");
talkEntry:addResponse("If you like to know more about thisss god asssk sssomone elssse. For example Frizza outssside at the teleporter.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Nargun");
talkEntry:addTrigger("Narg�n");
talkEntry:addTrigger("Narg�n");
talkEntry:addResponse("Wenn du mehr �ber diessse Gottheit zu wissen m�chtessst, dann fragt jemand anderen. Zum Beissspiel Frizza drausssen beim Teleporter.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Oldra");
talkEntry:addResponse("If you like to know more about thisss god asssk sssomone elssse. For example Frizza outssside at the teleporter.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Oldra");
talkEntry:addResponse("Wenn du mehr �ber diessse Gottheit zu wissen m�chtessst, dann fragt jemand anderen. Zum Beissspiel Frizza drausssen beim Teleporter.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Ronagan");
talkEntry:addResponse("If you like to know more about thisss god asssk sssomone elssse. For example Frizza outssside at the teleporter.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ronagan");
talkEntry:addResponse("Wenn du mehr �ber diessse Gottheit zu wissen m�chtessst, dann fragt jemand anderen. Zum Beissspiel Frizza drausssen beim Teleporter.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Sirani");
talkEntry:addResponse("You can find a Temple of her in the Sssoutheast. Just go east first, and then south after you cross the Katanbi-river. Just follow the signposts, but be careful!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Sirani");
talkEntry:addResponse("Du kannst den Tempel von ihr im Sss�dosten finden. Gehe einfach in den Osssten, und dann in den Sss�den nachdem du den Katanbi-Fluss �berquert hast. Folge einfach den Wegschildern, aber sei vorsichtig!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Tanora");
talkEntry:addTrigger("Zelphia");
talkEntry:addResponse("If you like to know more about thisss god asssk sssomone elssse. For example Frizza outssside at the teleporter.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tanora");
talkEntry:addTrigger("Zelphia");
talkEntry:addResponse("Wenn du mehr �ber diessse Gottheit zu wissen m�chtessst, dann fragt jemand anderen. Zum Beissspiel Frizza drausssen beim Teleporter.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Ushara");
talkEntry:addResponse("If you like to know more about thisss god asssk sssomone elssse. For example Frizza outssside at the teleporter.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ushara");
talkEntry:addResponse("Wenn du mehr �ber diessse Gottheit zu wissen m�chtessst, dann fragt jemand anderen. Zum Beissspiel Frizza drausssen beim Teleporter.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Zhambra");
talkEntry:addResponse("You can find a Temple of him in our town. Jussst go through the townwall, passs the marketplace and then you will find it on the right after the workshop.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Zhambra");
talkEntry:addResponse("Du kannst den Tempel von in unserer Ssstadt finden. Gehe einfach durch die Ssstadtmauer, �berquere den Marktplatz und dann findest du ihn auch schon an der rechten Ssseite hinter der Werkstatt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("my name");
talkEntry:addResponse("Nice to meet you. How can I help you?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("mein Name");
talkEntry:addResponse("Sssch�n dich zu kennenzulernen. Wie kann ich dir helfen?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Ruzusss");
talkEntry:addResponse("Yes, that isss my name. About what placesss do you want information?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ruzusss");
talkEntry:addResponse("Ja, dasss ist mein Name. �ber welche Orte wollt ihr Information?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Yes");
talkEntry:addResponse("A bit more concrete, pleassse!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ja");
talkEntry:addResponse("Etwas konkreter wenn ich bitten darf!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("No");
talkEntry:addResponse("A bit more concrete, pleassse!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Nein");
talkEntry:addResponse("Etwas konkreter wenn ich bitten darf!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.chance.chance(20.0));
talkEntry:addTrigger(".*");
talkEntry:addResponse("Huh, about what placesss ssshall I give you information? Do you mind just to asssk for help asss a firssst ssstep?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addCondition(npc.base.condition.chance.chance(20.0));
talkEntry:addTrigger(".*");
talkEntry:addResponse("Huh, �ber welche Orte w�nssscht ihr Information? Vielleicht begn�gt ihr euch erstmal nach Hilfe zu fragen?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Farewell");
talkEntry:addTrigger("Bye");
talkEntry:addTrigger("Fare well");
talkEntry:addTrigger("See you");
talkEntry:addResponse("Sssee you again if you need more information.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tsch��");
talkEntry:addTrigger("Tsch�ss");
talkEntry:addTrigger("Wiedersehen");
talkEntry:addTrigger("Gehab wohl");
talkEntry:addResponse("Wir sssehen unsss wenn mehr Information ben�tigt wird.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("place");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Keywords] Illarion, northeast, northwest, southwest, southeast"));
talkEntry:addResponse("Places? Which places to you mean? These could be in the northeast, northwest, southwest or southeast of Illarion?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Orte");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Schl�sselw�rter] Illarion, Nordosten, Nordwesten, S�dwesten, S�dosten"));
talkEntry:addResponse("Orte? Welche Orte meinst du? Diese k�nnten sein im Nordosten, Nordwesten, S�dwesten oder S�dosten von Illarion?");
talkingNPC:addTalkingEntry(talkEntry);
end;
talkingNPC:addCycleText("Wer etwas �ber die Orte hier in der Umgebung wissen will, soll mich nur nach diesen Orten fragen.", "If someone wants to know something about the places here, just ask me for these places.");
talkingNPC:addCycleText("#me wedelt mit seinem Schwanz.", "#me wages his tail.");
talkingNPC:addCycleText("#me blickt herum mit seinen weit ge�ffneten Augen.", "#me looks around with wide opened eyes.");
talkingNPC:addCycleText("#me untersucht seinen Dolch.", "#me examines his dagger.");
talkingNPC:addCycleText("#me streichelt seinen Schwanz.", "#me pets his tail.");
talkingNPC:addCycleText("#me isst einen Fisch.", "#me eats a fish.");
mainNPC:addLanguage(0);
mainNPC:addLanguage(4);
mainNPC:setDefaultLanguage(0);
mainNPC:setLookat("Dieser NPC ist Ruzusss der J�ger.", "This NPC is Ruzusss the hunter.");
mainNPC:setUseMessage("Fasst mich nicht an!", "Do not touch me!");
mainNPC:setConfusedMessage("#me schaut verwirrt.", "#me looks around confused.");
mainNPC:setEquipment(1, 2287);
mainNPC:setEquipment(3, 364);
mainNPC:setEquipment(11, 0);
mainNPC:setEquipment(5, 0);
mainNPC:setEquipment(6, 0);
mainNPC:setEquipment(4, 48);
mainNPC:setEquipment(9, 366);
mainNPC:setEquipment(10, 369);
mainNPC:setAutoIntroduceMode(true);

mainNPC:initDone();
end;

function receiveText(npcChar, texttype, message, speaker) mainNPC:receiveText(npcChar, texttype, speaker, message); end;
function nextCycle(npcChar) mainNPC:nextCycle(npcChar); end;
function lookAtNpc(npcChar, char, mode) mainNPC:lookAt(npcChar, char, mode); end;
function useNPC(npcChar, char, counter, param) mainNPC:use(npcChar, char); end;
initNpc();
initNpc = nil;
-- END