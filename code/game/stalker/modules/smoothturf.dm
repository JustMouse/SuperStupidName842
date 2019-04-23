//—оздаЄм эффект сглаживани€ тайлов, использу€ overlay на смежных тайлов

/turf/stalker/proc/adjacent(list/adjacentturfs,name_icon, icon_path, randomize=0, variations=1)
	if(!icon_path)
		return
	if(randomize)
		if(variations)
			icon_state = "[name_icon][rand(1, variations)]"
		else
			icon_state = "[name_icon]"
	if(!adjacentturfs || !adjacentturfs.len)
		adjacentturfs = list()
		adjacentturfs.len = 8
		adjacentturfs[NORTH] = image(icon_path, "[name_icon]_side_n", layer = 2.01)
		adjacentturfs[SOUTH] = image(icon_path, "[name_icon]_side_s", layer = 2.01)
		adjacentturfs[EAST] = image(icon_path, "[name_icon]_side_e", layer = 2.01)
		adjacentturfs[WEST] = image(icon_path, "[name_icon]_side_w", layer = 2.01)
		adjacentturfs[NORTHEAST] = image(icon_path, "[name_icon]_side_ne", layer = 2.01)
		adjacentturfs[NORTHWEST] = image(icon_path, "[name_icon]_side_nw", layer = 2.01)
		adjacentturfs[SOUTHEAST] = image(icon_path, "[name_icon]_side_se", layer = 2.01)
		adjacentturfs[SOUTHWEST] = image(icon_path, "[name_icon]_side_sw", layer = 2.01)

	spawn
		var/turf/T
		for(var/i = 0, i <= 8, i++)
			if(!get_step(src, i))
				continue
			if(overlay_priority > get_step(src, i).overlay_priority)
				T = get_step(src, i)
				if(T)
					T.overlays += adjacentturfs[i]
	return