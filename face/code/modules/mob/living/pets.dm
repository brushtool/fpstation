/mob/living/simple_animal/pet/dog/corgi/Barney
	name = "Barney"
	real_name = "Barney"
	desc = "The HOS'S noble sausage dog. Unlike the HOS, He's way behind on his beating quota."
	unique_pet = TRUE
	icon = 'face/icons/mob/pets.dmi'
	icon_state = "beagle"
	icon_living = "beagle"
	icon_dead = "beagle_dead"
	response_help  = "pats"
	response_disarm = "baps"
	response_harm   = "kicks"


/mob/living/simple_animal/pet/dog/corgi/raccoon //Reusing the corgi code. If it ain't broke, don't fix it- you feel?
	name = "\improper raccoon"
	real_name = "raccoon"
	desc = "This fella doubles as the janitor when he's not on shift..."
	unique_pet = TRUE
	icon = 'face/icons/mob/pets.dmi'
	icon_state = "raccoon"
	icon_living = "raccoon"
	icon_dead = "raccoon-dead"
	speak = list("chitter", "hiss!", "SQUEAL!", "AAAAAAAAAAAA")
	speak_emote = list("snorts", "growls")
	emote_hear = list("purrs!", "screams!", "snorts.","screech.")
	emote_see = list("shakes its head.", "chases its tail.","shivers.")
	response_help  = "pats"
	response_disarm = "baps"
	response_harm   = "kicks"
