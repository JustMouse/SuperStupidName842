/obj/structure/stalker
	icon = 'icons/stalker/decor.dmi'
	density = 0
	anchored = 1
	layer = 3.1

/obj/structure/sign/vendor
	name = "vendor sign"
	desc = "There is a vendor this way!"
	icon = 'icons/stalker/decor.dmi'
	icon_state = "sign_vendor"
	density = 0

/obj/structure/sign/skadovsk_bar
	name = "�������� ����"
	desc = "There is a bar this way!"
	icon = 'icons/stalker/decor.dmi'
	icon_state = "sign_bar"
	density = 0

/obj/structure/stalker/radiation
	name = "���� ��������"
	desc = "���� ���� ����� &#255;��� �� ��&#255; �������."
	eng_desc = "This sign symbolise something."
	icon_state = "radiation_sign"
	density = 1
	pass_flags = LETPASSTHROW

/obj/structure/stalker/radiation/stop
	name = "��������"
	desc = "�� �������� �������� - \"����! ��������&#255; ����! ������ ��������!\"."
	eng_desc = "On the sign: \"Stop! Forbidden zone! No enterance!\"."
	icon_state = "stop_sign"

/obj/structure/stalker/water
	anchored = 1
	var/busy = 0

/obj/structure/stalker/water/luzha
	name = "����"
	desc = "�����������&#255; ����. ����, ����� ��, �� ����&#255; �����&#255;, �� ������&#255; ��� ����� ������� ��&#255;�� � ������ � ��� �����."
	eng_desc = "Water in this puddle is not very clean. But you can still wash your face or clothes with it."
	icon_state = "luzha"
	layer = 2.9

/obj/structure/stalker/water/luzha/Crossed(atom/movable/A)
	if(istype(A, /mob/living))
		playsound(src, get_sfx("waterfootsteps"), 40, 1)

/obj/structure/stalker/water/luzha/kap
	name = "����"
	desc = "�����������&#255; ����. ����, ����� ��, �� ����&#255; �����&#255;, �� ������&#255; ��� ����� ������� ��&#255;�� � ������ � ��� �����."
	eng_desc = "Water in this puddle is not very clean. But you can still wash your face or clothes with it."
	icon_state = "luzha_kap"

/obj/structure/stalker/cacheable/truba
	name = "�����"
	desc = "�����&#255; �����&#255; �����."
	eng_desc = "Old rusty pipe."
	icon_state = "truba"
	density = 0
	cache_size = 1
	layer = 4.1

/obj/structure/stalker/cacheable/truba/vert
	icon_state = "truba_v"

/obj/structure/stalker/cacheable/body
	name = "���� ��������"
	desc = "����������� ���� ��������."
	eng_desc = "Dead smelly stalker."
	icon_state = "deadbody1"
	density = 0
	cache_size = 2

/obj/structure/stalker/cacheable/body/New()
	..()
	icon_state = "deadbody[rand(1,6)]"

/obj/structure/stalker/cacheable/bochka
	name = "�����"
	desc = "�������&#255; ���������������&#255; �����."
	eng_desc = "Old steel barrel."
	icon_state = "bochka"
	density = 1
	cache_size = 2

/obj/structure/stalker/cacheable/bochka/red
	name = "�������&#255; �����"
	desc = "������&#255; �������&#255; �����."
	icon_state = "red_bochka"

/obj/structure/stalker/water/bochka
	name = "�����"
	desc = "�������&#255; �����, ����������&#255; �������� �����. ����� ����� ������&#255; ��� ����� ������� ��&#255;��."
	eng_desc = "Old steel barrel full of rainwater. You can wash your face o� clothes with it."
	icon_state = "bochka_s_vodoy"
	density = 1

/obj/structure/stalker/water/bochka/kap
	name = "�����"
	desc = "�������&#255; �����, ����������&#255; �������� �����. ����� ����� ������&#255; ��� ����� ������� ��&#255;��."
	eng_desc = "Old steel barrel full of rainwater. You can wash your face o� clothes with it."
	icon_state = "diryavaya_bochka_s_vodoy"


