Route28_MapScriptHeader:
	; trigger count
	db 0

	; callback count
	db 0

MapRoute28Signpost0Script:
	jumptext UnknownText_0x1a5413

MapRoute28SignpostItem1:
	dwb EVENT_ROUTE_28_HIDDEN_RARE_CANDY, RARE_CANDY
	

UnknownText_0x1a5413:
	text "ROUTE 28"
	done

Route28_MapEventHeader:
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $3, $7, 1, GROUP_ROUTE_28_FAMOUS_SPEECH_HOUSE, MAP_ROUTE_28_FAMOUS_SPEECH_HOUSE
	warp_def $5, $21, 7, GROUP_VICTORY_ROAD_GATE, MAP_VICTORY_ROAD_GATE

	; xy triggers
	db 0

	; signposts
	db 2
	signpost 5, 31, SIGNPOST_READ, MapRoute28Signpost0Script
	signpost 2, 25, SIGNPOST_ITEM, MapRoute28SignpostItem1

	; people-events
	db 0
