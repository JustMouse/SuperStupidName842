///////////////////////////////////////////////Одноразовый лутспавнер////////////////////////////////////////////////////////////////////////////////
/obj/effect/spawner/lootdrop/stalker/stash_crate/low
	name = "khabar loot spawner"

	loot = list(/obj/structure/closet/crate/stalker/blue/stash/low = 80,
				"" = 20)
/*	loot = list(
				/obj/item/weapon/reagent_containers/hypospray/medipen/stalker/antirad = 20,
				/obj/item/weapon/reagent_containers/pill/stalker/aptechka/civilian = 20,
				/obj/item/weapon/gun/projectile/automatic/pistol/pm = 5,
				/obj/item/weapon/gun/projectile/automatic/pistol/fort12 = 5,
				/obj/item/weapon/gun/projectile/automatic/pistol/pb1s = 5,
				/obj/item/weapon/gun/projectile/automatic/mp5 = 1,
				/obj/item/weapon/gun/projectile/revolver/bm16/sawnoff = 4,
				/obj/item/weapon/gun/projectile/revolver/bm16 = 3,
				/obj/item/ammo_box/stalker/b9x18 = 10,
				/obj/item/ammo_box/stalker/b9x18P = 10,
				/obj/item/ammo_box/stalker/b12x70 = 10,
				/obj/item/ammo_box/stalker/b12x70P = 10,
				/obj/item/ammo_box/stalker/b12x70D = 10,
				/obj/item/ammo_box/stalker/b9x19 = 10,
				/obj/item/ammo_box/stalker/b9x19P = 10,
				/obj/item/clothing/suit/hooded/kombez/mercenary = 1,
				/obj/item/clothing/suit/hooded/kombez/kombez_bandit = 1,
				/obj/item/clothing/suit/army = 1,
				/obj/item/clothing/suit/hooded/kozhanka/banditka/coat = 2,
				/obj/item/clothing/suit/hooded/kozhanka/banditka/coat/brown = 2,
				/obj/item/clothing/mask/gas/stalker = 4,
				/obj/item/device/detector/blink = 4,
				"" = 10
				)
*/
/obj/effect/spawner/lootdrop/stalker/stash_crate/medium
	name = "khabar loot spawner"

	loot = list(
				/obj/structure/closet/crate/stalker/blue/stash/medium = 50,
				"" = 50
				)

/obj/effect/spawner/lootdrop/stalker/stash_crate/high
	name = "khabar loot spawner"

	loot = list(
				/obj/structure/closet/crate/stalker/blue/stash/high= 10,
				"" = 90
				)

///////////////////////////////////////////////Лутспавнер с кулдауном и бесконечным сроком работы////////////////////////////////////////////////////

/obj/effect/spawner/lootdrop/stalker/cooldown_enable
	name = "stalker lootspawner"
	invisibility = 101
	lootcount = 1
	var/max_spawned = 3
	var/radius = 10 //Радиус разброса лута
	var/cooldown = 10000 //Кол-во минут * 1000 кд шитспавна
	var/list/spawned_loot = new()
	loot = list(/obj/item/stack/medical/gauze/bint = 75,
				/obj/item/trash/can = 25)

/obj/effect/spawner/lootdrop/stalker/weapon
	lootcount = 1
	loot = list(/obj/item/weapon/gun/projectile/automatic/pistol/pm = 85,
				/obj/item/trash/can = 15)

/obj/effect/spawner/lootdrop/stalker/cooldown_enable/New()
	SpawnLoot()

/obj/effect/spawner/lootdrop/stalker/cooldown_enable/proc/SpawnLoot()
	if(!loot || !loot.len)
		return

	for(var/i = 0, i < lootcount, i++)

		if(!loot.len)
			return

		var/lootspawn = pickweight(loot)

		if(!lootspawn || lootspawn == "")
			continue

		spawned_loot.Add(lootspawn)

		var/turf/T = get_turf(src)
		new lootspawn(T) //var/obj/O =

//		RandomMove(O)
	////////////////////////////////////////////
	sleep(rand(cooldown, cooldown + cooldown/2))
	////////////////////////////////////////////
	SpawnLoot()
	return

