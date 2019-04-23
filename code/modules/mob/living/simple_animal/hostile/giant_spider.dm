
#define SPINNING_WEB 1
#define LAYING_EGGS 2
#define MOVING_TO_TARGET 3
#define SPINNING_COCOON 4

/mob/living/simple_animal/hostile/poison
	var/poison_per_bite = 5
	var/poison_type = "toxin"

/mob/living/simple_animal/hostile/poison/AttackingTarget()
	..()
	if(isliving(target))
		var/mob/living/L = target
		if(L.reagents)
			L.reagents.add_reagent(poison_type, poison_per_bite)



//basic spider mob, these generally guard nests
/mob/living/simple_animal/hostile/poison/giant_spider
	name = "giant spider"
	desc = "Furry and black, it makes you shudder to look at it. This one has deep red eyes."
	icon_state = "guard"
	icon_living = "guard"
	icon_dead = "guard_dead"
	speak_emote = list("chitters")
	emote_hear = list("chitters")
	speak_chance = 5
	turns_per_move = 5
	see_in_dark = 10
	butcher_results = list(/obj/item/weapon/reagent_containers/food/snacks/meat/slab/spider = 2, /obj/item/weapon/reagent_containers/food/snacks/spiderleg = 8)
	response_help  = "pets"
	response_disarm = "gently pushes aside"
	response_harm   = "hits"
	maxHealth = 200
	health = 200
	melee_damage_lower = 15
	melee_damage_upper = 20
	faction = list("spiders")
	busy = 0
	pass_flags = PASSTABLE
	move_to_delay = 6
	ventcrawler = 2
	attacktext = "bites"
	attack_sound = 'sound/weapons/bite.ogg'
	unique_name = 1
	gold_core_spawnable = 1
	see_invisible = SEE_INVISIBLE_MINIMUM
	see_in_dark = 4

//nursemaids - these create webs and eggs
/mob/living/simple_animal/hostile/poison/giant_spider/nurse
	desc = "Furry and black, it makes you shudder to look at it. This one has brilliant green eyes."
	icon_state = "nurse"
	icon_living = "nurse"
	icon_dead = "nurse_dead"
	butcher_results = list(/obj/item/weapon/reagent_containers/food/snacks/meat/slab/spider = 2, /obj/item/weapon/reagent_containers/food/snacks/spiderleg = 8, /obj/item/weapon/reagent_containers/food/snacks/spidereggs = 4)
	maxHealth = 40
	health = 40
	melee_damage_lower = 5
	melee_damage_upper = 10
	poison_per_bite = 10
	var/atom/cocoon_target
	poison_type = "morphine"
	var/fed = 0

//hunters have the most poison and move the fastest, so they can find prey
/mob/living/simple_animal/hostile/poison/giant_spider/hunter
	desc = "Furry and black, it makes you shudder to look at it. This one has sparkling purple eyes."
	icon_state = "hunter"
	icon_living = "hunter"
	icon_dead = "hunter_dead"
	maxHealth = 120
	health = 120
	melee_damage_lower = 10
	melee_damage_upper = 20
	poison_per_bite = 5
	move_to_delay = 5

/mob/living/simple_animal/hostile/poison/giant_spider/handle_automated_action()
	if(!..()) //AIStatus is off
		return 0
	if(AIStatus == AI_IDLE)
		//1% chance to skitter madly away
		if(!busy && prob(1))
			stop_automated_movement = 1
			Goto(pick(ultra_range(20, src, 1)), move_to_delay)
			spawn(50)
				stop_automated_movement = 0
				walk(src,0)
		return 1

/mob/living/simple_animal/hostile/poison/giant_spider/nurse/proc/GiveUp(C)
	spawn(100)
		if(busy == MOVING_TO_TARGET)
			if(cocoon_target == C && get_dist(src,cocoon_target) > 1)
				cocoon_target = null
			busy = 0
			stop_automated_movement = 0

