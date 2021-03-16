//Going to reuse most of the fueltank code because while fueltanks explode, this is basically just feces in a can. fuck it, fuck you, fuck me.
/obj/structure/reagent_dispensers/fueltank/face/sweetbrown
	name = "Bluespace Septic Tank"
	desc = "This little number has saved the bacon of Central Command Plumbers everywhere. By utilizing advanced Bluespace Technology, almost all the dangerous and toxic waste from Nanotrasen stations ends up teleported to this little device. It helps keep costs down, and really helps Central Command deal with Curry Friday. Do not consume or ingest."
	icon = 'face/icons/obj/objects.dmi'
	reagent_id = /datum/reagent/drug/pupupipi
	icon_state = "brown"
	use_reagent_icon = TRUE

/obj/structure/reagent_dispensers/fueltank/face/sweetbrown/boom()
	playsound(src, 'face/sound/effects/nerffart.wav', 200, 1)
	visible_message("<span class='danger'>\The [src] ruptures!</span>")
	chem_splash(loc, 20, list(reagents))
	explosion(get_turf(src), 1, 2, 6, flame_range = 6) // Slightly bigger explosion then normal fueltanks. I suppose it would make a rather overpriced X4 charge.
	qdel(src)

/obj/structure/reagent_dispensers/deconstruct(disassembled = TRUE)
	if(!(flags_1 & NODECONSTRUCT_1))
		if(!disassembled)
			boom()