/obj/structure/stalker/cacheable/rozetka
	name = "�������"
	desc = "�����&#255; ��������&#255; �������."
	eng_desc = "Old soviet socket. Doesn't work."
	icon_state = "rozetka"
	density = 0
	cache_size = 0

/obj/structure/stalker/cacheable/krest
	name = "�����"
	desc = "�����&#255;���� �����. ������&#255;, ����� ���-�� �������."
	eng_desc = "Wooden cross. Looks like someone is burried here."
	icon_state = "krest"
	density = 0
	cache_size = 1

/obj/structure/stalker/cacheable/krest/bereza
	icon_state = "�������� �����"

/obj/structure/stalker/cacheable/komod
	name = "�����"
	desc = "������������ �����&#255;���� �����."
	eng_desc = "Wooden chest of drawers."
	icon_state = "komod"
	density = 1
	pass_flags = LETPASSTHROW
	cache_size = 1

/obj/structure/stalker/shina
	name = "����"
	desc = "�&#255;����&#255; �����&#255; �������&#255; ����."
	eng_desc = "Heavy old flat tire."
	icon_state = "shina"
	density = 1

/obj/structure/stalker/shina2
	name = "��� ����"
	desc = "�&#255;����� ������ �������� ����."
	eng_desc = "A couple of heavy old flat tires."
	icon_state = "shina2"
	density = 1

/obj/structure/stalker/cacheable/shina3
	name = "��� ����"
	desc = "�&#255;����� ������ �������� ����."
	eng_desc = "A couple of heavy old flat tires."
	icon_state = "shina3a"
	density = 1
	cache_size = 1

/obj/structure/stalker/cacheable/switcher
	name = "�������������"
	desc = "����������� �������������.\n<span class='notice'>�� ��������� ������� ��� � ��������� �� ��������� ����&#255; �����.</span>"
	eng_desc = "Broken switcher. \n<span class='notice'>You start switching it and feel calm.</span>"
	icon_state = "vikluchatel"
	cache_size = 0

/obj/structure/stalker/doski
	name = "�����"
	desc = "��������� �����. ������������ ���-���� �� ��� �� ��������&#255;."
	eng_desc = "Broken planks."
	icon_state = "doski_oblomki"
	layer = 2.8
	pass_flags = LETPASSTHROW

/obj/structure/stalker/doski/doski2
	icon_state = "doski_oblomki2"

/obj/structure/stalker/doski/doski3
	icon_state = "doski_oblomki3"

/obj/structure/stalker/doski/doski4
	icon_state = "doski_oblomki4"

/obj/structure/stalker/leafs //leafs
	name = "�����&#255;"
	desc = "�����&#255; ������, ����� ����."
	eng_desc = "Dead leaves."
	icon_state = "leafs"
	layer = 2.8
	pass_flags = LETPASSTHROW

/obj/structure/stalker/leafs/Crossed(atom/movable/A)
	if(istype(A, /mob/living))
		playsound(src, get_sfx("grassfootsteps"), 50, 1)

/obj/structure/stalker/leafs/pile1
	icon_state = "leafs_p1"

/obj/structure/stalker/leafs/pile2
	icon_state = "leafs_p2"

//obj/structure/stalker/leafs/rare


/obj/structure/stalker/leafs/rare/pile1
	icon_state = "leafs_r1"

/obj/structure/stalker/leafs/rare/pile2
	icon_state = "leafs_r2"

/obj/structure/stalker/leafs/rare/pile3
	icon_state = "leafs_r3"

/obj/structure/stalker/cacheable/battery
	name = "������&#255;"
	desc = "�����&#255; �����������&#255; ������&#255;. �����-�� ��������� ����, ������ - ������ ��������&#255; �������."
	eng_desc = "Old rusty radiator. Doesn't produce any heat."
	icon_state = "gazovaya_truba"
	density = 0
	cache_size = 1

/obj/structure/stalker/cacheable/vanna
	name = "�����&#255;"
	desc = "�����&#255; �������&#255; �����. ������ ����������."
	eng_desc = "Old cast-iron bath. Nothing special."
	icon_state = "vanna"
	density = 1
	cache_size =  2

/obj/structure/stalker/list
	name = "����&#255;���� ����"
	desc = "�&#255;���� ����&#255;���� ����������� ����. ������������ ��� ��� ����� �� ��������&#255;."
	eng_desc = "Old stain-roof sheet."
	icon_state = "list_zhesti"
	density = 0

