{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 0,
			"revision" : 0,
			"architecture" : "x86",
			"modernui" : 1
		}
,
		"rect" : [ 240.0, 78.0, 847.0, 588.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 185.0, 477.099976, 150.0, 20.0 ],
					"presentation_rect" : [ 185.0, 477.099976, 150.0, 20.0 ],
					"style" : "",
					"text" : "6. Output"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 713.0, 328.5, 150.0, 33.0 ],
					"presentation_linecount" : 2,
					"presentation_rect" : [ 713.0, 328.5, 150.0, 33.0 ],
					"style" : "",
					"text" : "Get interval info in dictionary format"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-89",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 142.599976, 280.0, 150.0, 20.0 ],
					"presentation_rect" : [ 142.599976, 280.0, 150.0, 20.0 ],
					"style" : "",
					"text" : "5. Choose a function"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-76",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 440.0, 130.0, 132.399994, 20.0 ],
					"presentation_rect" : [ 440.0, 130.0, 132.399994, 20.0 ],
					"style" : "",
					"text" : "4. Choose a root note"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 124.0, 145.5, 150.0, 33.0 ],
					"presentation_linecount" : 2,
					"presentation_rect" : [ 124.0, 145.5, 150.0, 33.0 ],
					"style" : "",
					"text" : "3. Click message box to load chords into umenu"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-74",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 5.300003, 83.5, 123.0, 60.0 ],
					"presentation_linecount" : 4,
					"presentation_rect" : [ 5.300003, 83.5, 123.0, 60.0 ],
					"style" : "",
					"text" : "2. Bang to\nload all\nthe simple \nintervals"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-79",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 108.800003, 11.0, 80.400002, 20.0 ],
					"presentation_rect" : [ 108.800003, 11.0, 80.400002, 20.0 ],
					"style" : "",
					"text" : "1. Start script"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 24.0,
					"id" : "obj-83",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 243.0, 469.599976, 223.0, 35.0 ],
					"presentation_rect" : [ 243.0, 469.599976, 223.0, 35.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 319.0, 380.0, 39.0, 22.0 ],
					"presentation_rect" : [ 319.0, 380.0, 39.0, 22.0 ],
					"style" : "",
					"text" : "r start"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 282.0, 414.0, 184.0, 22.0 ],
					"presentation_rect" : [ 282.0, 414.0, 184.0, 22.0 ],
					"saved_object_attributes" : 					{
						"autostart" : 0,
						"node" : "",
						"npm" : "",
						"running" : 0,
						"watch" : 1
					}
,
					"style" : "",
					"text" : "node.script intervals.js @watch 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 282.0, 334.0, 157.0, 22.0 ],
					"presentation_rect" : [ 282.0, 334.0, 157.0, 22.0 ],
					"style" : "",
					"text" : "pak getIntervalPitches C 1P"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 24.0,
					"id" : "obj-86",
					"items" : [ "getIntervalPitches", ",", "invert", ",", "getSemitones", ",", "simplify", ",", "getMIDI" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 172.050003, 241.0, 238.899994, 35.0 ],
					"presentation_rect" : [ 172.050003, 241.0, 238.899994, 35.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 64.0, 54.0, 41.0, 22.0 ],
					"presentation_rect" : [ 64.0, 54.0, 41.0, 22.0 ],
					"style" : "",
					"text" : "s start"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 503.0, 288.0, 39.0, 22.0 ],
					"presentation_rect" : [ 503.0, 288.0, 39.0, 22.0 ],
					"style" : "",
					"text" : "r start"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"maxclass" : "dict.view",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 503.0, 369.0, 270.0, 188.0 ],
					"presentation_rect" : [ 503.0, 369.0, 270.0, 188.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 665.0, 295.0, 132.0, 22.0 ],
					"presentation_rect" : [ 665.0, 295.0, 132.0, 22.0 ],
					"style" : "",
					"text" : "prepend getIntervalInfo"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 503.0, 334.0, 184.0, 22.0 ],
					"presentation_rect" : [ 503.0, 334.0, 184.0, 22.0 ],
					"saved_object_attributes" : 					{
						"autostart" : 0,
						"node" : "",
						"npm" : "",
						"running" : 0,
						"watch" : 1
					}
,
					"style" : "",
					"text" : "node.script intervals.js @watch 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 496.0, 198.0, 75.0, 22.0 ],
					"presentation_rect" : [ 496.0, 198.0, 75.0, 22.0 ],
					"style" : "",
					"text" : "unpack s s s"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 24.0,
					"id" : "obj-48",
					"items" : [ "C", ",", "C#", "/", "Db", ",", "D", ",", "D#", "/", "Eb", ",", "E", ",", "F", ",", "F#", "/", "Gb", ",", "G", ",", "G#", "/", "Ab", ",", "A", ",", "A#", "/", "Bb", ",", "B" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 440.0, 150.5, 131.0, 35.0 ],
					"presentation_rect" : [ 440.0, 150.5, 131.0, 35.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 24.0,
					"id" : "obj-39",
					"items" : "<empty>",
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 584.0, 150.5, 180.0, 35.0 ],
					"presentation_rect" : [ 584.0, 150.5, 180.0, 35.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 584.0, 121.0, 71.0, 22.0 ],
					"presentation_rect" : [ 584.0, 121.0, 71.0, 22.0 ],
					"style" : "",
					"text" : "insert $1 $2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "list" ],
					"patching_rect" : [ 584.0, 88.0, 56.0, 22.0 ],
					"presentation_rect" : [ 584.0, 88.0, 56.0, 22.0 ],
					"style" : "",
					"text" : "listfunnel"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 70.0, 130.0, 50.0, 22.0 ],
					"presentation_rect" : [ 70.0, 130.0, 50.0, 22.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 70.0, 88.0, 24.0, 24.0 ],
					"presentation_rect" : [ 70.0, 88.0, 24.0, 24.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 201.0, 33.0, 105.0, 22.0 ],
					"presentation_rect" : [ 201.0, 33.0, 105.0, 22.0 ],
					"style" : "",
					"text" : "getIntervalInfo m3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 117.0, 33.0, 64.0, 22.0 ],
					"presentation_rect" : [ 117.0, 33.0, 64.0, 22.0 ],
					"style" : "",
					"text" : "script start"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 117.0, 88.0, 184.0, 22.0 ],
					"presentation_rect" : [ 117.0, 88.0, 184.0, 22.0 ],
					"saved_object_attributes" : 					{
						"autostart" : 0,
						"node" : "",
						"npm" : "",
						"running" : 0,
						"watch" : 1
					}
,
					"style" : "",
					"text" : "node.script intervals.js @watch 1"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 1 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"midpoints" : [ 79.5, 228.0, 429.0, 228.0, 429.0, 75.0, 593.5, 75.0 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 1 ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-83", 1 ],
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"order" : 0,
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"order" : 1,
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 2 ],
					"order" : 1,
					"source" : [ "obj-39", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"order" : 0,
					"source" : [ "obj-39", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-48", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"order" : 0,
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"order" : 1,
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"source" : [ "obj-86", 1 ]
				}

			}
 ],
		"dependency_cache" : [  ],
		"autosave" : 0
	}

}
