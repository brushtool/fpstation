/datum/map_template/shuttle/emergency/raccoon
	suffix = "raccoon"
	name = "Condemned Emergency Shuttle \"NTTV Urban Cleanup\""
	credit_cost = -1500
	description = "As we've had a alarming amount of emergency shuttles crippled or outright destroyed, Central Command has deemed the use of their mothballed fleet of soon to be recycled Emergency shuttles as potential candidates to use in a hurry. It's better then nothing, right? This shuttle was transporting vermin and rodents to Central Command for their extremely large onboard zoo, but was condemned after all the subjects escaped. Since then, it's been sitting at dock. Some areas of this shuttle may not be up to our typical safety standards."
	admin_notes = "Raccoons, garbage and a chem dispenser. What can go wrong."

/datum/map_template/shuttle/emergency/mirrored
	suffix = "mirrored"
	name = "Emergency \"Escape\" Shuttle"
	credit_cost = 500
	description = "An erroneous entry - This is just the normal escape shuttle."
	admin_notes = "Nothing special, just an \"escape\" shuttle."

/datum/map_template/shuttle/emergency/mimics
	suffix = "mimics"
	name = "Pirate Cargo Shuttle"
	credit_cost = 7500
	description = "A cargo craft within your sector, known to be a salvage ship ran by a small pirate crew. Wanted dead for the pillaging of several civilian salvage ships within the past week. For a modest fee, we will \"guide\" them to the station so you may reclaim these goods for yourselves, in lieu of a standard escape shuttle. Do note, we expect seating to be minimal, and the stolen cargo is rumored to be of questionable origin. Expect chaos. The Bloody signal must be elimated for this shuttle to be unlocked."
	admin_notes = "A small shuttle with a few pirates onboard. Lockers have random loot which can be anything from mimics, to clown hulks, or high-power weaponry. Probably not balanced."


/datum/map_template/shuttle/emergency/mimics/prerequisites_met()
	if("bubblegum" in SSshuttle.shuttle_purchase_requirements_met)
		return TRUE
	return FALSE