/obj/structure/stalker/cacheable/yashik
	name = "�����&#255;���� &#255;���"
	icon_state = "yashik_g"
	desc = "������ &#255;���."
	eng_desc = "Old wooden crate."
	density = 1
	cache_size = 1

/obj/structure/stalker/cacheable/yashik/yaskik_a
	name = "&#255;���"
	icon_state = "yashik_a"
	desc = "������ &#255;���."
	eng_desc = "Old wooden crate."
	density = 1
	cache_size = 2

/obj/structure/stalker/cacheable/yashik/yaskik_a/big
	icon = 'icons/stalker/decorations_32x64.dmi'
	icon_state = "crate"
	desc = "������� ������ &#255;���."
	eng_desc = "Old big wooden crate."
	opacity = 1
	density = 1
	layer = 9
	cache_size = 3

/obj/structure/stalker/propane
	name = "������"
	desc = "������ � ��������. ����������."
	eng_desc = "Propane balloon."
	icon = 'icons/stalker/decorations_32x64.dmi'
	icon_state = "propane"
	density = 1

/obj/structure/stalker/pole
	name = "�����"
	icon = 'icons/stalker/decorations_32x64.dmi'
	icon_state = "pole"
	desc = "����� � ���&#255;���� ��������� ��������."
	eng_desc = "Old pillar."
	layer = 4.8
	density = 0

/obj/structure/stalker/propane/dual
	icon_state = "propane_dual"

/obj/structure/stalker/cacheable/pen
	name = "����"
	desc = "������� ����. �� ������, �� ������."
	eng_desc = "A small stump."
	icon_state = "pen"
	density = 0
	cache_size = 0

/obj/structure/stalker/cacheable/radio
	name = "�����"
	desc = "������ ��������� ��������� �����."
	eng_desc = "Broken soviet radio."
	icon_state = "radio"
	density = 1
	cache_size = 1

/obj/structure/stalker/cacheable/apc
	name = "������������"
	desc = "������ ������������."
	eng_desc = "Old switchboard."
	icon_state = "apc"
	density = 0
	cache_size = 1

/obj/structure/stalker/cacheable/apc/open
	icon_state = "apc1"

/obj/structure/stalker/cacheable/apc/open2
	icon_state = "apc2"

/obj/structure/stalker/cacheable/cover
	name = "����"
	icon = 'icons/stalker/cover.dmi'
	icon_state = "cover"
	desc = "������ ����. ������ ����� �� �����."
	eng_desc = "Old carpet. You usually see this on the wall."
	density = 0
	cache_size = 0

/obj/structure/stalker/cacheable/porog
	name = "�����"
	icon = 'icons/stalker/decor.dmi'
	icon_state = "porog1"
	desc = "������ �����, � ������� ����� ����� ���������&#255; �����."
	eng_desc = "Old step."
	layer = 2.9
	density = 0
	cache_size = 0

/obj/structure/stalker/cacheable/porog/porog2
	icon = 'icons/stalker/decor.dmi'
	icon_state = "porog2"

/obj/structure/stalker/cacheable/televizor
	name =  "���������"
	desc = "������ ��������� ���������."
	eng_desc = "Old soviet TV-set."
	icon_state = "TV"
	density = 1
	cache_size = 1

/obj/structure/stalker/cacheable/clocks
	name =  "����"
	desc = "������������..."
	eng_desc = "Doesn't work anymore."
	icon = 'icons/stalker/prishtina/decorations_32x32.dmi'
	icon_state = "clocks"
	density = 0
	cache_size = 0

/obj/structure/stalker/cacheable/painting
	icon = 'icons/stalker/prishtina/decorations_32x32.dmi'
	density = 0
	cache_size = 0

/obj/structure/stalker/cacheable/painting/gorbachev
	name = "�������"
	desc = "������� ���������� ��������&#255; �� ����."
	eng_desc = "Portrait of the last general secretary of Central Committee of the Communist Party of the Soviet Union."
	icon_state = "gorbachev"

