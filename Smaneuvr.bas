20000 REM Static Maneuver Table
20005 RESTORE 20100:GOTO 20040
20010 RESTORE 20200:GOTO 20040
20015 RESTORE 20300:GOTO 20040
20020 RESTORE 20400:GOTO 20040
20025 RESTORE 20500:GOTO 20040
20030 RESTORE 20600:GOTO 20040
20040 RANDOMIZE TIMER
20045 INPUT "Any other modifiers (positive increases chance of success)";I:MD=MD+I
20050 INPUT "What is maneuver roll (open-ended)";I:IF I=0 THEN GOSUB 20090
20055 MD=MD+I:IF MD>200 THEN MD=200
20060 READ I:READ M$:READ SUC:IF MD>I THEN GOTO 20060
20065 CHAIN "merp",6800,ALL
20090 ROLL=INT((RND*100)+.5)
20091 I=ROLL:IF I<96 AND I>5 THEN RETURN
20092 IF I<6 THEN GOTO 20096
20093 ROLL=INT((RND*100)+.5):I=I+ROLL
20094 IF ROLL>95 THEN GOTO 20093
20095 RETURN
20096 ROLL=INT((RND*100)+.5):I=I-ROLL
20097 IF ROLL>95 THEN GOTO 20096
20098 RETURN
20100 DATA -26,"BLUNDER! You fail spectacularly. If possible, your static action has the        opposite effect from what you intended",0
20105 DATA 4,"ABSOLUTE FAILURE: Utter incompetence causes a mental lapse. Any static actions  attempted during the next 10 min (60 rounds) will result in failure",0
20110 DATA 75,"FAILURE: You have failed. You may not try again the same static acion in the    same place for 1 day",0
20115 DATA 90,"PARTIAL SUCCESS: If partial success is possible, you accomplish 2-% of your     static action. You may not try the same static action in the same place for 1   hour",0
20120 DATA 110,"NEAR SUCCESS: If partial success is possible, you accomplish half of your staticaction. You may try again after 3 rounds of contemplation",0
20125 DATA 175,"SUCCESS: Your static action is successful",1
20130 DATA 200,"ABSOLUTE SUCCESS: Your static action is successful and you get a +20 bonus to   further static actions for the next 10 minutes (60 rounds)",1
20200 DATA -26,"BLUNDER! Your blatant attempt at coercion alienates your audience. They will do the opposite of what you were attempting to get them to do. Until a change in   circumstances occurs, any influence attempts by you will fail",0
20205 DATA 4,"ABSOLUTE FAILURE: Your audience rejects you, causing you to lose confidence and your air of authority. Any influence attempts during the next hour will result  in failure",0
20210 DATA 75,"FAILURE: You have failed. Your audience will not be receptive to any of your    attempts at influence for at least 1 day",0
20215 DATA 90,"PARTIAL SUCCESS: Your audience is still listening. You can continue to try to   influence them",0
20220 DATA 110,"NEAR SUCCESS: Keep talking, your audience is becoming more friendly. Modify yournext roll by +20",0
20225 DATA 175,"SUCCESS: You have influenced your audience",1
20230 DATA 200,"ABSOLUTE SUCCESS: Not only did you influence your audience, but you receive a   +50 bonus on influencing them until you do something to cause them to lose      confidence in you",1
20300 DATA -26,"BLUNDER! If picking a lock, your lockpick is broken and stuck in the lock,      rendering it unopenable until removed (this requires another roll to pick the   lock by someone other than you). Any traps are set off",0
20305 DATA 4,"ABSOLUTE FAILURE: You have developed a mental block on this lock/trap and will  automatically fail on any further attempts to pick/disarm it. There is a 50%    chance that any traps will be activated",0
20310 DATA 75,"FAILURE: Currently you have no further ideas on how to pick/disarm this lock/   trap. After 24 hours you may make a perception roll and if it succeeds you may  make another attempt. There is a 20% chance that any traps will be activated",0
20315 DATA 90,"PARTIAL SUCCESS: You have figured out part of the lock/trap and have an         intuitive feel for the rest. Do something else for 10 minutes and then you can  try again",0
20320 DATA 110,"NEAR SUCCESS: You almost had it. If you spend 2 rounds thinking about your      attempt (no other activity), you may try again with an extra +5 bonus",0
20325 DATA 175,"SUCCESS: The lock/trap is picked/disarmed; +50 on any further attempts to pick/ disarm this lock/trap",1
20330 DATA 200,"ABSOLUTE SUCCESS: In the future you may automatically pick/disarm (takes one    round) this lock/trap or any identical lock/trap. +10 to attempts on similar    locks/traps in the future",1
20400 DATA -26,"BLUNDER! Whatever spells or abilities are in the item or on the rune paper are  activated against you. Any runes on rune paper are gone, and you   will never beable to use any of the spells or abilities contained in the item",0
20405 DATA 4,"ABSOLUTE FAILURE: You have developed a mental block on this rune/item and will  automatically fail on any further attempts to read or use it. There is a 50%    chance that a spell will be activated",0
20410 DATA 75,"FAILURE: Currently you have no further ideas on how to read/use this rune/item. After you have gone up a level, you may make another attempt to read/use this   rune/item. There is a 20% chance that a spell will be activated",0
20415 DATA 90,"PARTIAL SUCCESS: You learn how many spells and abilities the item contains. You learn one (at random) and have a 20% chance of learning each other. However you may not yet read/use it, and you may not make another attempt for 1 week",0
20420 DATA 110,"NEAR SUCCESS: You learn how many spells and abilities the item contains. You    learn one (at random) and have a 50% chance of learning each other. If you wait 24 hours, you may try again with an extra +10 bonus",0
20425 DATA 175,"SUCCESS: You learn one of the spells or abilities in an item or on rune paper,  and you may use it when you hold the item or rune paper. You have a 50% chance  of knowing each other ability, and may roll for each at +20",1
20430 DATA 200,"ABSOLUTE SUCCESS: You learn all of the spells and abilities in an item or on a  piece of rune paper, and you may use them whenever you hold the item or rune    paper",1
20500 DATA -26,"BLUNDER! You not only fail to get any valid information but you pick up invalid information due to a misconception or improperly sense details. You may never   try again on the same topic in the same area",0
20505 DATA 4,"ABSOLUTE FAILURE: Confusion causes a mental lapse. This perception roll and any perception rolls made during the next 10 minutes will result in failure",0
20510 DATA 75,"FAILURE: You gain no information, but you think that you have learned everythingavailable. You may not try again on the same topic in the same area for 1 day",0
20515 DATA 90,"PARTIAL SUCCESS: You gain some of the information on the topic that required theperception roll, but you are not aware that you missed something. You may not   try again on the same topic in the same area for 1 hour",0
20520 DATA 110,"NEAR SUCCESS: You gain some of the information on the topic that required the   perception roll, and you are aware that you missed something. Think about it for3 rounds, and you may try again",0
20525 DATA 175,"SUCCESS: You gain all of the information on the topic that required the         perception roll",1
20530 DATA 200,"ABSOLUTE SUCCESS: You are aware of everything in the area you are examining.    This includes information on topics other than the one requiring the perception roll",1
20600 DATA 75,"FAILURE: The pursued group have shaken off the pursuers",0
20605 DATA 90,"PARTIAL SUCCESS: Increase the distance between groups by the movement rate of   the pursued group",0
20610 DATA 110,"NEAR SUCCESS: Increase the distance between groups by 200'",0
20615 DATA 200,"SUCCESS: Modify the distance between groups by the difference in their movement rates",1
