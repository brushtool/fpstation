/obj/structure/fireaxecabinet/face
	..()
	max_integrity = 300
	var/unlocktime = 120 //this determines how long the cabinet takes to unlock with a multitool. 10 = 1 second so 300 = 30 seconds

/obj/structure/fireaxecabinet/face/Initialize()
	. = ..()
	fireaxe = new
	update_icon()

/obj/structure/fireaxecabinet/face/Destroy()
	if(fireaxe)
		QDEL_NULL(fireaxe)
	return ..()

/obj/structure/fireaxecabinet/face/attackby(obj/item/I, mob/user, params)
	if(iscyborg(user) || I.tool_behaviour == TOOL_MULTITOOL)
		facetoggle_lock(user)
	else if(I.tool_behaviour == TOOL_WELDER && user.a_intent == INTENT_HELP && !broken)
		if(obj_integrity < max_integrity)
			if(!I.tool_start_check(user, amount=2))
				return

			to_chat(user, "<span class='notice'>You begin repairing [src].</span>")
			if(I.use_tool(src, user, 40, volume=50, amount=2))
				obj_integrity = max_integrity
				update_icon()
				to_chat(user, "<span class='notice'>You repair [src].</span>")
		else
			to_chat(user, "<span class='warning'>[src] is already in good condition!</span>")
		return
	else if(istype(I, /obj/item/stack/sheet/glass) && broken)
		var/obj/item/stack/sheet/glass/G = I
		if(G.get_amount() < 2)
			to_chat(user, "<span class='warning'>You need two glass sheets to fix [src]!</span>")
			return
		to_chat(user, "<span class='notice'>You start fixing [src]...</span>")
		if(do_after(user, 20, target = src) && G.use(2))
			broken = 0
			obj_integrity = max_integrity
			update_icon()
	else if(open || broken)
		if(istype(I, /obj/item/twohanded/fireaxe) && !fireaxe)
			var/obj/item/twohanded/fireaxe/F = I
			if(F.wielded)
				to_chat(user, "<span class='warning'>Unwield the [F.name] first.</span>")
				return
			if(!user.transferItemToLoc(F, src))
				return
			fireaxe = F
			to_chat(user, "<span class='caution'>You place the [F.name] back in the [name].</span>")
			update_icon()
			return
		else if(!broken)
			toggle_open()
	else
		return ..()

/obj/structure/fireaxecabinet/face/play_attack_sound(damage_amount, damage_type = BRUTE, damage_flag = 0)
	switch(damage_type)
		if(BRUTE)
			if(broken)
				playsound(loc, 'sound/effects/hit_on_shattered_glass.ogg', 90, 1)
			else
				playsound(loc, 'sound/effects/glasshit.ogg', 90, 1)
		if(BURN)
			playsound(src.loc, 'sound/items/welder.ogg', 100, 1)

/obj/structure/fireaxecabinet/face/take_damage(damage_amount, damage_type = BRUTE, damage_flag = 0, sound_effect = 1, attack_dir)
	if(open)
		return
	. = ..()
	if(.)
		update_icon()

/obj/structure/fireaxecabinet/face/obj_break(damage_flag)
	if(!broken && !(flags_1 & NODECONSTRUCT_1))
		update_icon()
		broken = TRUE
		playsound(src, 'sound/effects/glassbr3.ogg', 100, 1)
		new /obj/item/shard(loc)
		new /obj/item/shard(loc)

/obj/structure/fireaxecabinet/face/deconstruct(disassembled = TRUE)
	if(!(flags_1 & NODECONSTRUCT_1))
		if(fireaxe && loc)
			fireaxe.forceMove(loc)
			fireaxe = null
		new /obj/item/stack/sheet/metal(loc, 2)
	qdel(src)
/obj/structure/fireaxecabinet/face/attack_hand(mob/user)
	. = ..()
	if(.)
		return
	if(open || broken)
		if(fireaxe)
			user.put_in_hands(fireaxe)
			fireaxe = null
			to_chat(user, "<span class='caution'>You take the fire axe from the [name].</span>")
			src.add_fingerprint(user)
			update_icon()
			return
	if(locked)
		to_chat(user, "<span class='warning'>The [name] won't budge!</span>")
		return
	else
		open = !open
		update_icon()
		return

/obj/structure/fireaxecabinet/face/attack_paw(mob/living/user)
	return attack_hand(user)

/obj/structure/fireaxecabinet/face/attack_ai(mob/user)
	toggle_lock(user)
	return

/obj/structure/fireaxecabinet/face/attack_tk(mob/user)
	if(locked)
		to_chat(user, "<span class='warning'>The [name] won't budge!</span>")
		return
	else
		open = !open
		update_icon()
		return

/obj/structure/fireaxecabinet/face/update_icon()
	cut_overlays()
	if(fireaxe)
		add_overlay("axe")
	if(!open)
		var/hp_percent = obj_integrity/max_integrity * 100
		if(broken)
			add_overlay("glass4")
		else
			switch(hp_percent)
				if(-INFINITY to 40)
					add_overlay("glass3")
				if(40 to 60)
					add_overlay("glass2")
				if(60 to 80)
					add_overlay("glass1")
				if(80 to INFINITY)
					add_overlay("glass")
		if(locked)
			add_overlay("locked")
		else
			add_overlay("unlocked")
	else
		add_overlay("glass_raised")

/obj/structure/fireaxecabinet/face/proc/facetoggle_lock(mob/user)
	to_chat(user, "<span class = 'caution'> Resetting circuitry... This is going to take a minute.</span>")
	playsound(src, 'sound/machines/locktoggle.ogg', 70, 1)
	if(do_after(user, unlocktime, target = src))
		to_chat(user, "<span class='caution'>You [locked ? "disable" : "re-enable"] the locking modules.</span>")
		locked = !locked
		update_icon()

/obj/structure/fireaxecabinet/face/verb/facetoggle_open()
	set name = "Open/Close"
	set category = "Object"
	set src in oview(1)

	if(locked)
		to_chat(usr, "<span class='warning'>The [name] won't budge!</span>")
		return
	else
		open = !open
		update_icon()
		return