/mob/living/simple_animal/hostile/poison/giant_spider/nurse/handle_automated_action()
	if(..())
		var/list/can_see = view(src, 10)
		if(!busy && prob(30))	//30% chance to stop wandering and do something
			//first, check for potential food nearby to cocoon
			for(var/mob/living/C in can_see)
				if(C.stat && !istype(C,/mob/living/simple_animal/hostile/poison/giant_spider))
					cocoon_target = C
					busy = MOVING_TO_TARGET
					Goto(C, move_to_delay)
					//give up if we can't reach them after 10 seconds
					GiveUp(C)
					return

			//second, spin a sticky spiderweb on this tile
			var/obj/effect/spider/stickyweb/W = locate() in get_turf(src)
			if(!W)
				spawn()
					Web()
			else
				//third, lay an egg cluster there
				if(fed)
					spawn()
						LayEggs()
				else
					//fourthly, cocoon any nearby items so those pesky pinkskins can't use them
					for(var/obj/O in can_see)

						if(O.anchored)
							continue

						if(istype(O, /obj/item) || istype(O, /obj/structure) || istype(O, /obj/machinery))
							cocoon_target = O
							busy = MOVING_TO_TARGET
							stop_automated_movement = 1
							Goto(O, move_to_delay)
							//give up if we can't reach them after 10 seconds
							GiveUp(O)

		else if(busy == MOVING_TO_TARGET && cocoon_target)
			if(get_dist(src, cocoon_target) <= 1)
				spawn()
					Wrap()

	else
		busy = 0
		stop_automated_movement = 0

/mob/living/simple_animal/hostile/poison/giant_spider/verb/Web()
	set name = "Lay Web"
	set category = "Spider"
	set desc = "Spread a sticky web to slow down prey."

	var/T = src.loc

	if(stat == DEAD)
		return
	if(busy != SPINNING_WEB)
		busy = SPINNING_WEB
		src.visible_message("<span class='notice'>\the [src] begins to secrete a sticky substance.</span>")
		stop_automated_movement = 1
		if(do_after(src, 40, target = T))
			if(busy == SPINNING_WEB && src.loc == T)
				new /obj/effect/spider/stickyweb(T)
		busy = 0
		stop_automated_movement = 0

/mob/living/simple_animal/hostile/poison/giant_spider/nurse/verb/LayEggs()
	set name = "Lay Eggs"
	set category = "Spider"
	set desc = "Lay a clutch of eggs, but you must wrap a creature for feeding first."

	var/obj/effect/spider/eggcluster/E = locate() in get_turf(src)
	if(stat == DEAD)
		return
	if(E)
		src << "<span class='warning'>There is already a cluster of eggs here!</span>"
	else if(!fed)
		src << "<span class='warning'>You are too hungry to do this!</span>"
	else if(busy != LAYING_EGGS)
		busy = LAYING_EGGS
		src.visible_message("<span class='notice'>\the [src] begins to lay a cluster of eggs.</span>")
		stop_automated_movement = 1
		if(do_after(src, 50, target = src.loc))
			if(busy == LAYING_EGGS)
				E = locate() in get_turf(src)
				if(!E)
					var/obj/effect/spider/eggcluster/C = new /obj/effect/spider/eggcluster(src.loc)
					if(ckey)
						C.player_spiders = 1
					C.poison_type = poison_type
					C.poison_per_bite = poison_per_bite
					C.faction = faction.Copy()
					fed--
		busy = 0
		stop_automated_movement = 0

/mob/living/simple_animal/hostile/poison/giant_spider/handle_temperature_damage()
	if(bodytemperature < minbodytemp)
		adjustBruteLoss(20)
	else if(bodytemperature > maxbodytemp)
		adjustBruteLoss(20)

#undef SPINNING_WEB
#undef LAYING_EGGS
#undef MOVING_TO_TARGET
#undef SPINNING_COCOON
