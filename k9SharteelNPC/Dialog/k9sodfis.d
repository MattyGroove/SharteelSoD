BEGIN k9sodfis


IF ~!InParty("Sharteel") Global("k9Sharteel_Guard","GLOBAL",0)~ THEN BEGIN 0

SAY ~Hmm...Shar-Teel. Nasty one she is. Best you watch yourself 'round her.~
+~StateCheck("k9sodfis",STATE_CHARMED)~+ ~Hey friend, I know this is unusual but I need a favor. Eltan's tasked me with bringing her before him. Could you maybe leave her in my care?~ GOTO 5
++ ~I need to talk to her.~ GOTO 1
++ ~I need her to be freed. Immediately.~ GOTO 2
END

IF ~~ THEN BEGIN 1

SAY ~She ain't to be going nowhere of course, but if you just want to talk ye can.~ IF ~~ THEN DO ~ SetGlobal("k9Sharteel_Talk","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 2

SAY ~Heh, good one. From what I hear Duke Eltan's taken a personal interest in this one. She ain't going free until he says so.~
+~StateCheck("k9sodfis",STATE_CHARMED)~+ ~Hey friend, I know this is unusual but I need a favor. Eltan's tasked me with bringing her before him. Could you maybe leave her in my care?~ GOTO 5
+~OR(2) ReputationGT(Player1,16) CheckStatGT(Player1,14,CHR)~+ ~I'm the hero of Baldur's Gate. Perhaps you've heard of me? Eltan's tasked me with bringing her before him. Do you want to be the one to keep him waiting?~ GOTO 3
+~CheckStatGT(Player1,14,STR)~+ ~I'm the hero of Baldur's Gate. Perhaps you've heard of me? What do you think I do to people who don't give me what you want?~ GOTO 4
+~PartyHasItem("k9eltle2") CheckStatGT(Player1,5,CHR)~+ ~Then I've got a letter for you to read.~ GOTO 3
++ ~Fine, I'll just go get permission.~ DO ~AddJournalEntry(@665567, QUEST)~ EXIT
END

IF ~~ THEN BEGIN 3

SAY ~Hmmm...fair enough. Ok, take her with ye then.~ IF ~~ THEN DO ~SetGlobal("k9shar_unlock_door","GLOBAL",1) SetGlobal("k9Sharteel_Guard","GLOBAL",1) SetGlobal("k9Sharteel_Guard_FREE","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 4

SAY ~Hmmm...no need for a fight. Fine, take her with ye then.~ IF ~~ THEN DO ~SetGlobal("k9shar_unlock_door","GLOBAL",1) SetGlobal("k9Sharteel_Guard","GLOBAL",1) SetGlobal("k9Sharteel_Guard_FREE","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 5

SAY ~Hmmm...ok friend. Take her with ye then.~ IF ~~ THEN DO ~SetGlobal("k9shar_unlock_door","GLOBAL",1) SetGlobal("k9Sharteel_Guard","GLOBAL",1) SetGlobal("k9Sharteel_Guard_FREE","GLOBAL",1)~ EXIT
END


