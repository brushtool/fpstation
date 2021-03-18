//Loot drops for CentCom docks, specifically just weaponry and likewise objects. Original code in snowdin.dm

/obj/effect/spawner/lootdrop/snowdin/weaponrylite
	name = "weaponry lite"
	lootcount = 1
	loot = list(/obj/item/melee/classic_baton = 20,
				/obj/item/twohanded/fireaxe/fireyaxe = 20,
				/obj/item/kitchen/knife/combat = 25,
				/obj/item/katana = 20,
				/obj/item/book/granter/spell/blind = 10,
				/obj/item/gun/ballistic/shotgun/lethal = 10,
				/obj/item/gun/ballistic/revolver/golden = 10,
				/obj/item/grenade/syndieminibomb/concussion/frag = 15,
				/obj/item/grenade/spawnergrenade/cat = 25,
				/obj/item/grenade/spawnergrenade/cluwne = 5,
				/obj/item/grenade/clusterbuster/slime/volatile = 5,
				/obj/item/flamethrower/full/tank = 15,
				/obj/item/twohanded/spear/explosive = 15,
				/obj/item/gun/ballistic/automatic/mini_uzi = 10,
				/obj/item/gun/ballistic/automatic/pistol/deagle/gold = 5,
				/obj/item/gun/ballistic/rocketlauncher/unrestricted = 5,
				/obj/item/gun/energy/gravity_gun = 15,
				/obj/structure/reagent_dispensers/fueltank = 5)

/obj/effect/spawner/lootdrop/snowdin/weaponrymid
	name = "weaponry mid"
	lootcount = 1
	loot = list(/obj/item/shield/energy = 10,
				/obj/item/gun/magic/wand/fireball = 10,
				/obj/item/grenade/spawnergrenade/spesscarp = 10,
				/obj/item/grenade/clusterbuster/inferno = 5,
				/obj/item/grenade/clusterbuster/soap = 10,
				/obj/item/grenade/spawnergrenade/gorilla = 5,
				/obj/item/gun/ballistic/revolver/mateba = 20,
				/obj/item/gun/ballistic/shotgun/bulldog/unrestricted = 15,
				/obj/item/gun/energy/tesla_revolver = 10,
				/obj/item/gun/energy/mindflayer = 10,
				/obj/item/twohanded/required/chainsaw = 20,
				/obj/item/twohanded/vibro_weapon = 20,
				/obj/item/nullrod/scythe/talking/chainsword = 20,
				/obj/item/gun/ballistic/automatic/c20r/unrestricted = 15,
				/obj/item/gun/ballistic/automatic/m90/unrestricted = 10,
				/obj/item/gun/ballistic/automatic/sniper_rifle = 5,
				/obj/item/reagent_containers/hypospray/combat/nanites = 5,
				/obj/mecha/working/ripley/deathripley/real = 5,
				/obj/item/grenade/syndieminibomb/concussion/frag = 10,
				/obj/item/minigunpack/shotgun = 5)

/obj/effect/spawner/lootdrop/snowdin/weaponryheavy
	name = "weaponry heavy"
	lootcount = 1
	loot = list(/obj/item/twohanded/singularityhammer = 5,
				/obj/item/twohanded/mjollnir = 10,
				/obj/item/melee/transforming/energy/axe = 5,
				/obj/item/twohanded/dualsaber = 10,
				/obj/item/twohanded/required/chainsaw/energy = 15,
				/obj/item/gun/magic/wand/resurrection = 5,
				/obj/item/grenade/clusterbuster/spawner_manhacks = 15,
				/obj/item/grenade/spawnergrenade/buzzkill = 7,
				/obj/item/grenade/spawnergrenade/colossus = 3, //What could possibly go wrong?
				/obj/item/grenade/clusterbuster/syndieminibomb = 7,
				/obj/item/book/granter/spell/fireball = 15,
				/obj/item/minigunpack = 12,
				/obj/item/gun/energy/meteorgun = 12,
				/obj/item/gun/energy/beam_rifle/debug = 5,
				/obj/item/gun/ballistic/automatic/gyropistol = 15,
				/obj/item/reagent_containers/spray/chemsprayer/bioterror = 10,
				/obj/item/reagent_containers/hypospray/combat/nanites = 10,
				/obj/vehicle/ridden/lawnmower/emagged = 10,
				/obj/item/grenade/syndieminibomb/concussion/frag = 5)

//Mimic Shuttle Mob Spawners

/obj/effect/spawner/lootdrop/mimic_shuttle/deadly_mobspawner
	name = "deadly mob spawner"
	lootcount = 1
	loot = list(/mob/living/simple_animal/hostile/mimic/crate/weak = 80,
				/mob/living/simple_animal/hostile/retaliate/clown/clownhulk = 5,
				/mob/living/simple_animal/hostile/gorilla = 5,
				/mob/living/simple_animal/hostile/retaliate/clown/mutant = 5,
				/mob/living/simple_animal/hostile/pirate/melee = 5)

/obj/effect/spawner/lootdrop/mimic_shuttle/hostile_mobspawner
	name = "hostile mob spawner"
	lootcount = 2
	loot = list(/mob/living/simple_animal/hostile/mimic/crate/weak = 80,
				/mob/living/simple_animal/crab/evil = 10,
				/mob/living/simple_animal/hostile/space_funeral/bloodhound = 5,
				/mob/living/simple_animal/hostile/space_funeral/leghorse = 5,
				/mob/living/simple_animal/hostile/space_funeral/philip = 5)

/obj/effect/spawner/lootdrop/mimic_shuttle/raccoons
	name = "raccoon spawner"
	lootcount = 3
	loot = list(/mob/living/simple_animal/pet/dog/corgi/raccoon = 100)

//Mimic Shuttle Loot Spawners

/obj/effect/spawner/lootdrop/mimic_shuttle/lowtier
	name = "mimic low tier"
	lootcount = 1
	loot = list(/obj/effect/spawner/lootdrop/mimic_shuttle/hostile_mobspawner = 20,
				/obj/effect/spawner/lootdrop/mimic_shuttle/deadly_mobspawner = 10,
				/obj/effect/spawner/lootdrop/maintenance/three = 15,
				/obj/effect/spawner/lootdrop/snowdin/weaponrylite = 25,
				/obj/effect/spawner/lootdrop/mimic_shuttle/raccoons = 30)

/obj/effect/spawner/lootdrop/mimic_shuttle/midtier
	name = "mimic mid tier"
	lootcount = 1
	loot = list(/obj/effect/spawner/lootdrop/mimic_shuttle/deadly_mobspawner = 25,
				/obj/effect/spawner/lootdrop/maintenance/five = 25,
				/obj/effect/spawner/lootdrop/snowdin/weaponrymid = 25,
				/obj/effect/spawner/lootdrop/mimic_shuttle/raccoons = 25)

/obj/effect/spawner/lootdrop/mimic_shuttle/hightier
	name = "mimic high tier"
	lootcount = 2
	loot = list(/obj/effect/spawner/lootdrop/mimic_shuttle/deadly_mobspawner = 40,
				/obj/effect/spawner/lootdrop/maintenance/eight = 20,
				/obj/effect/spawner/lootdrop/snowdin/weaponryheavy = 30,
				/obj/effect/spawner/lootdrop/mimic_shuttle/raccoons = 15)