/*
/obj/effect/spawner/lootdrop/stalker/proc/CanSpawn()
	var/count = 0

	for(var/I in spawned_loot)

		var/obj/O = I

		if(!(O.loc in range(7, src)))
			count++
		else
			spawned_loot.Remove(I)

	return Clamp(lootcount - count, 0, lootcount)
*/

/*
/obj/effect/spawner/lootdrop/stalker/proc/RandomMove(spawned)
	if(spawned)
		var/turf/T = get_turf(src)
		var/obj/O = spawned
		var/new_x = T.x + rand(-radius, radius)
		var/new_y = T.y + rand(-radius, radius)
		O.Move(new_x, new_y, T.z)

	return spawned
*/
/obj/effect/spawner/lootdrop/stalker/weapon/pistols
	name = "stalker pistols"
	loot = list(/obj/item/weapon/gun/projectile/automatic/pistol/pm = 25,
				/obj/item/weapon/gun/projectile/automatic/pistol/pb1s = 15,
				/obj/item/weapon/gun/projectile/automatic/pistol/fort12 = 10,
				/obj/item/weapon/gun/projectile/automatic/pistol/usp_match = 5,
				/obj/item/weapon/gun/projectile/automatic/pistol/sip = 5,
				/obj/item/weapon/gun/projectile/automatic/pistol/cora = 5,
				/obj/item/weapon/gun/projectile/automatic/pistol/marta = 5,
				"" = 30)

/obj/effect/spawner/lootdrop/stalker/weapon/rifles_and_shotguns
	name = "stalker rifles_and_shotguns"
	loot = list(/obj/item/weapon/gun/projectile/revolver/bm16 = 25,
				/obj/item/weapon/gun/projectile/automatic/ak74 = 25,
				/obj/item/weapon/gun/projectile/automatic/aksu74 = 35,
				/obj/item/weapon/gun/projectile/automatic/tpc301 = 10,
				"" = 50)

/obj/effect/spawner/lootdrop/stalker/weapon/cooldown_enable/smgs
	name = "stalker smgs"
	loot = list(/obj/item/weapon/gun/projectile/automatic/mp5 = 30,
				/obj/item/weapon/gun/projectile/automatic/aksu74 = 20,
				"" = 60)

/obj/effect/spawner/lootdrop/stalker/cooldown_enable/medicine
	name = "stalker medicine"
	lootcount = 1
	loot = list(/obj/item/weapon/reagent_containers/pill/stalker/aptechka/civilian = 30,
				/obj/item/weapon/reagent_containers/pill/stalker/aptechka/army = 15,
				/obj/item/weapon/reagent_containers/pill/stalker/aptechka/scientific = 5,
				"" = 60)

/obj/effect/spawner/lootdrop/stalker/cooldown_enable/food
	name = "stalker food"
	lootcount = 1
	loot = list(/obj/item/weapon/reagent_containers/food/snacks/stalker/baton = 50,
				/obj/item/weapon/reagent_containers/food/snacks/stalker/kolbasa = 30,
				/obj/item/weapon/reagent_containers/food/snacks/stalker/konserva = 20)


/obj/effect/spawner/lootdrop/stalker/cooldown_enable/gravy
	name = "stalker gravity"
	radius = 3
	lootcount = 1
	cooldown = 4500
	loot = list(/obj/item/weapon/artifact/meduza = 12,
				/obj/item/weapon/artifact/stoneflower = 6,
				/obj/item/weapon/artifact/nightstar = 3,
				/obj/item/weapon/artifact/maminibusi = 1,
				"" = 80)

/obj/effect/spawner/lootdrop/stalker/cooldown_enable/electra
	name = "stalker electra"
	radius = 3
	lootcount = 1
	cooldown =4500
	loot = list(/obj/item/weapon/artifact/flash = 12,
				/obj/item/weapon/artifact/moonlight = 6,
				/obj/item/weapon/artifact/battery = 1,
				/obj/item/weapon/artifact/pustishka = 1,
				"" = 80)

/obj/effect/spawner/lootdrop/stalker/cooldown_enable/fire
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
*/cooldown_enable/