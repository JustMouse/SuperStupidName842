/obj/structure/stalker/window/MouseDrop_T(atom/movable/O, mob/user)
	..()
//	if(!can_climb_over)
//		return
	if(ismob(O) && user == O && ishuman(user))
		if(user.canmove)
			climb_over_window(user)
			return
	if ((!( istype(O, /obj/item/weapon) ) || user.get_active_hand() != O))
		return
	if(isrobot(user))
		return
	if(!user.drop_item())
		return
	if (O.loc != src.loc)
		step(O, get_dir(O, src))
	return

/obj/structure/stalker/window/CanPass(atom/movable/mover, turf/target)
	if(istype(mover) && mover.checkpass(PASSTABLE))
		return 1
//	if(locate(/obj/structure/stalker/window) in get_turf(target))
//		return 1
	else
		return !density

/obj/structure/stalker/window/proc/climb_over_window(mob/user)
//	src.add_fingerprint(user)
	user.visible_message("<span class='warning'>[user] starts climbing over onto [src].</span>", \
								"<span class='notice'>You start climbing over onto [src]...</span>")
//	if(user.restrained())
	if(do_mob(user, user, climb_time))
		if(src.loc)
			var/t_dir = get_dir(user,src.loc)
			density = 0
			if(can_climb_over)
				step(user,t_dir)
				user.visible_message("<span class='warning'>[user] climb over onto [src].</span>", \
									"<span class='notice'>You climb over [src].</span>")
				add_logs(user, src, "climbed onto")
				user.Stun(climb_time/10)
				spawn(climb_time) step(user,t_dir)
			else
				user << "<span class='warning'>You fail to climb onto [src].</span>"
			density = 1
			return 1
	return 0