
(defrule NABOO
(or
    (Aw, too soon? "     ")
    (What genre? "Non-fiction")
    (How do you spend your time together? "Long talks")
    (Does blue milk count? "No")
    (Sounds like you're up for an adventure. "Those days are long behind us.")
    (Would you kiss your sibling to make them jealous? "No")
)
=>
(assert (planet NABOO)))


(defrule MUSTAFAR
(or
    (Who would you never do business with? "A talking squid")
    (Whats the one thing you cant travel without? "A GoPro")
    (What are you ordering? "Fireball shots")
    (Podracers or lavaracers? "Lavaracers")
    (How do you want to die? "In a fiery explosion")
)
=>
(assert (planet MUSTAFAR)))


(defrule CORUSCANT
(or
    (Who would you never do business with? "Dugs or Toydarians")
    (Whats the one thing you cant travel without? "My brand-new hologram cell phone")
    (Pick your poison. "Death Sticks")
    (At clubs or bars? "Clubs")
    (Clear your mind you must. How do you unwind? "Oil baths")
    (What type? "Pop")
    (John Williams or Danny Elfman? "Danny Elfman")
    (True or false? Impossible to see, the future is. "True")
    (Are you a glutton for pain? "No")
)
=>
(assert (planet CORUSCANT)))


(defrule RYLOTH
(or
    (Whats the one thing you cant travel without? "My camera")
    (What genre? "Sci-fi fantasy")
    (Whose painting would you frame on your wall? "M.C.Escher")
    (Pick your poison. "Rhyll")
    (How do you spend your time together? "Playing video games")
    (Sounds like you're up for an adventure. "Yes")
    (True or false? Impossible to see, the future is. "False")
    (You're gonna regret that "     ")
)
=>
(assert (planet RYLOTH)))


(defrule MON_CALA
(or
    (Whose painting would you frame on your wall? "Hokusal")
    (Sounds like you need to commune with nature. "Ok but I'm not sleeping outside, right?")
    (How do you spend your time together? "Eat sushi")
    (Choose an animal. "Squid")
    (What are you ordering? "Mai Tai")
    (Which motto do you live by? "Theres always a bigger fish.")
    (It's a trap! "     ")
    (Before your house burned down, what was your favourite toy as a kid? "Super Soaker")
)
=>
(assert (planet "MON CALA")))


(defrule ENDOR
(or
    (Sounds like you need to commune with nature. "Yes")
    (Choose an animal. "Bear")
    (What are you ordering? "An oaky scotch")
    (Clear your mind you must. How do you unwind? "Braid my hair")
    (John Williams or Danny Elfman? "John Williams")
    (Does a 'wretched a hive of villainy and scum' sound like a good time to you?  "No")
    (Lightspeed! "     ")
)
=>
(assert (planet ENDOR)))


(defrule MALASTARE
(or
    (Describe your friends. "A bunch of scruffy-looking nerfherders")
    (Pick your poison. "Glyterrill")
    (What type? "Rock")
    (Podracers or lavaracers? "Podracers")
    (How do you want to die? "In a knife fight")
    (What would you rather blast? "A Dug")
    (You may want to rethink your life choices. "Your jedi mind tricks don't work on me.")
    (Finish the phrase: 'Fear leads to anger. Anger leads to hate. Hate leads to...'  "Revange")
    (Does a 'wretched a hive of villainy and scum' sound like a good time to you?  "Yes")
    (Before your house burned down, what was your favourite toy as a kid? "An RC Car")
)
=>
(assert (planet MALASTARE)))


(defrule ILUM
(or
    (What color is your lightaber? "Blue")
    (What would you rather blast? "A Wampa")
    (Finish the phrase: 'Fear leads to anger. Anger leads to hate. Hate leads to...'  "Suffering")
    (What about Adegan crystals? "Now you're talking!")
    (Don't forget your tauntaun! "     ")
    (Before your house burned down, what was your favourite toy as a kid? "A chemistry set")
    (I love you "I know")
)
=>
(assert (planet ILUM)))


(defrule JAKKU
(or
    (What color is your lightaber? "Red")
    (What are you ordering? "Knockback rum")
    (Do you play or watch? "Watch")
    (What would you rather blast? "Womp rats")
    (Searching or scavenging? "Scavenging")
    (Gungans no liking hot, dry weather. "     ")
    (From what? "Don't worry about it.")
    (...but weren't you mildly relieved it meant you finally got to fly away? "No, I love living in a remote desert")
    (Which fate would you rather be dealt? "Being slowly digested for 1,000 years")
)
=>
(assert (planet JAKKU)))


(defrule Search_your_feeling_why_are_you_traveling
=>
(bind ?answer (m "Search your feelings. Why are you traveling? " "Vacation Now that's a word I haven't heard in a long long time." "I just want to teleport off this rock."))
(assert (Search your feelings. Why are you traveling? ?answer)))


(defrule What_could_you_use_a_break_from
(Search your feelings. Why are you traveling? "Vacation Now that's a word I haven't heard in a long long time.")
=>
(bind ?answer (m "What could you use a break from? " "The same faces at the cantina" "The city" "Work"))
(assert (What could you use a break from? ?answer)))


(defrule What_line_of_work_are_you_in
(What could you use a break from? "Work")
=>
(bind ?answer (m "What line of work are you in?" "Business" "Retail" "Creative field"))
(assert (What line of work are you in ?answer)))


(defrule Who_would_you_never_do_business_with
(What line of work are you in "Business")
=>
(bind ?answer (m "Who would you never do business with?" "Alderaan" "A talking squid" "Dugs or Toydarians"))
(assert (Who would you never do business with? ?answer)))

(defrule Aw_too_soon
(Who would you never do business with? "Alderaan")
=>
(bind ?answer (m "Aw, too soon?" "     "))
(assert (Aw, too soon? ?answer)))


(defrule Whats_the_one_thing_you_cant_travel_without
(What line of work are you in "Retail")
=>
(bind ?answer (m "Whats the one thing you cant travel without?" "A GoPro" "A good book" "My camera" "My brand-new hologram cell phone"))
(assert (Whats the one thing you cant travel without? ?answer)))


(defrule What_genre
(Whats the one thing you cant travel without? "A good book")
=>
(bind ?answer (m "What genre?" "Non-fiction" "Sci-fi fantasy"))
(assert (What genre? ?answer)))


(defrule What_are_you_more_inspired_by
(What line of work are you in "Creative field")
=>
(bind ?answer (m "What are you more inspired by?" "Great artists before me" "Posters with eagles and inpirational quotes"))
(assert (What are you more inspired by? ?answer)))


(defrule Whose_painting_would_you_frame_on_your_wall
(What are you more inspired by? "Great artists before me")
=>
(bind ?answer (m "Whose painting would you frame on your wall?" "M.C.Escher" "Hokusal"))
(assert (Whose painting would you frame on your wall? ?answer)))


(defrule Sounds_like_you_need_to_commune_with_nature
(What could you use a break from? "The city")
=>
(bind ?answer (m "Sounds like you need to commune with nature." "Yes" "Ok but I'm not sleeping outside, right?"))
(assert (Sounds like you need to commune with nature. ?answer)))


(defrule Are_you_self-destructive
(What could you use a break from? "The same faces at the cantina")
=>
(bind ?answer (m "Are you self-destructive?" "No" "Yes"))
(assert (Are you self-destructive? ?answer)))


(defrule Are_you_social
(Are you self-destructive? "No")
=>
(bind ?answer (m "Are you social?" "No" "Yes" "I prefer animals over people."))
(assert (Are you social? ?answer)))


(defrule By_choice
(Are you social? "No")
=>
(bind ?answer (m "By choice?" "No, most of my friends have moved away." "Yes,I cant stand pathetic life forms."))
(assert (By choice? ?answer)))

(defrule Aw_QQ_Stop_pouting
(By choice? "No, most of my friends have moved away.")
=>
(bind ?answer (m "Aw, QQ. Stop pouting and go find them!" "     "))
(assert (Aw, QQ. Stop pouting and go find them! ?answer)))

(defrule What_color_is_your_lightaber
(By choice? "Yes,I cant stand pathetic life forms.")
=>
(bind ?answer (m "What color is your lightaber?" "Blue" "Red"))
(assert (What color is your lightaber? ?answer)))


(defrule Describe_your_friends
(or
(Are you social? "Yes")
(Aw, QQ. Stop pouting and go find them! "     ")
)
=>
(bind ?answer (m "Describe your friends." "A bunch of scruffy-looking nerfherders" "A ton of party animals. Mos Eisley is old news." "Tight-knit.Id do anything for them."))
(assert (Describe your friends. ?answer)))


(defrule Pick_your_poison
(Describe your friends. "A ton of party animals. Mos Eisley is old news.")
=>
(bind ?answer (m "Pick your poison." "Glyterrill" "Death Sticks" "Rhyll"))
(assert (Pick your poison. ?answer)))


(defrule How_do_you_spend_your_time_together
(Describe your friends. "Tight-knit.Id do anything for them.")
=>
(bind ?answer (m "How do you spend your time together?" "Playing video games" "Long talks" "Eat sushi"))
(assert (How do you spend your time together? ?answer)))


(defrule Choose_an_animal
(Are you social? "I prefer animals over people.")
=>
(bind ?answer (m "Choose an animal." "Squid" "Bear"))
(assert (Choose an animal. ?answer)))


(defrule Mentally_or_physically
(Are you self-destructive? "Yes")
=>
(bind ?answer (m "Mentally or physically?" "Mentally" "Physically"))
(assert (Mentally or physically? ?answer)))


(defrule Do_you_have_a_death_wish
(or
    (Mentally or physically? "Physically")
    (What controls your destiny? "Adrenaline")
)
=>
(bind ?answer (m "Do you have a death wish?" "No" "Yes"))
(assert (Do you have a death wish? ?answer)))


(defrule Do_you_drink
(or
    (Do you have a death wish? "No")
    (Are you holding? "No")
)
=>
(bind ?answer (m "Do you drink?" "Does blue milk count?" "Yes"))
(assert (Do you drink? ?answer)))


(defrule Does_blue_milk_count
(Do you drink? "Does blue milk count?")
=>
(bind ?answer (m "Does blue milk count?" "No"))
(assert (Does blue milk count? ?answer)))


(defrule At_clubs_or_bars
(Do you drink? "Yes")
=>
(bind ?answer (m "At clubs or bars?" "Clubs" "Bars"))
(assert (At clubs or bars? ?answer)))


(defrule What_are_you_ordering
(At clubs or bars? "Bars")
=>
(bind ?answer (m "What are you ordering?" "An oaky scotch" "Mai Tai" "Fireball shots" "Knockback rum"))
(assert (What are you ordering? ?answer)))


(defrule Beware_Anger_fear_aggresion_The_Dark_Side_are_they
(Mentally or physically? "Mentally")
=>
(bind ?answer (m "Beware. Anger, fear, aggresion. The Dark Side are they." "I am the Dark Side." "Help me Obi-Wan Kenobi!"))
(assert (Beware. Anger, fear, aggresion. The Dark Side are they. ?answer)))


(defrule You_dont_need_A_vacation_The_Force_will_set_you_free
(Beware. Anger, fear, aggresion. The Dark Side are they. "I am the Dark Side.")
=>
(assert (text You don't need A vacation. The Force will set you free.)))


(defrule Clear_your_mind_you_must_How_do_you_unwind
(or
    (Beware. Anger, fear, aggresion. The Dark Side are they. "Help me Obi-Wan Kenobi!")
    (You may want to rethink your life choices. "Help me Obi-Wan Kenobi!")
)
=>
(bind ?answer (m "Clear your mind you must. How do you unwind?" "Oil baths" "Braid my hair" "Listen to music" "Sports"))
(assert (Clear your mind you must. How do you unwind? ?answer)))


(defrule What_type
(Clear your mind you must. How do you unwind? "Listen to music")
=>
(bind ?answer (m "What type?" "Instrumental" "Rock" "Pop"))
(assert (What type? ?answer)))


(defrule John_Williams_or_Danny_Elfman
(What type? "Instrumental")
=>
(bind ?answer (m "John Williams or Danny Elfman?" "John Williams" "Danny Elfman"))
(assert (John Williams or Danny Elfman? ?answer)))


(defrule Do_you_play_or_watch
(Clear your mind you must. How do you unwind? "Sports")
=>
(bind ?answer (m "Do you play or watch?" "Watch" "Play"))
(assert (Do you play or watch? ?answer)))


(defrule Podracers_or_lavaracers
(or
    (Do you play or watch? "Play")
    (Are you the the gambling type? "Yes, never tell me the odds.")
)
=>
(bind ?answer (m "Podracers or lavaracers?" "Podracers" "Lavaracers"))
(assert (Podracers or lavaracers? ?answer)))


(defrule How_do_you_want_to_die
(Do you have a death wish? "Yes")
=>
(bind ?answer (m "How do you want to die?" "In a knife fight" "In a fiery explosion"))
(assert (How do you want to die? ?answer)))


(defrule Which_motto_do_you_live_by
(What are you more inspired by? "Posters with eagles and inpirational quotes")
=>
(bind ?answer (m "Which motto do you live by?" "Theres always a bigger fish." "Hokey religions are no match for a good blaster at your side." "Live long and prosper."))
(assert (Which motto do you live by? ?answer)))


(defrule What_would_you_rather_blast
(Which motto do you live by? "Hokey religions are no match for a good blaster at your side.")
=>
(bind ?answer (m "What would you rather blast?" "A Dug" "A Wampa" "Womp rats"))
(assert (What would you rather blast? ?answer)))


(defrule This_is_not_the_flowchart_youre_looking_for
(or
    (Which motto do you live by? "Live long and prosper.")
    (What's your midi-chlorian count? "WTF is a midi-chlorian?")
)
=>
(assert (text This is not the flowchart you're looking for.)))


(defrule Are_you_willing_to_travel_far
(Search your feelings. Why are you traveling? "I just want to teleport off this rock.")
=>
(bind ?answer (m "Are you willing to travel far?" "No" "Yes"))
(assert (Are you willing to travel far? ?answer))
)

(defrule Are_you_willing_to_travel_far_loop
?f <- (Do or do not, there is no try. "     ")
=>
(retract ?f)
(bind ?answer (m "Are you willing to travel far?" "No" "Yes"))
(assert (Are you willing to travel far? ?answer))
)

(defrule Do_or_do_not_there_is_no_try
?f <- (Are you willing to travel far? "No")
=>
(retract ?f)
(bind ?answer (m "Do or do not, there is no try." "     "))
(assert (Do or do not, there is no try. ?answer))
)

(defrule Whats_your_midi_chlorian_count
(Are you willing to travel far? "Yes")
=>
(bind ?answer (m "What's your midi-chlorian count?" "DGAF! No mystical energy field controls my destiny" "WTF is a midi-chlorian?" "Off the charts"))
(assert (What's your midi-chlorian count? ?answer)))


(defrule What_controls_your_destiny
(What's your midi-chlorian count? "DGAF! No mystical energy field controls my destiny")
=>
(bind ?answer (m "What controls your destiny?" "Adrenaline" "Money" "Love"))
(assert (What controls your destiny? ?answer)))

(defrule If_money_is_what_you_love
(What controls your destiny? "Money")
=>
(bind ?answer (m "If money is what you love, then that's what you'll receive" "     "))
(assert (If money is what you love, then that's what you'll receive ?answer)))


(defrule Are_you_the_the_gambling_type
(If money is what you love, then that's what you'll receive "     ")
=>
(bind ?answer (m "Are you the the gambling type?" "Yes, never tell me the odds." "No"))
(assert (Are you the the gambling type? ?answer)))


(defrule Are_you_holding
(Are you the the gambling type? "No")
=>
(bind ?answer (m "Are you holding?" "No" "Who's asking?"))
(assert (Are you holding? ?answer)))


(defrule You_may_want_to_rethink_your_life_choices
(Are you holding? "Who's asking?")
=>
(bind ?answer (m "You may want to rethink your life choices." "Help me Obi-Wan Kenobi!" "Your jedi mind tricks don't work on me."))
(assert (You may want to rethink your life choices. ?answer)))


(defrule Are_you_in_a_serious_relationship
(What controls your destiny? "Love")
=>
(bind ?answer (m "Are you in a serious relationship?" "No, she died giving birth to twins." "Yes" "I don't know... You think a princess and a guy like me..."))
(assert (Are you in a serious relationship? ?answer)))

(defrule I_have_a_bad_feeling_about_this
(Are you in a serious relationship? "No, she died giving birth to twins.")
=>
(bind ?answer (m "I have a bad feeling about this." "     "))
(assert (I have a bad feeling about this. ?answer)))


(defrule Finish_the_phrase_Fear_leads_to_anger_Anger_leads_to_hate_Hate_leads_to
(I have a bad feeling about this. "     ")
=>
(bind ?answer (m "Finish the phrase: 'Fear leads to anger. Anger leads to hate. Hate leads to...' " "Suffering" "Revange"))
(assert (Finish the phrase: 'Fear leads to anger. Anger leads to hate. Hate leads to...'  ?answer)))


(defrule The_love_of_your_life_has_been_takes_prisoner_Do_you_risk_your_life_to_save_theirs
(Are you in a serious relationship? "Yes")
=>
(bind ?answer (m "The love of your life has been takes prisoner. Do you risk your life to save theirs?" "No, better them than me." "I'm already holding my thermal detonator."))
(assert (The love of your life has been takes prisoner. Do you risk your life to save theirs? ?answer)))


(defrule Who_shot_first
(The love of your life has been takes prisoner. Do you risk your life to save theirs? "No, better them than me.")
=>
(bind ?answer (m "Who shot first?" "Greedo" "Han"))
(assert (Who shot first? ?answer)))


(defrule Nope
(Who shot first? "Greedo")
=>
(bind ?answer (m "Nope" "Han"))
(assert (Nope ?answer)))


(defrule Does_a_wretched_a_hive_of_villainy_and_scum_sound_like_a_good_time_to_you
(or
    (Nope "Han")
    (Who shot first? "Han")
)
=>
(bind ?answer (m "Does a 'wretched a hive of villainy and scum' sound like a good time to you?" "Yes" "No"))
(assert (Does a 'wretched a hive of villainy and scum' sound like a good time to you? ?answer)))


(defrule Sounds_like_youre_up_for_an_adventure
(The love of your life has been takes prisoner. Do you risk your life to save theirs? "I'm already holding my thermal detonator.")
=>
(bind ?answer (m "Sounds like you're up for an adventure." "Yes" "Those days are long behind us."))
(assert (Sounds like you're up for an adventure. ?answer)))


(defrule Would_you_kiss_your_sibling_to_make_them_jealous
(Are you in a serious relationship? "I don't know... You think a princess and a guy like me...")
=>
(bind ?answer (m "Would you kiss your sibling to make them jealous?" "Yes" "No"))
(assert (Would you kiss your sibling to make them jealous? ?answer)))

(defrule youre_gonna_regret_that
(Would you kiss your sibling to make them jealous? "Yes")
=>
(bind ?answer (m "You're gonna regret that" "     "))
(assert (You're gonna regret that ?answer)))

(defrule Great_kid_dont_get_cocky
(What's your midi-chlorian count? "Off the charts")
=>
(bind ?answer (m "Great kid, don't get cocky." "     "))
(assert (Great kid, don't get cocky. ?answer)))

(defrule Are_you_searching_for_something_or_hiding_from_something
(What's your midi-chlorian count? "Off the charts")
=>
(bind ?answer (m "Are you searching for something or hiding from something?" "Hiding" "Searching"))
(assert (Are you searching for something or hiding from something? ?answer)))


(defrule Searching_or_scavenging
(Are you searching for something or hiding from something? "Searching")
=>
(bind ?answer (m "Searching or scavenging?" "Searching" "Scavenging"))
(assert (Searching or scavenging? ?answer)))


(defrule For_adventure
(Searching or scavenging? "Searching")
=>
(bind ?answer (m "For adventure?" "Yes" "Adventure. Excitement. A jedi craves not these things."))
(assert (For adventure? ?answer)))


(defrule What_about_Adegan_crystals
(For adventure? "Adventure. Excitement. A jedi craves not these things.")
=>
(bind ?answer (m "What about Adegan crystals?" "Now you're talking!"))
(assert (What about Adegan crystals? ?answer)))


(defrule How_do_you_like_your_blue_milk
(For adventure? "Yes")
=>
(bind ?answer (m "How do you like your blue milk?" "Warm" "Cold"))
(assert (How do you like your blue milk? ?answer)))

(defrule Its_a_trap
(How do you like your blue milk? "Warm")
=>
(bind ?answer (m "It's a trap!" "     "))
(assert (It's a trap! ?answer)))

(defrule Dont_forget_your_tauntaun
(How do you like your blue milk? "Cold")
=>
(bind ?answer (m "Don't forget your tauntaun!" "     "))
(assert (Don't forget your tauntaun! ?answer)))


(defrule From_what
(Are you searching for something or hiding from something? "Hiding")
=>
(bind ?answer (m "From what?" "A slimy piece of worm-ridden filth" "Jar Jar Binks" "Don't worry about it." "The past"))
(assert (From what? ?answer)))


(defrule Gungans_no_liking_hot
(From what? "Jar Jar Binks")
=>
(bind ?answer (m "Gungans no liking hot, dry weather." "     "))
(assert (Gungans no liking hot, dry weather. ?answer)))


(defrule Lightspeed
(From what? "A slimy piece of worm-ridden filth")
=>
(bind ?answer (m "Lightspeed!" "     "))
(assert (Lightspeed! ?answer)))


(defrule What_happened
(From what? "The past")
=>
(bind ?answer (m "What happened?" "Ever heard of Order 66?" "I came home to the charred remains of my relatives."))
(assert (What happened? ?answer)))


(defrule No_vacation_can_heal_that_you_Sith_bastard
(What happened? "Ever heard of Order 66?")
=>
(bind ?answer (m "No vacation can heal that, you Sith bastard" "Noooooooooooo!"))
(assert (No vacation can heal that, you Sith bastard ?answer)))


(defrule but_weren't_you_mildly_relieved_it_meant_you_finally_got_to_fly_away
(What happened? "I came home to the charred remains of my relatives.")
=>
(bind ?answer (m "...but weren't you mildly relieved it meant you finally got to fly away?" "Yes" "No, I love living in a remote desert"))
(assert (...but weren't you mildly relieved it meant you finally got to fly away? ?answer)))


(defrule Before_your_house_burned_down_what_was_your_favourite_toy_as_a_kid
(...but weren't you mildly relieved it meant you finally got to fly away? "Yes")
=>
(bind ?answer (m "Before your house burned down, what was your favourite toy as a kid?" "A chemistry set" "An RC Car" "Super Soaker" "Magic 8 Ball" "Furby"))
(assert (Before your house burned down, what was your favourite toy as a kid? ?answer)))


(defrule True_or_false_Impossible_to_see_the_future_is
(Before your house burned down, what was your favourite toy as a kid? "Magic 8 Ball")
=>
(bind ?answer (m "True or false? Impossible to see, the future is." "True" "False"))
(assert (True or false? Impossible to see, the future is. ?answer)))


(defrule Are_you_a_glutton_for_pain
(Before your house burned down, what was your favourite toy as a kid? "Furby")
=>
(bind ?answer (m "Are you a glutton for pain?" "No" "Yes"))
(assert (Are you a glutton for pain? ?answer)))


(defrule Which_fate_would_you_rather_be_dealt
(Are you a glutton for pain? "Yes")
=>
(bind ?answer (m "Which fate would you rather be dealt?" "Being frozen in carbonite" "Being slowly digested for 1,000 years"))
(assert (Which fate would you rather be dealt? ?answer)))


(defrule I_love_you
(Which fate would you rather be dealt? "Being frozen in carbonite")
=>
(bind ?answer (m "I love you" "I know"))
(assert (I love you ?answer)))