/obj/structure/stalker/cacheable/painting/stalin
	name = "�������"
	desc = "������� ������� ��������&#255; �� ����."
	eng_desc = "Portrait of the second general secretary of Central Committee of the Communist Party of the Soviet Union."
	icon_state = "stalin"

/obj/structure/stalker/cacheable/painting/lenin
	name = "�������"
	desc = "������� ������� ��������&#255; �� ����."
	eng_desc = "Portait of the first general secretary of Central Committee of the Communist Party of the Soviet Union."
	icon_state = "lenin"

/obj/structure/stalker/cacheable/intercom
	name = "��������"
	desc = "������ ��&#255; ��&#255;��."
	eng_desc = "Soviet intercom."
	icon = 'icons/stalker/backwater.dmi'
	icon_state = "intercom"
	density = 0
	cache_size = 0

/obj/structure/stalker/cacheable/televizor/broken
	icon_state = "TV_b"
	name =  "������ �������� ���������"
	desc = "������ �������� ��������� ���������."
	density = 1
	cache_size = 2

/obj/structure/stalker/bigyashik
	name = "������������� ���������"
	icon = 'icons/stalker/yashiki/decorations_64x64.dmi'
	icon_state = "bigyashik 0.0"
	density = 1
	opacity = 1

/obj/structure/stalker/cacheable/shelf
	name = "����"
	desc = "�����&#255;���� �������."
	eng_desc = "Wooden shelf."
	icon = 'icons/stalker/polka.dmi'
	icon_state = "polka"
	density = 1
	anchored = 1
	cache_size = 0

/obj/structure/stalker/cacheable/shelf


/obj/structure/stalker/bigyashik/melkiy
	icon = 'icons/stalker/yashiki/decorations_32x64.dmi'
	icon_state = "bigyashik"

/obj/structure/stalker/water/attack_hand(mob/living/user)
	if(!user || !istype(user))
		return
	if(!iscarbon(user))
		return
	if(!Adjacent(user))
		return

	if(busy)
		user << "<span class='notice'>���-�� ��� �����&#255; �����!</span>"
		return
	var/selected_area = parse_zone(user.zone_sel.selecting)
	var/washing_face = 0
	if(selected_area in list("head", "mouth", "eyes"))
		washing_face = 1
	user.visible_message("<span class='notice'>[user] start washing their [washing_face ? "face" : "hands"]...</span>", \
						"<span class='notice'>You start washing your [washing_face ? "face" : "hands"]...</span>")
	busy = 1

	if(!do_after(user, 40, target = src))
		busy = 0
		return

	busy = 0

	user.visible_message("<span class='notice'>[user] washes their [washing_face ? "face" : "hands"] using [src].</span>", \
						"<span class='notice'>You wash your [washing_face ? "face" : "hands"] using [src].</span>")
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


/obj/structure/stalker/water/attackby(obj/item/O, mob/user, params)
	if(busy)
		user << "<span class='warning'>���-�� ��� �����&#255; �����!</span>"
		return

	if(istype(O, /obj/item/weapon/reagent_containers))
		var/obj/item/weapon/reagent_containers/RG = O
		if(RG.flags & OPENCONTAINER)
			RG.reagents.add_reagent("water", min(RG.volume - RG.reagents.total_volume, RG.amount_per_transfer_from_this))
			user << "<span class='notice'>�� ������&#255;��� [RG] �� [src].</span>"
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

	user << "<span class='notice'>�� ��������� ���� [I]...</span>"
	busy = 1
	if(!do_after(user, 40, target = src))
		busy = 0
		return
	busy = 0
	O.clean_blood()
	user.visible_message("<span class='notice'>[user] ���� [I], ��������&#255; [src].</span>", \
						"<span class='notice'>�� ����� [I], ��������&#255; [src].</span>")

/obj/structure/stalker/oscillograph
	name = "oscillograph"
	desc = ""
	icon_state = "oscillograph_off"
	density = 1

/obj/structure/stalker/panel
	name = "machine"
	desc = ""
	icon_state = "panel_1"
	density = 1

/obj/structure/stalker/panel/panel2
	icon_state = "panel_2"

/obj/structure/stalker/cacheable/musor_yashik
	name = "�������� &#255;���"
	desc = "�������� &#255;���"
	eng_desc = "Dumpster. Still stinks."
	density = 1
	cache_size = 3

