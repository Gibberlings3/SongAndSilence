BEGIN ~A!RAOUL~

  IF ~NumTimesTalkedTo(0)~ THEN BEGIN FirstMeet SAY @0
    IF ~~ THEN REPLY @1 GOTO Intro
    IF ~~ THEN REPLY @2 GOTO NoName
    IF ~~ THEN REPLY @3 GOTO Intro
    IF ~~ THEN REPLY @4 GOTO NoName
  END
  
  IF ~NumTimesTalkedToGT(0)~ THEN BEGIN NotFirstMeet SAY @5
    IF ~~ THEN REPLY @6 GOTO Bye
    IF ~AreaCheck("ar0500")~ THEN REPLY @7 DO ~StartStore("A!RAOUL2",LastTalkedToBy())~ EXIT
    IF ~!AreaCheck("ar0500")~ THEN REPLY @7 DO ~StartStore("A!RAOUL",LastTalkedToBy())~ EXIT
    IF ~~ THEN REPLY @8 EXIT
    IF ~AreaCheck("ar0500")~ THEN REPLY @9 DO ~StartStore("A!RAOUL2",LastTalkedToBy())~ EXIT
    IF ~!AreaCheck("ar0500")~ THEN REPLY @9 DO ~StartStore("A!RAOUL",LastTalkedToBy())~ EXIT
    IF ~~ THEN REPLY @10 GOTO Rumours
  END
  
  IF ~~ THEN BEGIN Intro SAY @11
    IF ~~ THEN REPLY @6 GOTO Bye
    IF ~~ THEN REPLY @12 GOTO Wares
    IF ~~ THEN REPLY @8 EXIT
    IF ~~ THEN REPLY @10 GOTO Rumours
  END
  
  IF ~~ THEN BEGIN NoName SAY @13
    IF ~~ THEN REPLY @6 GOTO Bye
    IF ~~ THEN REPLY @12 GOTO Wares
    IF ~~ THEN REPLY @8 EXIT
    IF ~~ THEN REPLY @10 GOTO Rumours
  END

  
  IF ~~ THEN BEGIN Wares SAY @14
    IF ~AreaCheck("ar0500")~ THEN REPLY @15 DO ~StartStore("A!RAOUL2",LastTalkedToBy())~ EXIT
    IF ~!AreaCheck("ar0500")~ THEN REPLY @15 DO ~StartStore("A!RAOUL",LastTalkedToBy())~ EXIT
    IF ~AreaCheck("ar0500")~ THEN REPLY @16 DO ~StartStore("A!RAOUL2",LastTalkedToBy())~ EXIT
    IF ~!AreaCheck("ar0500")~ THEN REPLY @16 DO ~StartStore("A!RAOUL",LastTalkedToBy())~ EXIT
    IF ~~ THEN REPLY @17 EXIT
    IF ~AreaCheck("ar0500")~ THEN REPLY @18 DO ~StartStore("A!RAOUL2",LastTalkedToBy())~ EXIT
    IF ~!AreaCheck("ar0500")~ THEN REPLY @18 DO ~StartStore("A!RAOUL",LastTalkedToBy())~ EXIT
    IF ~~ THEN REPLY @19 GOTO Rumours
  END
  
  IF ~~ THEN BEGIN Rumours SAY @20
    IF ~!AreaCheck("ar0500")~ THEN GOTO rumor_bg
    IF ~AreaCheck("ar0500")~ THEN GOTO rumor_bg2
  END
  
  IF ~~ THEN BEGIN rumor_bg2 SAY @21 = @22 = @23 = @24
    IF ~~ THEN GOTO rumor_end
  END
  
  IF ~~ THEN BEGIN rumor_bg SAY @27 = @28 = @29 = @30
    IF ~~ THEN GOTO rumor_end
  END
  
  IF ~~ THEN BEGIN rumor_end SAY @25
    IF ~~ THEN EXIT
  END
  
  IF ~~ THEN BEGIN Bye SAY @26
    IF ~~ THEN EXIT
  END
