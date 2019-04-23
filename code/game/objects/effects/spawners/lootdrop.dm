/obj/effect/spawner/lootdrop/stash_crate/low
	name = "loot spawner"

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
/obj/effect/spawner/lootdrop/stash_crate/medium
	name = "khabar loot spawner"

	loot = list(
				/obj/structure/closet/crate/stalker/blue/stash/medium = 50,
				"" = 50
				)

/obj/effect/spawner/lootdrop/stash_crate/high
	name = "khabar loot spawner"

	loot = list(
				/obj/structure/closet/crate/stalker/blue/stash/high= 10,
				"" = 90
				)

/obj/effect/spawner/lootdrop/weapon
	lootcount = 1
	loot = list(/obj/item/weapon/gun/projectile/automatic/pistol/pm = 85,
				/obj/item/trash/can = 15)

/obj/effect/spawner/lootdrop/armory_contraband
	name = "armory contraband gun spawner"
	lootdoubles = 0

	loot = list(
				/obj/item/weapon/gun/projectile/automatic/pistol = 8,
				/obj/item/weapon/gun/projectile/shotgun/automatic/combat = 5,
				/obj/item/weapon/gun/projectile/revolver/mateba,
				/obj/item/weapon/gun/projectile/automatic/pistol/deagle
				)

/obj/effect/spawner/lootdrop/maintenance
	name = "maintenance loot spawner"

	loot = list(
				/obj/item/bodybag = 1,
				/obj/item/clothing/glasses/meson = 2,
				/obj/item/clothing/glasses/sunglasses = 1,
				/obj/item/clothing/gloves/color/yellow/fake = 1,
				/obj/item/clothing/head/hardhat = 1,
				/obj/item/clothing/head/hardhat/red = 1,
				/obj/item/clothing/head/that{throwforce = 1; throwing = 1} = 1,
				/obj/item/clothing/head/ushanka = 1,
				/obj/item/clothing/head/welding = 1,
				/obj/item/clothing/mask/gas = 15,
				/obj/item/clothing/suit/hazardvest = 1,
				/obj/item/clothing/under/rank/vice = 1,
				/obj/item/device/assembly/prox_sensor = 4,
				/obj/item/device/assembly/timer = 3,
				/obj/item/device/flashlight = 4,
				/obj/item/device/flashlight/pen = 1,
				/obj/item/device/multitool = 2,
				/obj/item/device/radio/off = 2,
				/obj/item/device/t_scanner = 6,
				/obj/item/stack/cable_coil = 4,
				/obj/item/stack/cable_coil{amount = 5} = 6,
				/obj/item/stack/medical/bruise_pack = 1,
				/obj/item/stack/rods{amount = 10} = 9,
				/obj/item/stack/rods{amount = 23} = 1,
				/obj/item/stack/rods{amount = 50} = 1,
				/obj/item/stack/sheet/cardboard = 2,
				/obj/item/stack/sheet/metal{amount = 20} = 1,
				/obj/item/stack/sheet/mineral/plasma{layer = 2.9} = 1,
				/obj/item/stack/sheet/rglass = 1,
				/obj/item/weapon/book/manual/wiki/engineering_construction = 1,
				/obj/item/weapon/book/manual/wiki/engineering_hacking = 1,
				/obj/item/clothing/head/cone = 1,
				/obj/item/weapon/coin/silver = 1,
				/obj/item/weapon/coin/twoheaded = 1,
				/obj/item/weapon/poster/contraband = 1,
				/obj/item/weapon/poster/legit = 1,
				/obj/item/weapon/crowbar = 1,
				/obj/item/weapon/crowbar/red = 1,
				/obj/item/weapon/extinguisher = 11,
				//obj/item/weapon/gun/projectile/revolver/russian = 1, //disabled until lootdrop is a proper world proc.
				/obj/item/weapon/hand_labeler = 1,
				/obj/item/weapon/paper/crumpled = 1,
				/obj/item/weapon/pen = 1,
				/obj/item/weapon/reagent_containers/spray/pestspray = 1,
				/obj/item/weapon/reagent_containers/glass/rag = 3,
				/obj/item/weapon/stock_parts/cell = 3,
				/obj/item/weapon/storage/belt/utility = 2,
				/obj/item/weapon/storage/box = 2,
				/obj/item/weapon/storage/box/cups = 1,
				/obj/item/weapon/storage/box/donkpockets = 1,
				/obj/item/weapon/storage/box/lights/mixed = 3,
				/obj/item/weapon/storage/box/hug/medical = 1,
				/obj/item/weapon/storage/fancy/cigarettes/cigpack/dromedaryco = 1,
				/obj/item/weapon/storage/toolbox/mechanical = 1,
				/obj/item/weapon/screwdriver = 3,
				/obj/item/weapon/tank/internals/emergency_oxygen = 2,
				/obj/item/weapon/vending_refill/cola = 1,
				/obj/item/weapon/weldingtool = 3,
				/obj/item/weapon/wirecutters = 1,
				/obj/item/weapon/wrench = 4,
				/obj/item/weapon/relic = 3,
				"" = 11
				)

/obj/effect/spawner/lootdrop/crate_spawner
	name = "lootcrate spawner"
	lootdoubles = 0

	loot = list(
				/obj/structure/barricade/stalker/box = 30,
				"" = 70
				)

/obj/effect/spawner/lootdrop/cooldown_enable/crate_spawner
	name = "lootcrate spawner"
	lootdoubles = 0

	loot = list(
				/obj/structure/barricade/stalker/box = 30,
				"" = 70
				)