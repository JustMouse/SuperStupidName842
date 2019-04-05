/obj/structure/table/stalker
	smooth = SMOOTH_TRUE
	canSmoothWith = list(/obj/structure/table/stalker)
	pass_flags = LETPASSTHROW

/obj/structure/table/stalker/wood
	desc = "Обычный дерев&#255;нный слегка пошарпанный стол."
	eng_desc = "Simple table."
	icon = 'icons/obj/smooth_structures/stol_stalker.dmi'
	icon_state = "stol"
	deconstructable = 0
	smooth = SMOOTH_TRUE
	canSmoothWith = list(/obj/structure/table/stalker/wood)


/obj/structure/table/stalker/wood/bar
	desc = "Самодельна&#255; барна&#255; стойка"
	icon = 'icons/obj/smooth_structures/stol_stalker_bar.dmi'
	icon_state = "bar"
	smooth = SMOOTH_TRUE
	canSmoothWith = list(/obj/structure/table/stalker/wood/bar)

/obj/structure/table/stalker/wood/bar100rentgen
	desc = "Качественна&#255; барна&#255; стойка"
	icon = 'icons/stalker/structure/bartables.dmi'
	icon_state = "table"
	smooth = SMOOTH_FALSE

/obj/structure/stalker/window
	name = "Window"
	desc = "Старое дерев&#255;нное окно."
	eng_desc = "Old wooden window."
	icon = 'icons/stalker/decor2.dmi'
	pass_flags = LETPASSTHROW
	density = 1
	opacity = 0
	layer = 3
	var/climb_time = 20
	var/can_climb_over = 1

/obj/structure/stalker/window/wood //window1
	icon_state = "w_wood"

/obj/structure/stalker/window/medium //window2
	icon_state = "w_medium"

/obj/structure/stalker/window/big //window3
	icon_state = "w_big"

/obj/structure/stalker/window/big/b
	icon_state = "w_big_b"

/obj/structure/stalker/window/small //window4
	icon_state = "w_small"
