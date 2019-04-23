/obj/effect/spawner/lootdrop/cooldown_enable/weapon/test
	cooldown = 500
	lootcount = 2
	loot = list(/obj/item/weapon/gun/projectile/automatic/pistol/pm = 1)

/obj/effect/spawner/lootdrop/cooldown_enable/weapon/pistols
	name = "stalker pistols"
	loot = list(/obj/item/weapon/gun/projectile/automatic/pistol/pm = 25,
				/obj/item/weapon/gun/projectile/automatic/pistol/pb1s = 15,
				/obj/item/weapon/gun/projectile/automatic/pistol/fort12 = 10,
				/obj/item/weapon/gun/projectile/automatic/pistol/usp_match = 5,
				/obj/item/weapon/gun/projectile/automatic/pistol/sip = 5,
				/obj/item/weapon/gun/projectile/automatic/pistol/cora = 5,
				/obj/item/weapon/gun/projectile/automatic/pistol/marta = 5,
				"" = 30)

/obj/effect/spawner/lootdrop/weapon/cooldown_enable/rifles_and_shotguns
	name = "stalker rifles_and_shotguns"
	loot = list(/obj/item/weapon/gun/projectile/revolver/bm16 = 25,
				/obj/item/weapon/gun/projectile/automatic/ak74 = 25,
				/obj/item/weapon/gun/projectile/automatic/aksu74 = 35,
				/obj/item/weapon/gun/projectile/automatic/tpc301 = 10,
				"" = 50)

/obj/effect/spawner/lootdrop/weapon/cooldown_enable/smgs
	name = "stalker smgs"
	loot = list(/obj/item/weapon/gun/projectile/automatic/mp5 = 30,
				/obj/item/weapon/gun/projectile/automatic/aksu74 = 20,
				"" = 60)

/obj/effect/spawner/lootdrop/cooldown_enable/medicine
	name = "stalker medicine"
	lootcount = 1
	loot = list(/obj/item/weapon/reagent_containers/pill/stalker/aptechka/civilian = 30,
				/obj/item/weapon/reagent_containers/pill/stalker/aptechka/army = 15,
				/obj/item/weapon/reagent_containers/pill/stalker/aptechka/scientific = 5,
				"" = 60)

/obj/effect/spawner/lootdrop/cooldown_enable/food
	name = "stalker food"
	lootcount = 1
	loot = list(/obj/item/weapon/reagent_containers/food/snacks/stalker/baton = 50,
				/obj/item/weapon/reagent_containers/food/snacks/stalker/kolbasa = 30,
				/obj/item/weapon/reagent_containers/food/snacks/stalker/konserva = 20)


/obj/effect/spawner/lootdrop/cooldown_enable/gravy
	name = "stalker gravity"
	radius = 3
	lootcount = 1
	cooldown = 4500
	loot = list(/obj/item/weapon/artifact/meduza = 12,
				/obj/item/weapon/artifact/stoneflower = 6,
				/obj/item/weapon/artifact/nightstar = 3,
				/obj/item/weapon/artifact/maminibusi = 1,
				"" = 80)

/obj/effect/spawner/lootdrop/cooldown_enable/electra
	name = "stalker electra"
	radius = 3
	lootcount = 1
	cooldown =4500
	loot = list(/obj/item/weapon/artifact/flash = 12,
				/obj/item/weapon/artifact/moonlight = 6,
				/obj/item/weapon/artifact/battery = 1,
				/obj/item/weapon/artifact/pustishka = 1,
				"" = 80)

/obj/effect/spawner/lootdrop/cooldown_enable/fire
	name = "stalker fire"
	radius = 3
	lootcount = 1
	cooldown = 4500
	loot = list(/obj/item/weapon/artifact/droplet = 13,
				/obj/item/weapon/artifact/fireball = 6,
				/obj/item/weapon/artifact/crystal = 3,
				"" = 80)
/*
/obj/nothing
	name = "nothing"
	invisibility = 101

obj/nothing/New()
	qdel(src)
*/