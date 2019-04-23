#define NORTH_EDGING	"north"
#define SOUTH_EDGING	"south"
#define EAST_EDGING		"east"
#define WEST_EDGING		"west"

/turf/simulated/floor/plating/asteroid/snow/lite
	name = "снег"
	desc = "Выгл&#255;дит холодным."
	icon = 'icons/turf/snow.dmi'
	baseturf = /turf/simulated/floor/plating/asteroid/snow
	icon_state = "snow"
	icon_plating = "snow"
	temperature = 293
	slowdown = 4
	environment_type = "snow"
	dug = 1


/obj/structure/grille/stalker
	desc = "Хороший, крепкий железный забор."
	name = "fence"
	icon = 'icons/stalker/structure.dmi'
	icon_state = "fence1"
	density = 1
	anchored = 1
	flags = CONDUCT
	layer = 4.02
	health = 10000000

/obj/structure/grille/stalker/New()
	if(icon_state == "fence5")
		density = 0
	pixel_y = -1
	..()

/obj/structure/grille/stalker/attack_hand(mob/user)
	world << "[user]"
	if(icon_state == "fence4")
		playsound(user, "rustle")
		density = 1
		icon_state = "fence6"
	if(icon_state == "fence6")
		playsound(user, "rustle")
		density = 0
		icon_state = "fence4"

/obj/structure/grille/stalker/CanPass(atom/movable/mover, turf/target, height=0)
	if(istype(mover, /obj/item/projectile) && density)
		if(src == /obj/structure/grille/stalker/beton)
			return 0
		return 1
	switch(icon_state)
		if("fence0","fence1","fence6","koluchka_horizontalcenter")
			if(get_dir(loc, target) == dir)
				return !density
			else
				return 1
		if("fence5","fence4")
			return 1
		if("fence3","fence2")
			return 0
		else
			return 0

/obj/structure/grille/stalker/CheckExit(atom/movable/O as mob|obj, target)
	if(istype(O, /obj/item/projectile) && density)
		if(src == /obj/structure/grille/stalker/beton)
			return 0
		return 1
	if((icon_state == "fence0") || (icon_state == "fence1"))
		if(get_dir(loc, target) == dir)
			return 0
	return 1

/obj/structure/grille/stalker/ex_act(severity, target)
	return

/obj/structure/grille/stalker/attack_paw(mob/user)
	return

/obj/structure/grille/stalker/attack_hand(mob/living/user)
	user.do_attack_animation(src)
	return

/obj/structure/grille/stalker/attack_animal(var/mob/living/simple_animal/M)
	M.do_attack_animation(src)
	return

/obj/structure/grille/stalker/bullet_act(var/obj/item/projectile/Proj)
	if(!Proj)
		return
	..()
	if((Proj.damage_type != STAMINA)) //Grilles can't be exhausted to death
		return
	return

/obj/structure/grille/stalker/attackby(obj/item/weapon/W, mob/user, params)
	return

/obj/structure/grille/hitby(AM as mob|obj)
	..()
	return

/obj/structure/grille/stalker/wood
	desc = "Хороший, старый дерев&#255;нный забор."
	icon_state = "zabor_horizontal1"
	density = 1
	opacity = 0


/obj/structure/grille/stalker/wood/hitby(AM as mob|obj)
	playsound(loc, 'sound/effects/woodhit2.ogg', 80, 1)

/obj/structure/grille/stalker/koluchka
	name = "barbed wire"
	desc = "Опасно, колюча&#255; проволка."
	eng_desc = "Beware the barbed wire!"
	icon_state = "koluchka_horizontalcenter"
	density = 1

/obj/structure/grille/stalker/beton
	icon = 'icons/stalker/beton_zabor.dmi'
	desc = "Слишком крепкий."
	icon_state = "1"
	density = 1
	opacity = 0

/obj/structure/grille/stalker/beton/hitby(AM as mob|obj)
	playsound(loc, 'sound/effects/concrethit.ogg', 80, 1)

/obj/structure/grille/stalker/wood/green
	icon = 'icons/stalker/green_zabor.dmi'
	desc = "Зелённый забор. Лучше, чем серый."
	icon_state = "1"
	layer = 6.1

/turf/stalker
	name = "stalker turf"
	icon = 'icons/stalker/grass.dmi'

/turf/stalker/floor
	name = "Grass"
	icon = 'icons/stalker/grass.dmi'
	icon_state = "grass1"
	layer = TURF_LAYER
	plane = GAME_PLANE
	overlay_priority = 0