/obj/structure/stalker/cacheable/musor_yashik/red
	icon_state = "yashik_musor"

/obj/structure/stalker/cacheable/musor_yashik/red/full
	icon_state = "yashik_musor_full"

/obj/structure/stalker/cacheable/musor_yashik/green
	icon_state = "yashik_musor2"

/obj/structure/stalker/cacheable/musor_yashik/green/full
	icon_state = "yashik_musor2_full"

/obj/structure/stalker/cacheable/shitok
	name = "������������"
	desc = "������ ������������� �����."
	eng_desc = "Old switch box."
	icon_state = "shitok"
	cache_size = 1
	density = 0

/obj/structure/stalker/cacheable/shitok/shitok2
	name = "������������"
	desc = "������ ������������� �����."
	eng_desc = "Old switch box."
	icon_state = "shitok2"
	cache_size = 1
	density = 0
	layer = 4.9

/obj/structure/stalker/broke_table
	name = "����"
	desc = "����������� ����."
	eng_desc = "Flipped over table."
	icon_state = "broke_table1"
	density = 1

/obj/structure/stalker/broke_table/right
	icon_state = "broke_table2"

/obj/structure/stalker/lift
	name = "����"
	desc = "������ ��������� ����. ����&#255;���� ����� �� ��� ������� �� ����������."
	eng_desc = "Old soviet lift. It doesn't work anymore."
	icon_state = "lift"

/obj/structure/stalker/luk
	name = "���"
	desc = "�������� ��������������� ���"
	icon = 'icons/stalker/decor2.dmi'
	icon_state = "luk0"

/obj/structure/stalker/luk/open
	desc = "�������� �������������� ���. ���������, ��� ������?"
	icon_state = "luk1"

/obj/structure/stalker/luk/open/ladder
	desc = "�������� �������������� ��� � ���������. ���������, ��� ������?"
	icon_state = "luk2"

/obj/structure/stalker/trubas
	name = "�����"
	desc = "������&#255; �����&#255; �����, ��������&#255; ��&#255; ������������&#255;."
	eng_desc = "Big rusty gas-pipe."
	icon = 'icons/stalker/structure/trubas.dmi'
	icon_state = "trubas"
	density = 1

/obj/structure/stalker/sign/bar100rentgen
	name = "��������"
	desc = "��� 100 �������."
	eng_desc = "100 rentgen bar."
	icon_state = "100_rentgen"

/obj/structure/stalker/bar_plitka
	name = "������"
	icon = 'icons/stalker/floor.dmi'
	icon_state = "bar_plate1"
	layer = 2.3

/obj/structure/stalker/bar_plitka/New()
	..()
	pixel_x = rand(-2, 2)
	pixel_y = rand(-2, 2)

/obj/structure/stalker/bunker
	name = "������"
	icon = 'icons/stalker/bunker.dmi'
	density = 1
	opacity = 1

/obj/structure/stalker/cacheable/plita
	name = "�����"
	desc = "�����&#255; � ����� �����&#255; ������&#255; �����. ���-�� ��� ����� ��������� ���� ��������� ���� ���������� � ��&#255;��� � �����."
	eng_desc = "Rusty old gas stove. Covered with grease and dirt."
	icon = 'icons/stalker/decor.dmi'
	icon_state = "gazovaya_plita"
	density = 1
	anchored= 1
	cache_size = 2

/obj/structure/stalker/cacheable/pech
	name = "����"
	desc = "�����&#255; ����."
	eng_desc = "Well-made russian oven made out of bricks."
	icon = 'icons/stalker/decor.dmi'
	icon_state = "pech"
	density = 0
	anchored = 1

/obj/structure/stalker/cacheable/shkaf64
	name = "����"
	desc = "������� �����&#255;���� ����. ��������, �� � ��������� ������ �����&#255; � �����, �� ������ ����� �������. �������&#255; �� ���, ������&#255;, ����� ����� ���� ����� ����� ������ ���&#255;� ����������� �������� ������."
	eng_desc = "Tall wooden shelf in poor state."
	icon = 'icons/stalker/decorations_32x64.dmi'
	icon_state = "shkaf64"
	density = 1
	anchored = 1
	cache_size = 3

