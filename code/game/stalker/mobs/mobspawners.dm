/obj/effect/spawner/lootdrop/stalker/cooldown_enable/mobspawner
	name = "mob spawner"
	cooldown = 1000
	var/sticky_mob = 0
	var/monolith_controled = 0

/*
/obj/effect/spawner/lootdrop/stalker/cooldown_enable/mobspawner/SpawnLoot()
	sleep(rand(10, 100))
	if(!loot || !loot.len)
		return

	for(var/i = 0, i < lootcount, i++)
		if(!loot.len)
			return

		var/lootspawn = pickweight(loot)

		if(!lootspawn || lootspawn == "")
			return

		if(locate(/mob/living/carbon) in view(7, src))
			SpawnLoot()
			return

		var/mob/living/M = new lootspawn(get_turf(src))

		if(monolith_controled)
			M.faction = list("monolith_forces")
			if(istype(M, /mob/living/simple_animal))
				var/mob/living/simple_animal/SA  = M
				SA.loot = list()

		if(sticky_mob && istype(M, /mob/living/simple_animal))
			var/mob/living/simple_animal/SM = M
			SM.return_to_spawnpoint = 1

		spawned_loot.Add(M)
		sleep(rand(10, 50))

//	if(!enable_cooldown)
//		SpawnLoot()
//		return

	sleep(rand(cooldown, cooldown + 3000))
	SpawnLoot()
	return


/obj/effect/spawner/lootdrop/stalker/mobspawner/CanSpawn()
	var/count = 0
	if(!isnull(spawned_loot))
		for(var/mob/living/M in spawned_loot)
			if(M && M.stat != 2)
				count++
			else
				spawned_loot.Remove(M)

	return Clamp(lootcount - count, 0, lootcount)
*/

/obj/effect/spawner/lootdrop/stalker/cooldown_enable/mobspawner/flesh_spawner
	name = "flesh mutant"
	lootcount = 1
	radius = 10 //������ �������� ����
	cooldown = 15000 //���-�� ����� * 1000 - �� ���������
	loot = list(/mob/living/simple_animal/hostile/mutant/flesh = 100)

/obj/effect/spawner/lootdrop/stalker/cooldown_enable/mobspawner/dog_spawner
	name = "dog mutant"
	lootcount = 1
	radius = 10 //������ �������� ����
	cooldown = 15000 //���-�� ����� * 1000 - �� ���������
	loot = list(/mob/living/simple_animal/hostile/mutant/dog = 100)

/obj/effect/spawner/lootdrop/stalker/cooldown_enable/mobspawner/pseudog_spawner
	name = "psy-dog mutant"
	lootcount = 1
	radius = 10 //������ �������� ����
	cooldown = 15000 //���-�� ����� * 1000 - �� ���������
	loot = list(/mob/living/simple_animal/hostile/mutant/pseudog = 100)

/obj/effect/spawner/lootdrop/stalker/cooldown_enable/mobspawner/kaban_spawner
	name = "kaban mutant"
	lootcount = 1
	radius = 10 //������ �������� ����
	cooldown = 15000 //���-�� ����� * 1000 - �� ���������
	loot = list(/mob/living/simple_animal/hostile/mutant/kaban = 100)

/obj/effect/spawner/lootdrop/stalker/cooldown_enable/mobspawner/snork_spawner
	name = "snork mutant"
	lootcount = 1
	radius = 1
	cooldown = 15000
	loot = list(/mob/living/simple_animal/hostile/mutant/snork = 100)

/obj/effect/spawner/lootdrop/stalker/cooldown_enable/mobspawner/bloodsucker_spawner
	name = "bloodsucker mutant"
	lootcount = 1
	radius = 1
	cooldown = 20000
	loot = list(/mob/living/simple_animal/hostile/mutant/bloodsucker = 100)
	sticky_mob = 1

/obj/effect/spawner/lootdrop/stalker/cooldown_enable/mobspawner/bloodsucker_spawner/monolith
	name = "bloodsucker mutant (monolith)"
	lootcount = 1
	radius = 1
	cooldown = 20000
	loot = list(/mob/living/simple_animal/hostile/mutant/bloodsucker = 100)
	sticky_mob = 1
	monolith_controled = 1

/obj/effect/spawner/lootdrop/stalker/cooldown_enable/mobspawner/controller_spawner
	name = "controller mutant"
	lootcount = 1
	radius = 1
	cooldown = 20000
	loot = list(/mob/living/simple_animal/hostile/mutant/controller = 100)
	sticky_mob = 1

/obj/effect/spawner/lootdrop/stalker/cooldown_enable/mobspawner/monolith
	name = "controller mutant (monolith)"
	lootcount = 1
	radius = 1
	cooldown = 20000
	loot = list(/mob/living/simple_animal/hostile/mutant/controller = 100)
	sticky_mob = 1
	monolith_controled = 1