/turf/stalker/floor/digable


/turf/stalker/floor/digable/grass
	icon = 'icons/stalker/dirt.dmi'
	icon_state = "grass1"

/turf/stalker/floor/digable/grass/dump
	icon = 'icons/stalker/dirt.dmi'
	icon_state = "dump_grass1"
/*
/turf/stalker/floor/digable/grass/dump/New()
	icon_state = "dump_grass[rand(1, 3)]"
*/
/turf/stalker/floor/digable/gryaz_rocky
	icon_state = "gryaz_rocky1"

/turf/stalker/floor/digable/gryaz_rocky/New()
	icon_state = "gryaz_rocky[rand(1, 3)]"

/turf/stalker/floor/sidor
	name = "floor"
	icon = 'icons/turf/beton.dmi'
	icon_state = "sidorpol"

/obj/machinery/door/unpowered/stalker
	icon = 'icons/turf/beton.dmi'

/turf/stalker/floor/asphalt
	name = "road"
	icon = 'icons/stalker/Prishtina/asphalt.dmi'
	icon_state = "road1"
	layer = 2
	overlay_priority = 4

/turf/stalker/floor/asphalt/var/list/AsphaltEdgeCache

/turf/stalker/floor/asphalt/New() //stalkerturf
	icon_state = "road[rand(1, 3)]"
	if(!AsphaltEdgeCache || !AsphaltEdgeCache.len)
		AsphaltEdgeCache = list()
		AsphaltEdgeCache.len = 10
		AsphaltEdgeCache[NORTH] = image('icons/stalker/Prishtina/asphalt.dmi', "road_n", layer = 2.04)
		AsphaltEdgeCache[SOUTH] = image('icons/stalker/Prishtina/asphalt.dmi', "road_s", layer = 2.04)
		AsphaltEdgeCache[EAST] = image('icons/stalker/Prishtina/asphalt.dmi', "road_e", layer = 2.04)
		AsphaltEdgeCache[WEST] = image('icons/stalker/Prishtina/asphalt.dmi', "road_w", layer = 2.04)
		AsphaltEdgeCache[NORTHEAST] = image('icons/stalker/Prishtina/asphalt.dmi', "road_ne", layer = 2.04)
		AsphaltEdgeCache[NORTHWEST] = image('icons/stalker/Prishtina/asphalt.dmi', "road_nw", layer = 2.04)
		AsphaltEdgeCache[SOUTHEAST] = image('icons/stalker/Prishtina/asphalt.dmi', "road_se", layer = 2.04)
		AsphaltEdgeCache[SOUTHWEST] = image('icons/stalker/Prishtina/asphalt.dmi', "road_sw", layer = 2.04)

	spawn(4)
		var/turf/T
		for(var/i in alldirs)
			world << "[get_step(src, i)] [i]"
			if(!get_step(src, i))
				continue
			world << "[(overlay_priority > get_step(src, i).overlay_priority)]"
			if(overlay_priority > get_step(src, i).overlay_priority) //		for(var/i in alldirs)
				T = get_step(src, i)
				world << "[T]"
				if(T)
					T.overlays += AsphaltEdgeCache[i]
	return

/turf/stalker/floor/trail
	name = "road"
	icon = 'icons/stalker/trail.dmi'
	icon_state = "trail"
	overlay_priority = 2

/turf/stalker/floor/trail/var/list/TrailEdgeCache

/turf/stalker/floor/trail/New()
	if(!TrailEdgeCache || !TrailEdgeCache.len)
		TrailEdgeCache = list()
		TrailEdgeCache.len = 10
		TrailEdgeCache[NORTH] = image('icons/stalker/trail.dmi', "trail_n", layer = 2.02)
		TrailEdgeCache[SOUTH] = image('icons/stalker/trail.dmi', "trail_s", layer = 2.02)
		TrailEdgeCache[EAST] = image('icons/stalker/trail.dmi', "trail_e", layer = 2.02)
		TrailEdgeCache[WEST] = image('icons/stalker/trail.dmi', "trail_w", layer = 2.02)
		TrailEdgeCache[NORTHEAST] = image('icons/stalker/trail.dmi', "trail_ne", layer = 2.02)
		TrailEdgeCache[NORTHWEST] = image('icons/stalker/trail.dmi', "trail_nw", layer = 2.02)
		TrailEdgeCache[SOUTHEAST] = image('icons/stalker/trail.dmi', "trail_se", layer = 2.02)
		TrailEdgeCache[SOUTHWEST] = image('icons/stalker/trail.dmi', "trail_sw", layer = 2.02)

	spawn(2)
		var/turf/T
		for(var/i in alldirs)
			if(!get_step(src, i))
				continue
			if(overlay_priority > get_step(src, i).overlay_priority)
				T = get_step(src, i)
				if(T)
					T.overlays += TrailEdgeCache[i]
	return

