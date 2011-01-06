--------------------------------------------------------------------------------
-- NPC Name: Brassius Meres                                          Runewick --
-- NPC Job:  Guard                                                            --
--                                                                            --
-- NPC Race: human                      NPC Position:  841, 821, 0            --
-- NPC Sex:  male                       NPC Direction: south                  --
--                                                                            --
-- Author:   Grokk & Estralis Seborian                                        --
--                                                                            --
-- Last parsing: January 06, 2011                        easyNPC Parser v1.02 --
--------------------------------------------------------------------------------

--[[SQL
INSERT INTO "npc" ("npc_type", "npc_posx", "npc_posy", "npc_posz", "npc_faceto", "npc_name", "npc_script", "npc_sex", "npc_hair", "npc_beard", "npc_hairred", "npc_hairgreen", "npc_hairblue", "npc_skinred", "npc_skingreen", "npc_skinblue") 
VALUES (0, 841, 821, 0, 4, 'Brassius Meres', 'npc.brassius_meres', 0, 3, 3, 204, 124, 25, 245, 180, 137);
---]]

require("npc.base.basic")
require("npc.base.condition.chance")
require("npc.base.condition.item")
require("npc.base.condition.language")
require("npc.base.condition.quest")
require("npc.base.condition.town")
require("npc.base.consequence.deleteitem")
require("npc.base.consequence.inform")
require("npc.base.consequence.item")
require("npc.base.consequence.money")
require("npc.base.consequence.quest")
require("npc.base.consequence.rankpoints")
require("npc.base.talk")
module("npc.brassius_meres", package.seeall)

