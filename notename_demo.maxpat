{
	"patcher": {
		"fileversion": 1,
		"appversion": { "major": 8, "minor": 5, "revision": 5, "architecture": "x64", "modernui": 1 },
		"classnamespace": "box",
		"rect": [ 80.0, 80.0, 620.0, 540.0 ],
		"boxes": [
			{ "box": { "id": "obj-1", "maxclass": "comment", "text": "note2name demo: feed a note number in, get an 'In:'/'Out:' readout. notein + number box here are just for standalone testing.", "numinlets": 1, "numoutlets": 0, "patching_rect": [ 20.0, 20.0, 560.0, 40.0 ] } },

			{ "box": { "id": "obj-2", "maxclass": "newobj", "text": "notein", "numinlets": 1, "numoutlets": 3, "outlettype": [ "int", "int", "int" ], "patching_rect": [ 20.0, 90.0, 70.0, 22.0 ] } },
			{ "box": { "id": "obj-3", "maxclass": "newobj", "text": "note2name", "numinlets": 1, "numoutlets": 1, "outlettype": [ "" ], "patching_rect": [ 20.0, 140.0, 90.0, 22.0 ] } },
			{ "box": { "id": "obj-4", "maxclass": "newobj", "text": "prepend set", "numinlets": 1, "numoutlets": 1, "outlettype": [ "" ], "patching_rect": [ 20.0, 190.0, 80.0, 22.0 ] } },
			{ "box": { "id": "obj-6", "maxclass": "comment", "text": "In:", "numinlets": 1, "numoutlets": 0, "patching_rect": [ 20.0, 245.0, 30.0, 20.0 ] } },
			{ "box": { "id": "obj-5", "maxclass": "message", "text": "—", "numinlets": 2, "numoutlets": 1, "outlettype": [ "" ], "patching_rect": [ 55.0, 240.0, 80.0, 24.0 ] } },

			{ "box": { "id": "obj-7", "maxclass": "number", "numinlets": 1, "numoutlets": 2, "outlettype": [ "int", "bang" ], "patching_rect": [ 320.0, 90.0, 70.0, 22.0 ] } },
			{ "box": { "id": "obj-8", "maxclass": "newobj", "text": "note2name", "numinlets": 1, "numoutlets": 1, "outlettype": [ "" ], "patching_rect": [ 320.0, 140.0, 90.0, 22.0 ] } },
			{ "box": { "id": "obj-9", "maxclass": "newobj", "text": "prepend set", "numinlets": 1, "numoutlets": 1, "outlettype": [ "" ], "patching_rect": [ 320.0, 190.0, 80.0, 22.0 ] } },
			{ "box": { "id": "obj-11", "maxclass": "comment", "text": "Out:", "numinlets": 1, "numoutlets": 0, "patching_rect": [ 320.0, 245.0, 35.0, 20.0 ] } },
			{ "box": { "id": "obj-10", "maxclass": "message", "text": "—", "numinlets": 2, "numoutlets": 1, "outlettype": [ "" ], "patching_rect": [ 360.0, 240.0, 80.0, 24.0 ] } },

			{ "box": { "id": "obj-doc", "maxclass": "comment", "text": "In your M4L device: drop note2name.maxpat in the folder, add two [note2name] objects.\\nIn  display:  tap the incoming pitch (unpack left outlet) -> [note2name] -> [prepend set] -> message box.\\nOut display: tap the mapped pitch (the int feeding note-pack's left inlet) -> [note2name] -> [prepend set] -> message box.\\nPut the two message boxes + 'In:'/'Out:' comments in Presentation.", "numinlets": 1, "numoutlets": 0, "patching_rect": [ 20.0, 300.0, 560.0, 110.0 ] } }
		],
		"lines": [
			{ "patchline": { "source": [ "obj-2", 0 ], "destination": [ "obj-3", 0 ] } },
			{ "patchline": { "source": [ "obj-3", 0 ], "destination": [ "obj-4", 0 ] } },
			{ "patchline": { "source": [ "obj-4", 0 ], "destination": [ "obj-5", 0 ] } },
			{ "patchline": { "source": [ "obj-7", 0 ], "destination": [ "obj-8", 0 ] } },
			{ "patchline": { "source": [ "obj-8", 0 ], "destination": [ "obj-9", 0 ] } },
			{ "patchline": { "source": [ "obj-9", 0 ], "destination": [ "obj-10", 0 ] } }
		]
	}
}
