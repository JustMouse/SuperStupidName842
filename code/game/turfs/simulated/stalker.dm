/turf/simulated/wall/stalker
	canSmoothWith = list(
	/turf/simulated/wall/stalker/beton,
	/turf/simulated/wall/stalker/bricks,
	/turf/simulated/wall/stalker/bricks_yellow,
	/turf/simulated/wall/stalker/bricks_white,
	/turf/simulated/wall/stalker/beton_agro
	///obj/structure/stalker/okno/whitebrick/odin,
	///obj/structure/stalker/okno/whitebrick/dva,
	///obj/structure/stalker/okno/whitebrick/tri,
	///obj/structure/stalker/okno/whitebrick/double1,
	///obj/structure/stalker/okno/whitebrick/double2,
	///obj/structure/stalker/okno/redbrick/odin,
	///obj/structure/stalker/okno/redbrick/dva,
	///obj/structure/stalker/okno/redbrick/double1,
	///obj/structure/stalker/okno/redbrick/double2)
	)
	smooth = SMOOTH_TRUE

/turf/simulated/wall/stalker/beton
	name = "wall"
	desc = "A huge chunk of wall"
	icon = 'icons/turf/walls/beton_tg.dmi'
	icon_state = "beton"
	walltype = "beton"
	canSmoothWith = list(
	/turf/simulated/wall/stalker/beton,
	/turf/simulated/wall/stalker/beton_agro
	)

/turf/simulated/wall/stalker/bricks
	name = "wall"
	desc = "A huge chunk of wall"
	icon = 'icons/turf/walls/bricks_tg.dmi'
	icon_state = "bricks"
	walltype = "brick"
	canSmoothWith = list(
	/turf/simulated/wall/stalker/bricks
	)

/turf/simulated/wall/stalker/bricks_yellow
	name = "wall"
	desc = "A huge chunk of wall"
	icon = 'icons/turf/walls/bricks_tg_yellow.dmi'
	icon_state = "bricks"
	walltype = "yellowbrick"
	canSmoothWith = list(
	/turf/simulated/wall/stalker/bricks_yellow
	)

/turf/simulated/wall/stalker/bricks_white
	name = "wall"
	desc = "A huge chunk of wall"
	icon = 'icons/turf/walls/bricks_tg_white.dmi'
	icon_state = "bricks"
	walltype = "whitebrick"
	canSmoothWith = list(
	/turf/simulated/wall/stalker/bricks_white
	)

/turf/simulated/wall/stalker/beton_agro
	name = "wall"
	desc = "A huge chunk of wall"
	icon = 'icons/turf/walls/beton_w_tg.dmi'
	icon_state = "beton"
	walltype = "betonagro"
	canSmoothWith = list(
	/turf/simulated/wall/stalker/beton_agro
	)

/turf/simulated/wall/stalker/ship
	name = "hull"
	desc = "A huge chunk of hull"
	icon = 'icons/stalker/barzha.dmi'
	icon_state = "hull"
	walltype = "barzha"
	canSmoothWith = list(/turf/simulated/wall/stalker/ship)
/*
/turf/simulated/wall/stalker/window
	name = "Window"
	desc = "Старое дерев&#255;нное окно."
	eng_desc = "Old wooden window."
	icon = 'icons/stalker/decor2.dmi'
	pass_flags = LETPASSTHROW
	opacity = 1

/turf/simulated/wall/stalker/window/wood/red
	icon_state = "w_wood_redbrick"

/turf/simulated/wall/stalker/window/wood/white
	icon_state = "w_wood_whitebrick"
*/