/turf/stalker/floor/road
	name = "road"
	icon = 'icons/stalker/road.dmi'
	icon_state = "road2"
	layer = 2
	overlay_priority = 3

/turf/stalker/floor/road/var/list/WhiteRoadCache

/turf/stalker/floor/road/New()
	switch(rand(1, 100))
		if(1 to 65)
			icon_state = "road2"
		if(66 to 85)
			icon_state = "road1"
		if(86 to 90)
			icon_state = "road3"
		if(91 to 95)
			icon_state = "road4"
		if(96 to 100)
			icon_state = "road5"

	if(!WhiteRoadCache || !WhiteRoadCache.len)
		WhiteRoadCache = list()
		WhiteRoadCache.len = 10
		WhiteRoadCache[NORTH] = image('icons/stalker/road.dmi', "road_n", layer = 2.03)
		WhiteRoadCache[SOUTH] = image('icons/stalker/road.dmi', "road_s", layer = 2.03)
		WhiteRoadCache[EAST] = image('icons/stalker/road.dmi', "road_e", layer = 2.03)
		WhiteRoadCache[WEST] = image('icons/stalker/road.dmi', "road_w", layer = 2.03)
		WhiteRoadCache[NORTHEAST] = image('icons/stalker/road.dmi', "road_ne", layer = 2.03)
		WhiteRoadCache[NORTHWEST] = image('icons/stalker/road.dmi', "road_nw", layer = 2.03)
		WhiteRoadCache[SOUTHEAST] = image('icons/stalker/road.dmi', "road_se", layer = 2.03)
		WhiteRoadCache[SOUTHWEST] = image('icons/stalker/road.dmi', "road_sw", layer = 2.03)

	spawn
		var/turf/T
		for(var/i in alldirs)
			if(!get_step(src, i))
				continue
			if(overlay_priority > get_step(src, i).overlay_priority)
				T = get_step(src, i)
				if(T)
					T.overlays += WhiteRoadCache[i]
	return

/turf/stalker/floor/dirt
	name = "dirt"
	icon = 'icons/stalker/dirt.dmi'
	icon_state = "dirt1"
	layer = 2.01
	overlay_priority = 1

/turf/stalker/floor/dirt/var/list/DirtEdgeCache

/turf/stalker/floor/dirt/New()
	icon_state = "dirt[rand(1, 3)]"
	if(!DirtEdgeCache || !DirtEdgeCache.len)
		DirtEdgeCache = list()
		DirtEdgeCache.len = 10
		DirtEdgeCache[NORTH] = image('icons/stalker/dirt.dmi', "dirt_n", layer = 2.01)
		DirtEdgeCache[SOUTH] = image('icons/stalker/dirt.dmi', "dirt_s", layer = 2.01)
		DirtEdgeCache[EAST] = image('icons/stalker/dirt.dmi', "dirt_e", layer = 2.01)
		DirtEdgeCache[WEST] = image('icons/stalker/dirt.dmi', "dirt_w", layer = 2.01)
		DirtEdgeCache[NORTHEAST] = image('icons/stalker/dirt.dmi', "dirt_ne", layer = 2.01)
		DirtEdgeCache[NORTHWEST] = image('icons/stalker/dirt.dmi', "dirt_nw", layer = 2.01)
		DirtEdgeCache[SOUTHEAST] = image('icons/stalker/dirt.dmi', "dirt_se", layer = 2.01)
		DirtEdgeCache[SOUTHWEST] = image('icons/stalker/dirt.dmi', "dirt_se", layer = 2.01)

	spawn(1)
		var/turf/T
		for(var/i in alldirs)
			if(!get_step(src, i))
				continue
			if(overlay_priority > get_step(src, i).overlay_priority)
				T = get_step(src, i)
				if(T)
					T.overlays += DirtEdgeCache[i]
	return

/turf/stalker/floor/dirt/dirt2
	icon_state = "dirt2"

