/obj/item/storage/cans
	name = "can ring"
	desc = "Holds up to six drink cans, and select bottles."
	icon = 'icons/obj/storage/storage.dmi'
	icon_state = "canholder"
	inhand_icon_state = "cola"
	lefthand_file = 'icons/mob/inhands/items/drinks_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/items/drinks_righthand.dmi'
	custom_materials = list(/datum/material/plastic = HALF_SHEET_MATERIAL_AMOUNT*1.2)
	max_integrity = 500
	storage_type = /datum/storage/sixcan

/obj/item/storage/cans/Initialize(mapload)
	. = ..()

	update_appearance()

/obj/item/storage/cans/suicide_act(mob/living/carbon/user)
	user.visible_message(span_suicide("[user] begins popping open a final cold one with the boys! It looks like [user.p_theyre()] trying to commit suicide!"))
	return BRUTELOSS

/obj/item/storage/cans/update_icon_state()
	icon_state = "[initial(icon_state)][contents.len]"
	return ..()

/obj/item/storage/cans/sixsoda
	name = "soda bottle ring"
	desc = "Holds six soda cans. Remember to recycle when you're done!"

/obj/item/storage/cans/sixsoda/PopulateContents()
	. = list()
	for(var/i in 1 to 6)
		. += /obj/item/reagent_containers/cup/soda_cans/cola

/obj/item/storage/cans/sixbeer
	name = "beer can ring"
	desc = "Holds six beers. Remember to recycle when you're done!"

/obj/item/storage/cans/sixbeer/PopulateContents()
	. = list()
	for(var/i in 1 to 6)
		. += /obj/item/reagent_containers/cup/soda_cans/beer
