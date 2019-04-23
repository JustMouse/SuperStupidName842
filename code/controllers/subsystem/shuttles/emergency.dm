/obj/docking_port/mobile/emergency
	name = "emergency shuttle"
	id = "emergency"
	dwidth = 9
	width = 22
	height = 11
	dir = 4
	travelDir = -90
	roundstart_move = "emergency_away"
	var/sound_played = 0 //If the launch sound has been sent to all players on the shuttle itself

/obj/docking_port/mobile/emergency/New()
	..()
	SSshuttle.emergency = src

/obj/docking_port/mobile/emergency/timeLeft(divisor)
	if(divisor <= 0)
		divisor = 10
	if(!timer)
		return round(SSshuttle.emergencyCallTime/divisor, 1)

	var/dtime = world.time - timer
	switch(mode)
		if(SHUTTLE_ESCAPE)
			dtime = max(SSshuttle.emergencyEscapeTime - dtime, 0)
		if(SHUTTLE_DOCKED)
			dtime = max(SSshuttle.emergencyDockTime - dtime, 0)
		else
			dtime = max(SSshuttle.emergencyCallTime - dtime, 0)
	return round(dtime/divisor, 1)

/obj/docking_port/mobile/emergency/request(obj/docking_port/stationary/S, coefficient=1, area/signalOrigin, reason, redAlert)
	SSshuttle.emergencyCallTime = initial(SSshuttle.emergencyCallTime) * coefficient
	switch(mode)
		if(SHUTTLE_RECALL)
			mode = SHUTTLE_CALL
			timer = world.time - timeLeft(1)
		if(SHUTTLE_IDLE)
			mode = SHUTTLE_CALL
			timer = world.time
		if(SHUTTLE_CALL)
			if(world.time < timer)	//this is just failsafe
				timer = world.time
		else
			return

	if(prob(70))
		SSshuttle.emergencyLastCallLoc = signalOrigin
	else
		SSshuttle.emergencyLastCallLoc = null

	priority_announce("The emergency shuttle has been called. [redAlert ? "Red Alert state confirmed: Dispatching priority shuttle. " : "" ]It will arrive in [timeLeft(600)] minutes.[reason][SSshuttle.emergencyLastCallLoc ? "\n\nCall signal traced. Results can be viewed on any communications console." : "" ]", null, 'sound/AI/shuttlecalled.ogg', "Priority")

/obj/docking_port/mobile/emergency/cancel(area/signalOrigin)
	if(mode != SHUTTLE_CALL)
		return

	timer = world.time - timeLeft(1)
	mode = SHUTTLE_RECALL

	if(prob(70))
		SSshuttle.emergencyLastCallLoc = signalOrigin
	else
		SSshuttle.emergencyLastCallLoc = null
	priority_announce("The emergency shuttle has been recalled.[SSshuttle.emergencyLastCallLoc ? " Recall signal traced. Results can be viewed on any communications console." : "" ]", null, 'sound/AI/shuttlerecalled.ogg', "Priority")

/*
/obj/docking_port/mobile/emergency/findTransitDock()
	. = SSshuttle.getDock("emergency_transit")
	if(.)	return .
	return ..()
*/

/obj/docking_port/mobile/emergency/proc/open_dock()
	for(var/obj/machinery/door/poddoor/shuttledock/D in airlocks)
		var/turf/T = get_step(D, D.checkdir)
		if(!istype(T,/turf/space))
			spawn(0)
				D.open()

/obj/docking_port/mobile/pod
	name = "escape pod"
	id = "pod"
	dwidth = 1
	width = 3
	height = 4

/obj/docking_port/mobile/pod/request()
	if(security_level == SEC_LEVEL_RED || security_level == SEC_LEVEL_DELTA && z == ZLEVEL_STATION)
		return ..()

/obj/docking_port/mobile/pod/New()
	if(id == "pod")
		WARNING("[type] id has not been changed from the default. Use the id convention \"pod1\" \"pod2\" etc.")
	..()

/obj/docking_port/mobile/pod/cancel()
	return

/obj/machinery/computer/shuttle/pod
	name = "pod control computer"
	admin_controlled = 1
	shuttleId = "pod"
	possible_destinations = "pod_asteroid"
	icon = 'icons/obj/terminals.dmi'
	icon_state = "dorm_available"
	density = 0

/obj/machinery/computer/shuttle/pod/update_icon()
	return

/obj/docking_port/stationary/random
	name = "escape pod"
	id = "pod"
	dwidth = 1
	width = 3
	height = 4
	var/target_area = /area/mine/unexplored

/obj/docking_port/stationary/random/initialize()
	..()
	var/list/turfs = get_area_turfs(target_area)
	var/turf/T = pick(turfs)
	src.loc = T

//Pod suits/pickaxes


/obj/item/clothing/head/helmet/space/orange
	name = "emergency space helmet"
	icon_state = "syndicate-helm-orange"
	item_state = "syndicate-helm-orange"

/obj/item/clothing/suit/space/orange
	name = "emergency space suit"
	icon_state = "syndicate-orange"
	item_state = "syndicate-orange"
	slowdown = 3

/obj/item/weapon/pickaxe/emergency
	name = "emergency disembarkation tool"
	desc = "For extracting yourself from rough landings."

/obj/item/weapon/storage/pod
	name = "emergency space suits"
	desc = "A wall mounted safe containing space suits. Will only open in emergencies."
	anchored = 1
	density = 0
	icon = 'icons/obj/storage.dmi'
	icon_state = "safe"

/obj/item/weapon/storage/pod/New()
	..()
	new /obj/item/clothing/head/helmet/space/orange(src)
	new /obj/item/clothing/head/helmet/space/orange(src)
	new /obj/item/clothing/suit/space/orange(src)
	new /obj/item/clothing/suit/space/orange(src)
	new /obj/item/clothing/mask/gas(src)
	new /obj/item/clothing/mask/gas(src)
	new /obj/item/weapon/tank/internals/air(src)
	new /obj/item/weapon/tank/internals/air(src)
	new /obj/item/weapon/pickaxe/emergency(src)
	new /obj/item/weapon/pickaxe/emergency(src)
	new /obj/item/weapon/survivalcapsule(src)

/obj/item/weapon/storage/pod/attackby(obj/item/weapon/W, mob/user, params)
	return

/obj/item/weapon/storage/pod/MouseDrop(over_object, src_location, over_location)
	if(security_level == SEC_LEVEL_RED || security_level == SEC_LEVEL_DELTA)
		return ..()
	else
		usr << "The storage unit will only unlock during a Red or Delta security alert."

/obj/item/weapon/storage/pod/attack_hand(mob/user)
	return
