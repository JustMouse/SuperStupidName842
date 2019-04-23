/obj/structure/largecrate
	name = "large crate"
	desc = "A hefty wooden crate."
	icon = 'icons/obj/crates.dmi'
	icon_state = "densecrate"
	density = 1
	var/obj/item/weapon/paper/manifest/manifest

/obj/structure/largecrate/attackby(obj/item/weapon/W, mob/user, params)
	if(istype(W, /obj/item/weapon/crowbar))
		new /obj/item/stack/sheet/mineral/wood(src)
		var/turf/T = get_turf(src)
		for(var/atom/movable/AM in contents)
			AM.loc = T
		user.visible_message("[user] pries \the [src] open.", \
							 "<span class='notice'>You pry open \the [src].</span>", \
							 "<span class='italics'>You hear splitting wood.</span>")
		playsound(src.loc, 'sound/items/Deconstruct.ogg', 75, 1)
		qdel(src)
	else
		return attack_hand(user)

/obj/structure/largecrate/mule
	icon_state = "mulecrate"

