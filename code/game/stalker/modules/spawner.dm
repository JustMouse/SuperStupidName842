//Лист спавнеров с кулдауном
var/global/list/obj/effect/spawner/cooldown_spawners_blowout = list()

/obj/effect/spawner
	icon = 'icons/mob/screen_gen.dmi'
	icon_state = "x2"
	color = "#00FF00"
	var/lootcount = 1		//how many items will be spawned
	var/lootdoubles = 1		//if the same item can be spawned twice
	var/list/loot			//a list of possible items to spawn e.g. list(/obj/item, /obj/structure, /obj/effect)
	var/list/spawned_loot = list()
	var/radius = 0
	var/chance = 100
	var/cooldown = 0 //Если 0, то кулдаун = выброс
	invisibility = 101

/obj/effect/spawner/proc/SpawnLoot()
	if(!loot || !loot.len) //Если пустой
		qdel(src)
		return

	if(cooldown == 0)
		cooldown_spawners_blowout |= src
		cooldown = null

	if(!prob(chance))
		return

	for(var/i = 0, i < CanSpawn(spawned_loot), i++) //Создаём объекты

		if(!loot.len)
			return

		var/lootspawn = pickweight(loot) //Забиваем переменную рандомным объектом из loot

		if(!lootspawn || lootspawn == "") //Если объект - ничего
			continue

//		spawned_loot.Add(lootspawn) //Заполняем список лутом

		var/turf/T = get_turf(src)
		if(radius)
			for(var/t = 0, t < radius, t++)
				var/oldT = T
				T = get_step(T,pick(1,2,4,8))
				if(istype(T,/turf/stalker/floor/water))
					T = oldT

		if(lootspawn in T)
			return
		spawned_loot.Add(new lootspawn(T))
//		RandomMove(O)

	if(cooldown != 0)
		sleep(rand(cooldown, cooldown + cooldown/2)) //Рандом кулдауна
		SpawnLoot()

	return

/obj/effect/spawner/proc/CanSpawn() //Проверяем на спавн
	var/count = 0
	for(var/I in spawned_loot)
		if(istype(I, /mob))
			if(I in range(30, src))
				count++
			else
				spawned_loot.Remove(I)
		else
			if(I in range(5, src))
				count++
			else
				spawned_loot.Remove(I)
	return Clamp(lootcount - count, 0, lootcount) //define Clamp(x, y, z) 	(x <= y ? y : (x >= z ? z : x))

////////////////////////////////
//Одноразовый спавнер для лута//
////////////////////////////////

/obj/effect/spawner/lootdrop/New()
	if(loot && loot.len)
		for(var/i = lootcount, i > 0, i--)
			if(!loot.len) break
			var/lootspawn = pickweight(loot)
			if(!lootdoubles)
				loot.Remove(lootspawn)

			if(lootspawn)
				new lootspawn(get_turf(src))
	qdel(src)

/////////////////////////////////
//Одноразовый спавнер для мобов//
/////////////////////////////////

/obj/effect/spawner/mobspawner/New()
	if(loot && loot.len)
		for(var/i = lootcount, i > 0, i--)
			if(!loot.len) break
			var/lootspawn = pickweight(loot)
			if(!lootdoubles)
				loot.Remove(lootspawn)

			if(lootspawn)
				new lootspawn(get_turf(src))
	qdel(src)

///////////////////////////////////
//Многоразоывый спавнер для мобов//
///////////////////////////////////

/obj/effect/spawner/mobspawner/cooldown_enable
	name = "stalker mobspawner"
	lootcount = 1
	var/sticky_mob = 0
	var/monolith_controled = 0

/obj/effect/spawner/mobspawner/cooldown_enable/New()
	SpawnLoot()

//////////////////////////////////
//Многоразоывый спавнер для лута//
//////////////////////////////////

/obj/effect/spawner/lootdrop/cooldown_enable
	name = "stalker lootspawner"
	loot = list(/obj/item/stack/medical/gauze/bint = 75,
				/obj/item/trash/can = 25)

/obj/effect/spawner/lootdrop/cooldown_enable/New()
	SpawnLoot()