/obj/structure/stalker/cacheable/shelf
	name = "����"
	desc = "�����&#255;���� �������. �  ��  �  �� &#255;"
	eng_desc = "Wooden shelf."
	icon = 'icons/stalker/polka.dmi'
	icon_state = "polka"
	density = 1
	anchored = 1
	cache_size = 2.1
	cache_chance = 10
	allowed_cash = list(/obj/item/weapon/gun/projectile/automatic/pistol, \
				/obj/item/ammo_box/stalker/b9x18, \
				/obj/item/ammo_box/stalker/b9x18P, \
				/obj/item/ammo_box/stalker/b9x19, \
				/obj/item/ammo_box/stalker/b9x19P, \
				/obj/item/ammo_box/stalker/b545, \
				/obj/item/ammo_box/stalker/b545ap, \
				/obj/item/ammo_box/stalker/b12x70, \
				/obj/item/ammo_box/stalker/b12x70P, \
				/obj/item/weapon/reagent_containers/pill/stalker/aptechka/army, \
				/obj/item/weapon/reagent_containers/pill/stalker/aptechka/civilian, \
				/obj/item/weapon/reagent_containers/pill/stalker/aptechka/scientific, \
				/obj/item/stack/medical/gauze/bint, \
				/obj/item/weapon/reagent_containers/hypospray/medipen/stalker/antirad, \
				/obj/item/weapon/reagent_containers/food/snacks/stalker/konserva, \
				/obj/item/weapon/reagent_containers/food/snacks/stalker/konserva/shproti, \
				/obj/item/weapon/reagent_containers/food/drinks/bottle/vodka/kazaki, \
				/obj/item/weapon/reagent_containers/food/drinks/soda_cans/energetic, \
				/obj/item/weapon/lighter, \
				/obj/item/device/geiger_counter)

/obj/structure/stalker/cacheable/shelf/update_icon()
	overlays = list()
	for(var/obj/item/I in internal_cache.contents)
		if(istype(I,/obj/item/weapon/reagent_containers/food))
			overlays |= "food"
		if(istype(I,/obj/item/weapon/reagent_containers/pill/stalker/aptechka/army))
			overlays |= "army"
		if(istype(I,/obj/item/weapon/reagent_containers/pill/stalker/aptechka/civilian))
			overlays |= "firstaid"
		if(istype(I,/obj/item/weapon/reagent_containers/pill/stalker/aptechka/scientific))
			overlays |= "science"
		if(istype(I,/obj/item/stack/medical/gauze/bint))
			overlays |= "med"
		if(istype(I,/obj/item/weapon/reagent_containers/food/drinks))
			overlays |= "drinks"
		if((istype(I,/obj/item/ammo_box/stalker/b9x18)) | (istype(I,/obj/item/ammo_box/stalker/b9x18P)))
			overlays |= "9x18"
		if((istype(I,/obj/item/ammo_box/stalker/b9x19)) | (istype(I,/obj/item/ammo_box/stalker/b9x19P)))
			overlays |= "9x19"
		if((istype(I,/obj/item/ammo_box/stalker/b545)) | (istype(I,/obj/item/ammo_box/stalker/b545ap)))
			overlays |= "5x45"
		if((istype(I,/obj/item/ammo_box/stalker/b12x70)) | (istype(I,/obj/item/ammo_box/stalker/b12x70P)))
			overlays |= "drob"
		if((istype(I,/obj/item/weapon/lighter)) | (istype(I,/obj/item/device)))
			overlays |= "other"

/obj/structure/stalker/cacheable/shelf/New()
	..()
	update_icon()