function initNpc()
mainNPC = npc.base.basic.baseNPC();
local talkingNPC = npc.base.talk.talkNPC(mainNPC);
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("set 0");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Debugging] Quest status set to 0"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(109, "=", 0));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".+");
talkEntry:addCondition(npc.base.condition.quest.quest(109, ">", 6));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Error] Something went wrong, please inform a developer."));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Help");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Game Help] This NPC is Brassius Meres the Guard. Keyphrases: hello, quest, profession, Runewick, law, bridge, gods."));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hilfe");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Spielhilfe] Dieser NPC ist Brassius Meres der W�chter. Schl�sselw�rter: Hallo, Auftrag, Berufung, Runewick, Br�cke, Gesetze, G�tter."));
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
talkEntry:addResponse("#me bows his head politely: 'Be greeted.'");
talkEntry:addResponse("Greetings to you.");
talkEntry:addResponse("#me nods his head in greeting.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gr��");
talkEntry:addTrigger("Gru�");
talkEntry:addTrigger("Guten Tag");
talkEntry:addTrigger("Guten Abend");
talkEntry:addTrigger("Mahlzeit");
talkEntry:addTrigger("Tach");
talkEntry:addTrigger("Moin");
talkEntry:addResponse("#me deutet eine Verbeugung an: 'Seid gegr��t.'");
talkEntry:addResponse("Seid mir gegr��t.");
talkEntry:addResponse("#me nickt gr��end mit dem Kopf.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hiho");
talkEntry:addTrigger("Hallo");
talkEntry:addTrigger("Hey");
talkEntry:addTrigger("Greeb");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("#me frowns lightly, 'Yes, yes. Hello.'");
talkEntry:addResponse("#me nods once.");
talkEntry:addResponse("May I help you?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hiho");
talkEntry:addTrigger("Hallo");
talkEntry:addTrigger("Hey");
talkEntry:addTrigger("Greeb");
talkEntry:addResponse("#me r�mpft leicht die Nase: 'Ja, ja. Hallo.'");
talkEntry:addResponse("#me nickt knapp.");
talkEntry:addResponse("Kann ich euch helfen?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Farewell");
talkEntry:addTrigger("Bye");
talkEntry:addTrigger("Fare well");
talkEntry:addTrigger("See you");
talkEntry:addResponse("Be well. And stay out of trouble.");
talkEntry:addResponse("May Zhambra keep you safe from harm.");
talkEntry:addResponse("#me raises his fist to his chest in salute.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tsch��");
talkEntry:addTrigger("Tsch�ss");
talkEntry:addTrigger("Wiedersehen");
talkEntry:addTrigger("Gehab wohl");
talkEntry:addResponse("Es m�ge euch gut ergehen und all �rger fern von euch bleiben.");
talkEntry:addResponse("Zhambra m�ge euch von jedem Leid bewahren.");
talkEntry:addResponse("#me hebt seine Faust vor die Brust zum Gru�.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addTrigger("Farebba");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Aye. Be off with you.");
talkEntry:addResponse("Stay out of trouble, I have enough work already.");
talkEntry:addResponse("Be gone, then.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addTrigger("Farebba");
talkEntry:addResponse("Ja, nun geht schon.");
talkEntry:addResponse("Haltet euch aus Keilereien raus, ich habe schon genug zu tun.");
talkEntry:addResponse("Dann mal los.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("How are you");
talkEntry:addTrigger("How feel");
talkEntry:addTrigger("How do you do");
talkEntry:addResponse("I am well, thank you.");
talkEntry:addResponse("Zhambra keeps me safe and in good health.");
talkEntry:addResponse("I can not complain, the Gods care for me.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Wie geht");
talkEntry:addTrigger("Wie f�hlst");
talkEntry:addTrigger("Wie ist es ergangen");
talkEntry:addTrigger("Wie Befinden");
talkEntry:addResponse("Mir geht es gut, danke der Nachfrage.");
talkEntry:addResponse("Zhambra sch�tzt mich und erh�lt mein Leben.");
talkEntry:addResponse("Ich kann mich nicht beklagen, die G�tter sorgen f�r mich.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("your name");
talkEntry:addTrigger("who are you");
talkEntry:addTrigger("who art thou");
talkEntry:addResponse("My name is Brassius Meres. It is an honour to meet you.");
talkEntry:addResponse("I am Brassius Meres, a guard of Runewick.");
talkEntry:addResponse("Brassius Meres, faithful servant of the Lords Malach�n and Zhambra.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("dein name");
talkEntry:addTrigger("wer bist du");
talkEntry:addTrigger("wer seid ihr");
talkEntry:addTrigger("wie hei�t");
talkEntry:addResponse("Mein Name ist Brassius Meres. Es ist mir eine Ehre, eure Bekanntschaft zu machen.");
talkEntry:addResponse("Ich bin Brassius Meres, W�chter Runewicks.");
talkEntry:addResponse("Brassius Meres, frommer Diener der Herren Malach�n und Zhambra.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(109, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest] Eating on the Job"));
talkEntry:addResponse("Now that you mention it, I am feeling rather hungry. But I can't leave my post. Please bring me five apples and I will reimburse you for your troubles.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(109, "=", 1));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(109, "=", 0));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Speisen im Dienst"));
talkEntry:addResponse("Nun da ihr es sagt, ich bin ziemlich hungrig, aber ich kann meinen Posten nicht verlassen. Bringt mir bitte f�nf �pfel und ich werde euch f�r eure M�hen entlohnen.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(109, "=", 1));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addCondition(npc.base.condition.quest.quest(109, "=", 0));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest] Eating on the Job"));
talkEntry:addResponse("Now that you mention it, I am feeling rather hungry. But I can't leave my post. Please bring me five apples and I will reimburse you for your troubles.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(109, "=", 1));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addCondition(npc.base.condition.quest.quest(109, "=", 0));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Speisen im Dienst"));
talkEntry:addResponse("Nun da ihr es sagt, ich bin ziemlich hungrig, aber ich kann meinen Posten nicht verlassen. Bringt mir bitte f�nf �pfel und ich werde euch f�r eure M�hen entlohnen.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(109, "=", 1));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(109, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(15, "all", "<", 5));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("#me's stomach rumbles: 'I could really do with those five apples, if you've got a few moments to spare.'");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(109, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(15, "all", "<", 5));
talkEntry:addResponse("#me' Magen knurrt: 'Mit f�nf �pfeln im Magen w�rde es mir weit besser gehen, wenn ihr einen Moment Zeit daf�r habt.'");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addCondition(npc.base.condition.quest.quest(109, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(15, "all", "<", 5));
talkEntry:addResponse("#me's stomach rumbles: 'I could really do with those five apples, if you've got a few moments to spare.'");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addCondition(npc.base.condition.quest.quest(109, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(15, "all", "<", 5));
talkEntry:addResponse("#me' Magen knurrt: 'Mit f�nf �pfeln im Magen w�rde es mir weit besser gehen, wenn ihr einen Moment Zeit daf�r habt.'");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".+");
talkEntry:addCondition(npc.base.condition.quest.quest(109, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(15, "all", ">", 4));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You are awarded 30 copper coins."));
talkEntry:addResponse("#me quickly grabs the fruit, handing over a small purse of coins: 'Thank you kindly!'. He takes a large bite and stuffs the apples into his bag as he chews.");
talkEntry:addConsequence(npc.base.consequence.money.money("+", 30));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(15, 5));
talkEntry:addConsequence(npc.base.consequence.quest.quest(109, "=", 2));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".+");
talkEntry:addCondition(npc.base.condition.quest.quest(109, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(15, "all", ">", 4));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du erh�ltst 30 Kupferst�cke."));
talkEntry:addResponse("#me rei�t die �pfel an sich und �bergibt beil�ufig eine Geldbeutel: 'Vielen Dank!'. Er bei�t gen��lich ab und verstaut die �pfel kauend in einem Beutel.");
talkEntry:addConsequence(npc.base.consequence.money.money("+", 30));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(15, 5));
talkEntry:addConsequence(npc.base.consequence.quest.quest(109, "=", 2));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(109, "=", 2));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest] Resupply"));
talkEntry:addResponse("Those apples were delicious, thank you once again. I could use some more help. My supply of arrows is running low, if you bring me ten more, then I have something that might interest you.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(109, "=", 3));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(109, "=", 2));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Nachschub"));
talkEntry:addResponse("Die �pfel waren k�stlich, danke nochmal. Ich brauche aber weiterhin Hilfe. Mein Vorrat an Pfeilen nimmt ab, wenn ihr mir zehn Pfeile br�chtet, w�re dies nicht zu eurem Nachteil.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(109, "=", 3));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addCondition(npc.base.condition.quest.quest(109, "=", 2));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest] Resupply"));
talkEntry:addResponse("Those apples were delicious, thank you once again. I could use some more help. My supply of arrows is running low, if you bring me ten more, then I have something that might interest you.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(109, "=", 3));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addCondition(npc.base.condition.quest.quest(109, "=", 2));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Nachschub"));
talkEntry:addResponse("Die �pfel waren k�stlich, danke nochmal. Ich brauche aber weiterhin Hilfe. Mein Vorrat an Pfeilen nimmt ab, wenn ihr mir zehn Pfeile br�chtet, w�re dies nicht zu eurem Nachteil.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(109, "=", 3));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(109, "=", 3));
talkEntry:addCondition(npc.base.condition.item.item(64, "all", "<", 10));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("#me glances at his empty quiver, frowning lightly: 'I am in urgent need of those ten arrows, if it is not too much trouble.'");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(109, "=", 3));
talkEntry:addCondition(npc.base.condition.item.item(64, "all", "<", 10));
talkEntry:addResponse("#me starrt naser�mpfend auf seinen leeren K�cher: 'Ich brauche dringend zehn Pfeile, wenn es euch nichts ausmacht.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addCondition(npc.base.condition.quest.quest(109, "=", 3));
talkEntry:addCondition(npc.base.condition.item.item(64, "all", "<", 10));
talkEntry:addResponse("#me glances at his empty quiver, frowning lightly: 'I am in urgent need of those ten arrows, if it is not too much trouble.'");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addCondition(npc.base.condition.quest.quest(109, "=", 3));
talkEntry:addCondition(npc.base.condition.item.item(64, "all", "<", 10));
talkEntry:addResponse("#me starrt naser�mpfend auf seinen leeren K�cher: 'Ich brauche dringend zehn Pfeile, wenn es euch nichts ausmacht.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".+");
talkEntry:addCondition(npc.base.condition.quest.quest(109, "=", 3));
talkEntry:addCondition(npc.base.condition.item.item(64, "all", ">", 9));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You are awarded 100 copper coins."));
talkEntry:addResponse("#me slides the arrows into his quiver, nodding in thanks, 'These shall do perfectly, thank you. I hope that this shall suffice as compensation.'");
talkEntry:addConsequence(npc.base.consequence.money.money("+", 100));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(64, 10));
talkEntry:addConsequence(npc.base.consequence.quest.quest(109, "=", 4));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".+");
talkEntry:addCondition(npc.base.condition.quest.quest(109, "=", 3));
talkEntry:addCondition(npc.base.condition.item.item(64, "all", ">", 9));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du erh�ltst 100 Kupferst�cke."));
talkEntry:addResponse("#me steckt die Pfeile in seinen K�cher, dankbar nickend: 'Das sollte erstmal genug sein, habt dank. Ich hoffe, dies reicht euch als Entlohnung.");
talkEntry:addConsequence(npc.base.consequence.money.money("+", 100));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(64, 10));
talkEntry:addConsequence(npc.base.consequence.quest.quest(109, "=", 4));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(109, "=", 4));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest] Wild Animals"));
talkEntry:addResponse("I've received reports of wild animals attacking villagers of Yewdale. If you slay the animals, and bring me ten furs as evidence, Runewick shall be in your debt.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(109, "=", 5));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(109, "=", 4));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Wilde Tiere"));
talkEntry:addResponse("Mir wurde gemeldet, dass wilde Tiere die Dorfbewohner von Eibenthal angegriffen haben. Wenn ihr diese Biester erschlagt und mir zehn Felle als Bewei� bringt, w�re Runewick in eurer Schuld.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(109, "=", 5));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addCondition(npc.base.condition.quest.quest(109, "=", 4));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest] Wild Animals"));
talkEntry:addResponse("I've received reports of wild animals attacking villagers of Yewdale. If you slay the animals, and bring me ten furs as evidence, the town shall be in your debt.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(109, "=", 5));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addCondition(npc.base.condition.quest.quest(109, "=", 4));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Wilde Tiere"));
talkEntry:addResponse("Mir wurde gemeldet, dass wilde Tiere die Dorfbewohner von Eibenthal angegriffen haben. Wenn ihr diese Biester erschlagt und mir zehn Felle als Bewei� bringt, w�re Runewick in eurer Schuld.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(109, "=", 5));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(109, "=", 5));
talkEntry:addCondition(npc.base.condition.item.item(2586, "all", "<", 10));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("I receive new attack reports daily. You must protect the citizens of Yewdale by killing the animals. If you bring me ten of their furs, then I shall ensure that your efforts are recognised.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(109, "=", 5));
talkEntry:addCondition(npc.base.condition.item.item(2586, "all", "<", 10));
talkEntry:addResponse("Nahezu t�glich h�rt man von Tierangriffen. Ihr m��t die B�rger von Eibenthal besch�tzen, indem ihr die Tiere erschlagt. Wenn ihr mir zehn Felle bringt, werde ich sicherstellen, dass man an h�chster Stelle von euren Anstrengungen h�rt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addCondition(npc.base.condition.quest.quest(109, "=", 5));
talkEntry:addCondition(npc.base.condition.item.item(2586, "all", "<", 10));
talkEntry:addResponse("I receive new attack reports daily. You must protect the citizens of Yewdale by killing the animals. If you bring me ten of their furs, then I shall ensure that your efforts are recognised.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addCondition(npc.base.condition.quest.quest(109, "=", 5));
talkEntry:addCondition(npc.base.condition.item.item(2586, "all", "<", 10));
talkEntry:addResponse("Nahezu t�glich h�rt man von Tierangriffen. Ihr m��t die B�rger von Eibenthal besch�tzen, indem ihr die Tiere erschlagt. Wenn ihr mir zehn Felle bringt, werde ich sicherstellen, dass man an h�chster Stelle von euren Anstrengungen h�rt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".+");
talkEntry:addCondition(npc.base.condition.quest.quest(109, "=", 5));
talkEntry:addCondition(npc.base.condition.item.item(2586, "all", ">", 9));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You are awarded a legionaire's tower shield. You advance in Archmage Elvaine Morgan's favour."));
talkEntry:addResponse("#me bows his head respectfully: 'You have done very well, thank you. Yewdale and its citizens are safe once more. Please, take this shield as thanks for the risk you took.");
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(2586, 10));
talkEntry:addConsequence(npc.base.consequence.item.item(2448, 1, 799, 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(109, "=", 6));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("Runewick", "+", 10));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".+");
talkEntry:addCondition(npc.base.condition.quest.quest(109, "=", 5));
talkEntry:addCondition(npc.base.condition.item.item(2586, "all", ">", 9));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du erh�ltst einen Legion�rsschild. Dein Ansehen bei Erzmagier Elvaine Morgan steigt."));
talkEntry:addResponse("#me verbeugt sich respektvoll: 'Das habt ihr gut gemacht. Eibenthal und seine B�rger sind jetzt wieder sicher. Bitte nehmt diesen Schild als Dank f�r das Risiko, welches ihr in Kauf nahmt.");
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(2586, 10));
talkEntry:addConsequence(npc.base.consequence.item.item(2448, 1, 799, 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(109, "=", 6));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("Runewick", "+", 10));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".+");
talkEntry:addCondition(npc.base.condition.quest.quest(109, "=", 5));
talkEntry:addCondition(npc.base.condition.item.item(2586, "all", ">", 9));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You are awarded a legionaire's tower shield."));
talkEntry:addResponse("#me bows his head respectfully: 'You have done very well, thank you. Yewdale and its citizens are safe once more. Please, take this shield as thanks for the risk you took.");
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(2586, 10));
talkEntry:addConsequence(npc.base.consequence.item.item(2448, 1, 799, 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(109, "=", 6));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".+");
talkEntry:addCondition(npc.base.condition.quest.quest(109, "=", 5));
talkEntry:addCondition(npc.base.condition.item.item(2586, "all", ">", 9));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du erh�ltst einen Legion�rsschild."));
talkEntry:addResponse("#me verbeugt sich respektvoll: 'Das habt ihr gut gemacht. Eibenthal und seine B�rger sind jetzt wieder sicher. Bitte nehmt diesen Schild als Dank f�r das Risiko, welches ihr in Kauf nahmt.");
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(2586, 10));
talkEntry:addConsequence(npc.base.consequence.item.item(2448, 1, 799, 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(109, "=", 6));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(109, "=", 6));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("I shall not be needing your help at the moment, my friend. Go, rest. You have certainly earned it.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(109, "=", 6));
talkEntry:addResponse("Derzeit ben�tige ich eure Hilfe nicht. Ihr k�nnt euch ausruhen, das habt ihr euch verdient.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addCondition(npc.base.condition.quest.quest(109, "=", 6));
talkEntry:addResponse("I shall not be needing your help at the moment, my friend. Go, rest. You have certainly earned it.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addCondition(npc.base.condition.quest.quest(109, "=", 6));
talkEntry:addResponse("Derzeit ben�tige ich eure Hilfe nicht. Ihr k�nnt euch ausruhen, das habt ihr euch verdient.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("profession");
talkEntry:addResponse("I am a town guard. I take care of troublemakers.");
talkEntry:addResponse("I keep order 'round here, and make sure the citizens are safe.");
talkEntry:addResponse("I'm a soldier, serving here as a town guard.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("beruf");
talkEntry:addResponse("Ich bin ein W�chter. Ich k�mmere mich um Aufr�hrer.");
talkEntry:addResponse("Ich sorge f�r Ordnung hier und stelle sicher, dass die B�rger sicher schlafen k�nnen.");
talkEntry:addResponse("Ich bin ein Soldat, der hier Dienst als W�chter schiebt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("job");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("I am a town guard.");
talkEntry:addResponse("I protect Runewick and its citizens.");
talkEntry:addResponse("It's my job to keep the people safe and out of trouble.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("job");
talkEntry:addResponse("Ich bin ein W�chter.");
talkEntry:addResponse("Ich besch�tze Runewick und seine B�rger.");
talkEntry:addResponse("Es ist meine Aufgabe, die Leute zu besch�tzen und das B�se abzuwehren.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gobaith");
talkEntry:addTrigger("Gobiath");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("The people of this island were a hardy folk. Not much seemed to faze them in the past.");
talkEntry:addResponse("I liked it there. It was peaceful when it needed to be, but excitement was always just around the corner.");
talkEntry:addResponse("That island was a breeding ground for crime and sins, unfortunately.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gobaith");
talkEntry:addTrigger("Gobiath");
talkEntry:addResponse("Das Volk dieser Insel war hart im Nehmen. Nichts hat sie fr�her aus der Fassung gebracht.");
talkEntry:addResponse("Es war sch�n dort. Friedlich, aber das Abenteuer lauerte hinter jeder Hausecke.");
talkEntry:addResponse("Diese Insel war leider ein N�hrboden f�r Verbrechen und S�nden.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("my name");
talkEntry:addResponse("An honour to meet you.");
talkEntry:addResponse("A pleasure.");
talkEntry:addResponse("#me bows his head respectfully: 'Well met.'");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("mein Name");
talkEntry:addResponse("Es ist mir eine Ehre, eure Bekanntschaft zu machen.");
talkEntry:addResponse("Das Vergn�gen ist auf meiner Seite.");
talkEntry:addResponse("#me neigt respektvoll den Kopf: 'Angenehm.'");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("law");
talkEntry:addResponse("The laws are tough, but fair.");
talkEntry:addResponse("Take a look in the library, it should not be difficult to find a copy of the town's laws.");
talkEntry:addResponse("The laws are easily available. Take a look around, you'll find them eventually.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("guard");
talkEntry:addResponse("Being a guard is a rewarding job. The money is good, and it is a fine way to help the citizens.");
talkEntry:addResponse("There is no greater way for me to serve my Gods than by guarding the people.");
talkEntry:addResponse("Becoming a guard seemed like the only sensible step for me to take. Fighting is the only thing I ever learned to do well.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("criminal");
talkEntry:addTrigger("thief");
talkEntry:addTrigger("crime");
talkEntry:addTrigger("assault");
talkEntry:addTrigger("stole");
talkEntry:addResponse("It has been rather quiet today, not too much trouble around.");
talkEntry:addResponse("If you are a victim or witness of a crime, please submit a formal report to the Archmage.");
talkEntry:addResponse("The Archmage decides who investigates specific crimes. You should speak to him when you have trouble.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quiet");
talkEntry:addTrigger("bored");
talkEntry:addTrigger("peace");
talkEntry:addResponse("Trouble is always just around the corner.");
talkEntry:addResponse("Don't go thinking that you have to be the one to make some noise.");
talkEntry:addResponse("They say that it's always quiet before the storm.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Yewdale");
talkEntry:addResponse("Yewdale is a small community of peasants. Just across the bridge, follow the road. You cannot miss it.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Bridge");
talkEntry:addResponse("I guard this bridge and with it, I guard Runewick. The teleporter over there is the only way into town.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Teleport");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gesetz");
talkEntry:addResponse("GERMAN1.");
talkEntry:addResponse("GERMAN2.");
talkEntry:addResponse("GERMAN3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Wache");
talkEntry:addTrigger("W�chter");
talkEntry:addResponse("GERMAN1.");
talkEntry:addResponse("GERMAN2.");
talkEntry:addResponse("GERMAN3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Kriminell");
talkEntry:addTrigger("Dieb");
talkEntry:addTrigger("Verbrech");
talkEntry:addTrigger("Angriff");
talkEntry:addTrigger("Stehlen");
talkEntry:addResponse("GERMAN1.");
talkEntry:addResponse("GERMAN2.");
talkEntry:addResponse("GERMAN3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("ruhig");
talkEntry:addTrigger("langweilig");
talkEntry:addTrigger("Frieden");
talkEntry:addResponse("GERMAN1.");
talkEntry:addResponse("GERMAN2.");
talkEntry:addResponse("GERMAN3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Eibenthal");
talkEntry:addResponse("Eibenthal ist eine kleine Gemeinde von Bauern. �berquert die Br�cke und folgt der Stra�e - ihr k�nnt es nicht verfehlen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Br�cke");
talkEntry:addResponse("Ich bewache diese Br�cke und mit ihr bewache ich Runewick. Der Teleporter dort dr�ben ist der einzige Weg in die Stadt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Teleport");
talkEntry:addResponse("");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("archmage");
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Erzmagier");
talkEntry:addResponse("GERMAN1.");
talkEntry:addResponse("GERMAN2.");
talkEntry:addResponse("GERMAN3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elvaine");
talkEntry:addTrigger("Morgan");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elvaine");
talkEntry:addTrigger("Morgan");
talkEntry:addResponse("GERMAN1.");
talkEntry:addResponse("GERMAN2.");
talkEntry:addResponse("GERMAN3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Runewick");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Runewick");
talkEntry:addResponse("GERMAN1.");
talkEntry:addResponse("GERMAN2.");
talkEntry:addResponse("GERMAN3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Valerio");
talkEntry:addTrigger("Guilianni");
talkEntry:addTrigger("Don");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("I overheard the real name of the Don's father is John. That makes the Don a John-son, har, har!");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Valerio");
talkEntry:addTrigger("Guilianni");
talkEntry:addTrigger("Don");
talkEntry:addResponse("Ich habe geh�rt der echte Name des Vaters des Dons w�re John. Das w�rde den Don zum einem Johnson machen, har, har!");
talkEntry:addResponse("GERMAN2.");
talkEntry:addResponse("GERMAN3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Galmair");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Galmair is far away. And that's good.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Galmair");
talkEntry:addResponse("Galmair ist fern von hier. Und das ist auch gut so.");
talkEntry:addResponse("GERMAN2.");
talkEntry:addResponse("GERMAN3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Queen");
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("K�nigin");
talkEntry:addResponse("GERMAN1.");
talkEntry:addResponse("GERMAN2.");
talkEntry:addResponse("GERMAN3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("rosaline");
talkEntry:addTrigger("edwards");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("rosaline");
talkEntry:addTrigger("edwards");
talkEntry:addResponse("GERMAN1.");
talkEntry:addResponse("GERMAN2.");
talkEntry:addResponse("GERMAN3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Cadomyr");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Cadomyr");
talkEntry:addResponse("GERMAN1.");
talkEntry:addResponse("GERMAN2.");
talkEntry:addResponse("GERMAN3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("albar");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("I've been to Albar once before. I found it to be a rather...backward place.");
talkEntry:addResponse("Albar is a very corrupt land, from what I've heard.");
talkEntry:addResponse("Albarian commoners seem pleasant enough. Their women are rather reserved though.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("albar");
talkEntry:addResponse("GERMAN1.");
talkEntry:addResponse("GERMAN2.");
talkEntry:addResponse("GERMAN3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("gynk");
talkEntry:addTrigger("gync");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Ah, yes...Gynk, the 'Pool of Sin'.");
talkEntry:addResponse("I've never been to Gynk. They tell me that you will never see more criminals running 'round than there, though.");
talkEntry:addResponse("The Thieves' Guilds of Gynk have far too much influence for my liking. Power must be held by the authorities, not by criminals.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("gync");
talkEntry:addTrigger("gynk");
talkEntry:addResponse("GERMAN1.");
talkEntry:addResponse("GERMAN2.");
talkEntry:addResponse("GERMAN3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("salkama");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Ahh...Salkamar. It is my homeland, did you know?");
talkEntry:addResponse("I was born and raised in the lands of Salkamar. You will struggle to find a more honourable and loyal people than we.");
talkEntry:addResponse("You will never find a greater army than that of Salkamar. Its leaders are cunning, its men loyal, and its ranks ordered.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("salkama");
talkEntry:addResponse("GERMAN1.");
talkEntry:addResponse("GERMAN2.");
talkEntry:addResponse("GERMAN3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("god");
talkEntry:addResponse("Zhambra and Malachin are my patron deities.");
talkEntry:addResponse("I am protected by the Lords Malachin and Zhambra in battle. They have kept me safe so far.");
talkEntry:addResponse("I worship Zhambra and Malachin.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gott");
talkEntry:addTrigger("G�tter");
talkEntry:addResponse("GERMAN1.");
talkEntry:addResponse("GERMAN2.");
talkEntry:addResponse("GERMAN3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Adron");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("I respect His followers, but I do not worship that God.");
talkEntry:addResponse("I confess to knowing little about Adron. I hear his followers frequent the tavern, though.");
talkEntry:addResponse("You would be better off speaking to someone else about that God, I'm certain there are followers nearby.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Adron");
talkEntry:addResponse("GERMAN1.");
talkEntry:addResponse("GERMAN2.");
talkEntry:addResponse("GERMAN3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Bragon");
talkEntry:addTrigger("Br�gon");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("I respect His followers, but I do not worship that God.");
talkEntry:addResponse("I confess to knowing little about the God of Fire.");
talkEntry:addResponse("You would be better off speaking to someone else about that God, I'm certain there are followers nearby.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Bragon");
talkEntry:addTrigger("Br�gon");
talkEntry:addResponse("GERMAN1.");
talkEntry:addResponse("GERMAN2.");
talkEntry:addResponse("GERMAN3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Cherga");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("I respect Her followers, but I do not worship that Goddess.");
talkEntry:addResponse("I confess to knowing little about Cherga or those who worship Her.");
talkEntry:addResponse("You would be better off speaking to someone else about that Goddess, I'm certain there are followers nearby.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Cherga");
talkEntry:addResponse("GERMAN1.");
talkEntry:addResponse("GERMAN2.");
talkEntry:addResponse("GERMAN3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elara");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("I respect Her followers, but I do not worship that Goddess.");
talkEntry:addResponse("I confess to knowing little about Elara.");
talkEntry:addResponse("You would be better off speaking to someone else about that Goddess, I'm certain there are followers nearby.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elara");
talkEntry:addResponse("GERMAN1.");
talkEntry:addResponse("GERMAN2.");
talkEntry:addResponse("GERMAN3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Eldan");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("I respect His followers, but I do not worship that God.");
talkEntry:addResponse("I confess to knowing little about Eldan.");
talkEntry:addResponse("You would be better off speaking to someone else about that God, I'm certain there are followers nearby.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Eldan");
talkEntry:addResponse("GERMAN1.");
talkEntry:addResponse("GERMAN2.");
talkEntry:addResponse("GERMAN3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Findari");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("I respect Her followers, but I do not worship that Goddess.");
talkEntry:addResponse("I confess to knowing little about Findari.");
talkEntry:addResponse("You would be better off speaking to someone else about that Goddess, I'm certain there are followers nearby.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Findari");
talkEntry:addResponse("GERMAN1.");
talkEntry:addResponse("GERMAN2.");
talkEntry:addResponse("GERMAN3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Irmorom");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("I respect His followers, but I do not worship that God.");
talkEntry:addResponse("I confess to knowing little about Irmorom. Speak to some Dwarves, that would be your best bet.");
talkEntry:addResponse("You would be better off speaking to someone else about that God, I'm certain there are followers nearby.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Irmorom");
talkEntry:addResponse("GERMAN1.");
talkEntry:addResponse("GERMAN2.");
talkEntry:addResponse("GERMAN3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Malachin");
talkEntry:addTrigger("Malach�n");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Malachin is the God of Battle. He watches over all those who fight with honour.");
talkEntry:addResponse("#me closes his eyes and tilts his head upward, whispering a silent prayer.");
talkEntry:addResponse("The God of Battle is one of my patron Gods. It is He who ensures that my blade swings true.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Malachin");
talkEntry:addTrigger("Malach�n");
talkEntry:addResponse("GERMAN1.");
talkEntry:addResponse("GERMAN2.");
talkEntry:addResponse("GERMAN3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Moshran");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("#me spits on the ground, expressing his distaste.");
talkEntry:addResponse("The followers of the Blood-God deserve whatever cruel, twisted fate awaits them.");
talkEntry:addResponse("I would not mention that name so freely, if I were you.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Moshran");
talkEntry:addResponse("GERMAN1.");
talkEntry:addResponse("GERMAN2.");
talkEntry:addResponse("GERMAN3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Nargun");
talkEntry:addTrigger("Narg�n");
talkEntry:addTrigger("Narg�n");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("His followers are all fools and madmen.");
talkEntry:addResponse("I do not have time for the worshippers of Nargun.");
talkEntry:addResponse("Order is something that I greatly value. And something that the God of Chaos does not provide.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Nargun");
talkEntry:addTrigger("Narg�n");
talkEntry:addTrigger("Narg�n");
talkEntry:addResponse("GERMAN1.");
talkEntry:addResponse("GERMAN2.");
talkEntry:addResponse("GERMAN3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Oldra");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("I respect Her followers, but I do not worship that Goddess.");
talkEntry:addResponse("I confess to knowing little about Oldra. Perhaps a druid could inform you better.");
talkEntry:addResponse("You would be better off speaking to someone else about that Goddess, I'm certain there are followers nearby.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Oldra");
talkEntry:addResponse("GERMAN1.");
talkEntry:addResponse("GERMAN2.");
talkEntry:addResponse("GERMAN3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ronagan");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("#me frowns lightly, 'His followers are thieves, petty criminals. Nothing but lowlife scum.'");
talkEntry:addResponse("Ah, the God of Thieves. Not a supporter of my work, as I understand it. He keeps me in a job though, I suppose.");
talkEntry:addResponse("I am paid to deal with Ronagan's followers. You'll find plenty of them behind bars. He causes far more harm than good, in my humble opinion.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ronagan");
talkEntry:addResponse("GERMAN1.");
talkEntry:addResponse("GERMAN2.");
talkEntry:addResponse("GERMAN3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Sirani");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("I respect Her followers, but I do not worship that Goddess.");
talkEntry:addResponse("I confess to knowing little about Sirani.");
talkEntry:addResponse("You would be better off speaking to someone else about that Goddess, I'm certain there are followers nearby.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tanora");
talkEntry:addTrigger("Zelphia");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("I respect Her followers, but I do not worship that Goddess.");
talkEntry:addResponse("I confess to knowing little about that Goddess.");
talkEntry:addResponse("You would be better off speaking to someone else about that Goddess, I'm certain there are followers nearby.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tanora");
talkEntry:addTrigger("Zelphia");
talkEntry:addResponse("GERMAN1.");
talkEntry:addResponse("GERMAN2.");
talkEntry:addResponse("GERMAN3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ushara");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("I respect Her followers, but I do not worship that Goddess.");
talkEntry:addResponse("I confess to knowing little about Ushara. I recommend speaking with an Elf about such matters");
talkEntry:addResponse("You would be better off speaking to someone else about that Goddess, I'm certain there are followers nearby.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ushara");
talkEntry:addResponse("GERMAN1.");
talkEntry:addResponse("GERMAN2.");
talkEntry:addResponse("GERMAN3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Zhambra");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("The God of Friendship and Loyalty is one of my patron deities. He keeps me safe, provided I stay faithful.");
talkEntry:addResponse("I worship Zhambra and eagerly await the day He leads me to the paradise.");
talkEntry:addResponse("Loyalty is vital for a man in my position. Lord Zhambra keeps me honest.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Zhambra");
talkEntry:addResponse("GERMAN1.");
talkEntry:addResponse("GERMAN2.");
talkEntry:addResponse("GERMAN3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("what sell");
talkEntry:addTrigger("what buy");
talkEntry:addTrigger("list wares");
talkEntry:addTrigger("price of");
talkEntry:addResponse("My apologies, but I am on duty. I cannot trade with you at the moment.");
talkEntry:addResponse("I do not wish to trade with you.");
talkEntry:addResponse("#me holds his hand up, shaking his head, 'Not while I'm on duty, thank you.'");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("was verkauf");
talkEntry:addTrigger("was kauf");
talkEntry:addTrigger("warenliste");
talkEntry:addTrigger("preis von");
talkEntry:addResponse("GERMAN1.");
talkEntry:addResponse("GERMAN2.");
talkEntry:addResponse("GERMAN3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("tell something");
talkEntry:addResponse("Hm. You look like you could wield a weapon. Perhaps the guard Archmage would be interested in your services.");
talkEntry:addResponse("Have you read the town's laws? It shouldn't be too hard finding a copy.");
talkEntry:addResponse("I find the tower shield from Salkamar, my homeland, to be the most effective. Not too many weapons can find their way around one of them, I tell you.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("erz�hl was");
talkEntry:addTrigger("erz�hl etwas");
talkEntry:addResponse("GERMAN1.");
talkEntry:addResponse("GERMAN2.");
talkEntry:addResponse("GERMAN3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Brassius");
talkEntry:addTrigger("Meres");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("My apologies, I am on duty. Perhaps someone else can help you.");
talkEntry:addResponse("I should be getting back to my work.");
talkEntry:addResponse("I am quite busy at the moment, sorry.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Brassius");
talkEntry:addTrigger("Meres");
talkEntry:addResponse("GERMAN1.");
talkEntry:addResponse("GERMAN2.");
talkEntry:addResponse("GERMAN3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Yes");
talkEntry:addResponse("My apologies, I am on duty. Perhaps someone else can help you.");
talkEntry:addResponse("I should be getting back to my work.");
talkEntry:addResponse("I am quite busy at the moment, sorry.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ja");
talkEntry:addResponse("GERMAN1.");
talkEntry:addResponse("GERMAN2.");
talkEntry:addResponse("GERMAN3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("No");
talkEntry:addResponse("My apologies, I am on duty. Perhaps someone else can help you.");
talkEntry:addResponse("I should be getting back to my work.");
talkEntry:addResponse("I am quite busy at the moment, sorry.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Nein");
talkEntry:addResponse("GERMAN1.");
talkEntry:addResponse("GERMAN2.");
talkEntry:addResponse("GERMAN3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".*");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.chance.chance(20));
talkEntry:addResponse("I should really be returning to my work.");
talkEntry:addResponse("If the Archmage catches me chatting away, he will not be pleased.");
talkEntry:addResponse("Please, you shall get me into trouble if I am caught standing here chatting.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".*");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addCondition(npc.base.condition.chance.chance(20));
talkEntry:addResponse("Ich sollte mich wieder um meinen Dienst k�mmern.");
talkEntry:addResponse("Wenn der Erzmagier mich dabei erwischt, wie ich herumkl�ne, wird er nicht zufrieden sein.");
talkEntry:addResponse("Bitte, ich bekomme noch �rger, wenn man mich hier tratschen sieht.");
talkingNPC:addTalkingEntry(talkEntry);
end;
talkingNPC:addCycleText("#me r�ckt den Kinnriemen seines Helmes zurecht.", "#me adjusts the chin strap on his helm.");
talkingNPC:addCycleText("#me hustet hinter vorgehaltener Hand.", "#me coughs into a closed fist.");
talkingNPC:addCycleText("#me schaut in seinen K�cher.", "#me glances into his quiver.");
talkingNPC:addCycleText("#me zieht die Sehne seines Bogens nach.", "#me tightens the string of his bow.");
talkingNPC:addCycleText("#me legt eine Hand auf den Griff seines ungezogenen Schwertes.", "#me places a hand upon the hilt of his sheathed blade.");
talkingNPC:addCycleText("#me schaut sich die Gegend um ihn herum an.", "#me's eyes wander over the scene before him.");
talkingNPC:addCycleText("#me schaut d�ster drein.", "#me looks around suspiciously.");
talkingNPC:addCycleText("Dann geht mal weiter.", "Move along, then.");
talkingNPC:addCycleText("Macht hier keinen �rger.", "Don't go causing any trouble 'round here.");
talkingNPC:addCycleText("Wir sehen alles.", "We're watching.");
talkingNPC:addCycleText("Bleibt nicht l�nger auf der Br�cke als n�tig.", "Don't stay on the bridge longer than necessary.");
mainNPC:addLanguage(0);
mainNPC:addLanguage(1);
mainNPC:setDefaultLanguage(0);
mainNPC:setLookat("Dieser NPC ist Brassius Meres der W�chter.", "This NPC is Brassius Meres the Guard.");
mainNPC:setUseMessage("Nehmt augenblicklich eure H�nde von mir!", "Remove your hands from me this instant!");
mainNPC:setConfusedMessage("#me schaut verwirrt.", "#me looks around confused.");
mainNPC:setEquipment(1, 0);
mainNPC:setEquipment(3, 362);
mainNPC:setEquipment(11, 55);
mainNPC:setEquipment(5, 2708);
mainNPC:setEquipment(6, 2708);
mainNPC:setEquipment(4, 528);
mainNPC:setEquipment(9, 2113);
mainNPC:setEquipment(10, 697);
mainNPC:setAutoIntroduceMode(true);

mainNPC:initDone();
end;

function receiveText(texttype, message, speaker) mainNPC:receiveText(speaker, message); end;
function nextCycle() mainNPC:nextCycle(); end;
function lookAtNpc(char, mode) mainNPC:lookAt(char, mode); end;
function useNPC(char, counter, param) mainNPC:use(char); end;
initNpc();
initNpc = nil;
-- END