/turf/stalker/floor/dirt/dirt3
	icon_state = "dirt3"

/obj/structure/stalker/rails
	name = "rails"
	icon = 'icons/stalker/rails.dmi'
	icon_state = "sp"
	layer = 2.01
	anchored = 1
	density = 0
	opacity = 0

/turf/stalker/floor/plasteel
	name = "floor"
	icon = 'icons/stalker/floor.dmi'

/turf/stalker/floor/plasteel/plita
	icon_state = "plita1"

/turf/stalker/floor/plasteel/plita/New()
	icon_state = "plita[rand(1, 4)]"

/turf/stalker/floor/plasteel/plitochka
	icon_state = "plitka1"

/turf/stalker/floor/plasteel/plitochka/New()
	icon_state = "plitka[rand(1, 7)]"

/turf/stalker/floor/plasteel/plitka
	icon_state = "plitka_old1"

/turf/stalker/floor/plasteel/plitka/New()
	icon_state = "plitka_old[rand(1, 8)]"

/turf/stalker/floor/water
	name = "water"
	icon = 'icons/stalker/water.dmi'
	icon_state = "water"
	layer = TURF_LAYER
	overlay_priority = 5
	var/busy = 0

/turf/stalker/floor/water/attack_hand(mob/living/user)
	if(!user || !istype(user))
		return
	if(!iscarbon(user))
		return
	if(!Adjacent(user))
		return

	if(busy)
		user << "<span class='notice'>Кто-то уже моетс&#255; здесь!</span>"
		return
	var/selected_area = parse_zone(user.zone_sel.selecting)
	var/washing_face = 0
	if(selected_area in list("head", "mouth", "eyes"))
		washing_face = 1
	user.visible_message("<span class='notice'>[user] начинает мыть [washing_face ? "face" : "hands"]...</span>", \
						"<span class='notice'>Вы начинаете мыть [washing_face ? "face" : "hands"]...</span>")
	busy = 1

	if(!do_after(user, 40, target = src))
		busy = 0
		return

	busy = 0

	user.visible_message("<span class='notice'>[user] моет [washing_face ? "face" : "hands"], использу&#255; [src].</span>", \
						"<span class='notice'>Вы моете своё [washing_face ? "face" : "hands"], использу&#255; [src].</span>")
	if(washing_face)
		if(ishuman(user))
			var/mob/living/carbon/human/H = user
			H.lip_style = null //Washes off lipstick
			H.lip_color = initial(H.lip_color)
			H.regenerate_icons()
		user.drowsyness -= rand(2,3) //Washing your face wakes you up if you're falling asleep
		user.drowsyness = Clamp(user.drowsyness, 0, INFINITY)
	else
		user.clean_blood()


/turf/stalker/floor/water/attackby(obj/item/O, mob/user, params)
	if(busy)
		user << "<span class='warning'>Кто-то уже моется здесь!</span>"
		return

	if(istype(O, /obj/item/weapon/reagent_containers))
		var/obj/item/weapon/reagent_containers/RG = O
		if(RG.flags & OPENCONTAINER)
			RG.reagents.add_reagent("water", min(RG.volume - RG.reagents.total_volume, RG.amount_per_transfer_from_this))
			user << "<span class='notice'>You fill [RG] from [src].</span>"
			return

	if(istype(O, /obj/item/weapon/melee/baton))
		var/obj/item/weapon/melee/baton/B = O
		if(B.bcell)
			if(B.bcell.charge > 0 && B.status == 1)
				flick("baton_active", src)
				var/stunforce = B.stunforce
				user.Stun(stunforce)
				user.Weaken(stunforce)
				user.stuttering = stunforce
				B.deductcharge(B.hitcost)
				user.visible_message("<span class='warning'>[user] shocks themself while attempting to wash the active [B.name]!</span>", \
									"<span class='userdanger'>You unwisely attempt to wash [B] while it's still on.</span>")
				playsound(src, "sparks", 50, 1)
				return

	if(istype(O, /obj/item/weapon/mop))
		O.reagents.add_reagent("water", 5)
		user << "<span class='notice'>You wet [O] in [src].</span>"
		playsound(loc, 'sound/effects/slosh.ogg', 25, 1)

	var/obj/item/I = O
	if(!I || !istype(I))
		return
	if(I.flags & ABSTRACT) //Abstract items like grabs won't wash. No-drop items will though because it's still technically an item in your hand.
		return

	user << "<span class='notice'>Вы начали мыть [I]...</span>"
	busy = 1
	if(!do_after(user, 40, target = src))
		busy = 0
		return
	busy = 0
	O.clean_blood()
	user.visible_message("<span class='notice'>[user] помыл [I], используя [src].</span>", \
						"<span class='notice'>Вы помыли [I], используя [src].</span>")