/*
/obj/item/weapon/gun/projectile/automatic/pistol
/obj/item/ammo_box/stalker/b9x18
/obj/item/ammo_box/stalker/b9x18P
/obj/item/ammo_box/stalker/b9x19
/obj/item/ammo_box/stalker/b9x19P
/obj/item/ammo_box/stalker/b545
/obj/item/ammo_box/stalker/b545ap
/obj/item/ammo_box/stalker/b12x70
/obj/item/ammo_box/stalker/b12x70P
/obj/item/weapon/reagent_containers/pill/stalker/aptechka/army
/obj/item/weapon/reagent_containers/pill/stalker/aptechka/civilian
/obj/item/weapon/reagent_containers/pill/stalker/aptechka/scientific
/obj/item/stack/medical/gauze/bint
/obj/item/weapon/reagent_containers/hypospray/medipen/stalker/antirad
/obj/item/weapon/reagent_containers/food/snacks/stalker/konserva
/obj/item/weapon/reagent_containers/food/snacks/stalker/konserva/shproti
/obj/item/weapon/reagent_containers/food/drinks/bottle/vodka/kazaki
/obj/item/weapon/reagent_containers/food/drinks/soda_cans/energetic
/obj/item/weapon/lighter
/obj/item/device/geiger_counter
*/
//////////////////////////////����� ���////////////////////////////////

/obj/structure/stalker/cacheable
	name = "���"
	desc = "���������� ��� � ������������ ������ � ������ ������."
	eng_desc = "Generates a stash with a certain chance at the start of the round."
	density = 1
	var/cache_chance = 0	//percent
	var/cache_quality = -1	//from 0 to 3, -1 for random
	var/cache_size = 0
	var/cache_enable = 1
	var/amount_cash = 0
	var/list/allowed_cash
	var/obj/item/weapon/storage/stalker/cache/internal_cache = null

/obj/structure/stalker/cacheable/New()
	..()

	if(allowed_cash)
		var/list/items_list = allowed_cash
		allowed_cash = list()
		for(var/i in items_list)
			for(var/datum/data/stalker_equipment/SE in real_sidormat_items)
				if(SE.equipment_path == i)
					allowed_cash |= SE

//	if(!cache_chance)
//		cache_chance = rand(6,8)

	switch(cache_size)
		if(0)
			internal_cache = new /obj/item/weapon/storage/stalker/cache/tiny(src)
		if(1)
			internal_cache = new /obj/item/weapon/storage/stalker/cache/small(src)
		if(2)
			internal_cache = new /obj/item/weapon/storage/stalker/cache/medium(src)
		if(2.1)
			internal_cache = new /obj/item/weapon/storage/stalker/cache/medium/volume(src)
		if(3)
			internal_cache = new /obj/item/weapon/storage/stalker/cache/big(src)
		if(4)
			internal_cache = new /obj/item/weapon/storage/stalker/cache/large(src)

	if(!cache_enable)
		return

	if(cache_quality == -1)
		cache_quality = rand(0, 3)
//			if(0)
//				cache_quality = rand(1, 2)//0
//				cache_chance -= 4

	if(!cache_chance)
		switch(cache_quality)

			if(3)
				cache_chance += 0.5

			if(2)
				cache_chance += 3

			if(1)
				cache_chance += 6

			if(0)
				cache_chance += 10

	if(!prob(cache_chance))
		//internal_cache = null
		return

	if(get_area(src).controlled_by && get_area(src))
		return

	internal_cache.allowed_cash = allowed_cash
	internal_cache.CreateContents(src) //��������� ���������
	amount_cash = internal_cache.amount_cash

/obj/structure/stalker/cacheable/attack_hand(mob/user)
	..()

	if(user.busy)
		return

	user.busy = 1

	user.visible_message("<span class='notice'>[user] ����� ���������� [src]...</span>", "<span class='notice'>�� ������ ���������� [src]...</span>")
	if(!do_after(user, 30, 1, src))
		user.busy = 0
		return

	user.visible_message("<span class='notice'>[user] �������� ���������� [src].</span>", "<span class='notice'>�� ��������� ���������� [src].</span>")

//	if(!amount_cash)
//		user.visible_message("<span class='notice'>[user] ������ �� ����� � [src].</span>", "<span class='notice'>�� ������ �� ����� � [src].</span>")

	playsound(loc, "rustle", 50, 1, -5)
	if(user.s_active)
		user.s_active.close(user)
	internal_cache.attack_hand(user)

	if(internal_cache.waspicked || !istype(usr, /mob/living/carbon/human))
		user.busy = 0
		return

//	var/mob/living/carbon/human/H = usr
	internal_cache.waspicked = 1
	user.busy = 0

