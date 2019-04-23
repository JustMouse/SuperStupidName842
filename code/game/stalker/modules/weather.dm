////Погода////

var/datum/subsystem/weather/Weather

/datum/subsystem/weather
	name = "Weather"
	var/type_w = "Пасмурно"
	var/enable = 1
	var/lasttime = 0
	var/interval = 0
	var/stage = "I"
	var/isweather = 0
	var/list/rains_1
	var/list/rains_2
	var/list/rains_3
	var/filling = 0
	var/timer = 1
	var/interval_rand

/datum/subsystem/weather/New()
	NEW_SS_GLOBAL(Weather)
	interval = 12000 + rand(600, 12000)

/datum/subsystem/weather/fire()
	if(!enable)
		stage = "I"
		isweather = 0
		return
	if(timer)
		if(world.time <= lasttime + interval)
			return
	if(!timer) timer = 1
	var/area/stalker/blowout/outdoor/A
	var/area/stalker/buildings/AB
	if(!isweather) isweather = 1
//Начало
	if(stage == "I")
		stage = "II"
		for(var/mob/mob in mob_list)
			if(mob.z >= 2)

				mob.ambient_weather1 = sound('sound/stalker/ambience/weather/thunder_far.ogg',0,0,AMBIENT_WEATHER,80)
				mob << mob.ambient_weather1
				spawn(rand(50,100))
					mob << mob.ambient_weather1
				spawn(rand(200,290))
					mob << mob.ambient_weather1

		interval_rand = rand(300,1000)
//Середина
	if((stage == "II") && (world.time > lasttime + interval + interval_rand))
		stage = "III"
		rains_1 = list()
		rains_2 = list()
		rains_3 = list()
		filling = 50
		interval_rand = 0
		for(var/mob/mob in mob_list)
			mob.ambient_weather1 = sound('sound/stalker/ambience/weather/thunder_close.ogg',0,0,AMBIENT_WEATHER1,50)
			if((mob.z >= 2) || (get_turf(mob) in AB))
				mob.ambient_weather = sound('sound/stalker/ambience/weather/rain_in_building.ogg',1,0,AMBIENT_WEATHER,50)
			else
				mob.ambient_weather = sound('sound/stalker/ambience/weather/rain.ogg',1,0,AMBIENT_WEATHER,50)
			mob << mob.ambient_weather1
		for(A in world)
			for(var/turf/T in A)
				if(!((istype(T, /turf/simulated/wall)) || (istype(T, /turf/indestructible))))
					if(!(rains_3.len < filling))
						filling += 50
						sleep(1)
					if(rains_1.len < filling)
						rains_1.Add(new/obj/effect/rain(T))
						continue
					if(rains_2.len < filling)
						rains_2.Add(new/obj/effect/rain(T))
						continue
					if(rains_3.len < filling)
						rains_3.Add(new/obj/effect/rain(T))
						continue
//					else
//						spawn(10) rains.Add(new/obj/effect/rain(T))
		interval_rand = rand(4800,12000)
		filling = 50
	if((stage == "III") && (interval_rand))
		if(prob(2))
			for(var/mob/mob in mob_list)
				if(mob.z >= 2)
//				else
//					mob.ambient_weather = sound('sound/stalker/ambience/weather/rain.ogg',1,0,AMBIENT_WEATHER,50)
					mob << mob.ambient_weather1
//Конец
	if((stage == "III") && (world.time > lasttime + interval + interval_rand) && (filling == 50))
		stage = "I"
		lasttime = world.time
		filling = rains_1.len/6
		clear(rains_3)
		clear(rains_2)
		clear(rains_1)
		interval = 12000 + rand(600, 12000)
		isweather = 0
		interval_rand = 0

/datum/subsystem/weather/proc/clear(var/list/rains)
	filling = rains.len/6
	var/full_list = rains.len
	for(var/i in rains)
		qdel(i)
		if(full_list - filling >= rains.len)
			world << "[rains.len] [filling]"
			full_list = rains.len
			sleep(1)
	qdel(rains)

/////////
//Дождь//
/////////

/obj/effect/rain
	name = "дождь"
	desc = "...как слёзы в дожде..."
	icon = 'icons/stalker/rain.dmi'
	layer = 5
	mouse_opacity = 0

/obj/effect/rain/New()
	..()
	for(var/mob/mob in src.loc.contents)
		mob << mob.ambient_weather

/////////////
//Для мобов//
/////////////

/mob
	var/sound/ambient_weather = null //Звуки погоды
	var/sound/ambient_weather1 = null


/area/stalker/blowout/outdoor/Entered(O,oldloc)
	if(!istype(O,/mob))
		return
	var/mob/mob = O
	if((Weather.isweather == 1) && !(/obj/effect/rain in oldloc))
		mob.ambient_weather = sound('sound/stalker/ambience/weather/rain.ogg',1,0,AMBIENT_WEATHER,50)
		mob << mob.ambient_weather
	if((mob.ambient_weather) && (Weather.isweather == 1))
		mob.ambient_weather = null
		mob.ambient_weather1 = null
		mob << mob.ambient_weather
		mob << mob.ambient_weather1

/area/stalker/blowout/buildings/Entered(O, oldloc)
	if(!istype(O,/mob))
		return
	var/mob/mob = O
	if((Weather.isweather == 1) && !(/obj/effect/rain in oldloc))
		mob.ambient_weather = sound('sound/stalker/ambience/weather/rain_in_building.ogg',1,0,AMBIENT_WEATHER,50)
		mob << mob.ambient_weather
	if((mob.ambient_weather) && (Weather.isweather == 1))
		mob.ambient_weather = null
		mob.ambient_weather1 = null
		mob << mob.ambient_weather
		mob << mob.ambient_weather1

/datum/subsystem/weather/proc/StopWeather()
	set category = "Stalker"
	set name = "SetWeather"
	lasttime = world.time
	interval = 12000 + rand(600, 12000)
	stage = "I"

/datum/subsystem/weather/proc/start()
	enable = 1
	timer = 0

/client/proc/SetWeather()
	set category = "Stalker"
	set name = "SetWeather"
	Weather.type_w = input("Выбери погоду, ЛОХХХХХХХХ") in list("Доджь, по ебалу *ponch*","Пасмурно, в жопу Азика")

/client/proc/OptionWeather()
	set category = "Stalker"
	set name = "OptionWeather"
	debug_variables(Weather)