/turf/stalker/floor/water/Entered(atom/movable/A)
	..()
	if(istype(A, /mob/living))
		var/mob/living/L = A
		L.update_top_overlay()
		if(istype(A, /mob/living/carbon/human))
			var/mob/living/carbon/human/H = A
			if(H.shoes)
				H.shoes.clean_blood()
			if(H.fire_stacks)
				H.fire_stacks = 0
				H.ExtinguishMob()

/turf/stalker/floor/water/Exited(atom/movable/A)
	..()
	if(istype(A, /mob/living))
		var/mob/living/L = A
		L.update_top_overlay()
		flick("water_splash_movement", src)

/turf/stalker/floor/water/var/list/WaterEdgeCache

/turf/stalker/floor/water/New()
	if(!WaterEdgeCache || !WaterEdgeCache.len)
		WaterEdgeCache = list()
		WaterEdgeCache.len = 10
		WaterEdgeCache[NORTH] = image('icons/stalker/water.dmi', "water_n", layer = 2.05)
		WaterEdgeCache[SOUTH] = image('icons/stalker/water.dmi', "water_s", layer = 2.05)
		WaterEdgeCache[EAST] = image('icons/stalker/water.dmi', "water_e", layer = 2.05)
		WaterEdgeCache[WEST] = image('icons/stalker/water.dmi', "water_w", layer = 2.05)
		WaterEdgeCache[NORTHEAST] = image('icons/stalker/water.dmi', "water_ne", layer = 2.05)
		WaterEdgeCache[NORTHWEST] = image('icons/stalker/water.dmi', "water_nw", layer = 2.05)
		WaterEdgeCache[SOUTHEAST] = image('icons/stalker/water.dmi', "water_se", layer = 2.05)
		WaterEdgeCache[SOUTHWEST] = image('icons/stalker/water.dmi', "water_sw", layer = 2.05)

	spawn(5)
		var/turf/T
		for(var/i in alldirs)
			if(!get_step(src, i))
				continue
			if(overlay_priority > get_step(src, i).overlay_priority)
				T = get_step(src, i)
				if(T)
					T.overlays += WaterEdgeCache[i]
	return

/turf/stalker/floor/wood
	icon = 'icons/stalker/floor.dmi'
	name = "floor"

/turf/stalker/floor/wood/doski
	icon_state = "dosochki"
	overlay_priority = 6

/turf/stalker/floor/wood/doski/Entered(atom/movable/A)
	if(istype(A, /mob/living))
		playsound(src, get_sfx("woodfootsteps"), 50, 1)
		A.pixel_y += 10
		A.layer = 4.02

/turf/stalker/floor/wood/doski/Exited(atom/movable/A)
	if(istype(A, /mob/living))
		A.pixel_y -= 10
		A.layer = MOB_LAYER

/turf/stalker/floor/wood/brown
	icon_state = "wooden_floor"

/turf/stalker/floor/wood/grey
	icon_state = "wooden_floor2"

/turf/stalker/floor/wood/black
	icon_state = "wooden_floor3"

/turf/stalker/floor/wood/oldgor
	icon_state = "wood1"

/turf/stalker/floor/wood/oldvert
	icon_state = "woodd1"

/turf/stalker/floor/agroprom/beton
	name = "floor"
	icon = 'icons/stalker/pol_agroprom.dmi'
	icon_state = "beton1"

/turf/stalker/floor/agroprom/beton/New()
	icon_state = "beton[rand(1, 4)]"

/turf/stalker/floor/agroprom/gryaz
	name = "dirt"
	icon = 'icons/stalker/pol_agroprom.dmi'
	icon_state = "gryaz1"

/turf/stalker/floor/agroprom/gryaz/New()
	icon_state = "gryaz[rand(1, 11)]"

/turf/stalker/floor/lattice
	name = "lattice"
	icon = 'icons/stalker/floor.dmi'
	icon_state = "lattice_new"
	overlay_priority = 100
/*
/turf/stalker/floor/lattice/New()
	icon_state = "lattice[rand(1, 4)]"
*/

/turf/stalker/floor/plasteel/plita/orange
	icon_state = "plita_orange"