//	if(!istype(H.wear_id, /obj/item/device/stalker_pda))
//		return

//	var/obj/item/device/stalker_pda/KPK = H.wear_id

//	if(!KPK.owner || KPK.owner != H)
//		return

//	show_lenta_message(null, KPK, null, "PDA", "OS", "You discovered a stash in the [src]!", selfsound = 1)

//	var/datum/data/record/sk = find_record("sid", H.sid, data_core.stalkers)

//	if(!sk)
//		return

//	sk.fields["rating"] +=  25 * (2 ** cache_quality)

//	if(!internal_cache.cached_cash)
//		return

//	sk.fields["money"] += internal_cache.cached_cash
//	show_lenta_message(null, KPK, null, "PDA", "OS", "You found a bitRU key that gave you access to [internal_cache.cached_cash] RU on your account!", selfsound = 1)
//	internal_cache.cached_cash = 0

/obj/item/weapon/storage/stalker/cache
	name = "cache"
	icon = 'icons/stalker/quest.dmi'
	icon_state = "blue_box_r"
	invisibility = 101
	display_contents_with_number = 1
	var/waspicked = 0
	var/cached_cash = 0
	var/amount_cash = 0
	var/allowed_cash = list()

/obj/item/weapon/storage/stalker/cache/attack_hand(mob/user)
	playsound(loc, "rustle", 50, 1, -5)
	orient2hud(user)
	if(user.s_active)
		user.s_active.close(user)
	show_to(user)
	add_fingerprint(user)

/obj/item/weapon/storage/stalker/cache/update_icon()
	..()
	var/obj/structure/stalker/cacheable/is_in = loc
	is_in.update_icon()

/obj/item/weapon/storage/stalker/cache/proc/CreateContents(var/obj/structure/stalker/cacheable/C)
	var/list/lootspawn = list()

	var/max_cost = 0
	switch(C.cache_quality)
		if(0)
			lootspawn = trash_tier_sidormatitems
			max_cost = TRASH_TIER_COST
		if(1)
			lootspawn = low_tier_sidormatitems
			max_cost = LOW_TIER_COST
		if(2)
			lootspawn = medium_tier_sidormatitems
			max_cost = MEDIUM_TIER_COST
		if(3)
			lootspawn = high_tier_sidormatitems
			max_cost = HIGH_TIER_COST
		if(4)
			lootspawn = legendary_tier_sidormatitems
			max_cost = LEGENDARY_TIER_COST

	var/combined_w_class = 0
	var/combined_cost = 0
	if(allowed_cash)
		lootspawn &= allowed_cash
	for(var/i = 0, i <= storage_slots, i++)
		if(combined_w_class > max_combined_w_class)
			break

		if(combined_cost > max_cost)
			break

		var/datum/data/stalker_equipment/SE = safepick(lootspawn)

		if(!SE)
			continue

		var/A = SE.equipment_path

		if(!A)
			continue

		var/obj/item/I = new A(src)
		if(I.w_class > max_w_class)
			PlaceInPool(I)
			continue

		combined_cost += SE.cost
		amount_cash += 1

		//if(I.w_class >= w_class && (istype(I, /obj/item/weapon/storage)))
		//	continue

		combined_w_class +=  I.w_class
		handle_item_insertion(I, prevent_warning = 1)

	if(max_cost - combined_cost > 0)
		cached_cash = round((max_cost - combined_cost)/2)

/obj/item/weapon/storage/stalker/cache/tiny
	max_w_class = 1
	max_combined_w_class = 1
	storage_slots = 2

/obj/item/weapon/storage/stalker/cache/small
	max_w_class = 2
	max_combined_w_class = 3
	storage_slots = 3

/obj/item/weapon/storage/stalker/cache/medium
	max_w_class = 3
	max_combined_w_class = 6
	storage_slots = 4

/obj/item/weapon/storage/stalker/cache/medium/volume
	max_w_class = 3
	max_combined_w_class = 12
	storage_slots = 12

/obj/item/weapon/storage/stalker/cache/big
	max_w_class = 4
	max_combined_w_class = 8
	storage_slots = 5

/obj/item/weapon/storage/stalker/cache/large
	max_w_class = 4
	max_combined_w_class = 12
	storage_slots = 7
