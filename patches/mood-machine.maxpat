{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 9,
			"minor" : 0,
			"revision" : 7,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 59.0, 119.0, 465.0, 424.0 ],
		"gridsize" : [ 15.0, 15.0 ],
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 112.0, 219.0, 45.0, 45.0 ]
				}

			}
, 			{
				"box" : 				{
					"autosave" : 1,
					"id" : "obj-1",
					"inletInfo" : 					{
						"IOInfo" : [  ]
					}
,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outletInfo" : 					{
						"IOInfo" : [ 							{
								"type" : "signal",
								"index" : 1,
								"tag" : "out1",
								"comment" : ""
							}
 ]
					}
,
					"outlettype" : [ "signal", "list" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 9,
							"minor" : 0,
							"revision" : 7,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "rnbo",
						"rect" : [ 675.0, 164.0, 499.0, 571.0 ],
						"default_fontname" : "Lato",
						"gridsize" : [ 15.0, 15.0 ],
						"title" : "mood-machine",
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-27",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 538.0, 429.0, 62.0, 23.0 ],
									"rnbo_classname" : "prepend",
									"rnbo_extra_attributes" : 									{
										"hot" : 0
									}
,
									"rnbo_serial" : 5,
									"rnbo_uniqueid" : "prepend_obj-27",
									"text" : "prepend 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-26",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 458.0, 429.0, 62.0, 23.0 ],
									"rnbo_classname" : "prepend",
									"rnbo_extra_attributes" : 									{
										"hot" : 0
									}
,
									"rnbo_serial" : 3,
									"rnbo_uniqueid" : "prepend_obj-26",
									"text" : "prepend 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-25",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 378.0, 429.0, 62.0, 23.0 ],
									"rnbo_classname" : "prepend",
									"rnbo_extra_attributes" : 									{
										"hot" : 0
									}
,
									"rnbo_serial" : 1,
									"rnbo_uniqueid" : "prepend_obj-25",
									"text" : "prepend 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-24",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 378.0, 471.0, 75.0, 23.0 ],
									"rnbo_classname" : "outport",
									"rnbo_extra_attributes" : 									{
										"meta" : ""
									}
,
									"rnbo_serial" : 1,
									"rnbo_uniqueid" : "outport_obj-24",
									"text" : "outport light"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-23",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 698.0, 221.0, 79.0, 23.0 ],
									"rnbo_classname" : "snapshot~",
									"rnbo_extra_attributes" : 									{
										"mode" : 0.0
									}
,
									"rnbo_serial" : 3,
									"rnbo_uniqueid" : "snapshot~_obj-23",
									"text" : "snapshot~ 16"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-22",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 458.0, 221.0, 79.0, 23.0 ],
									"rnbo_classname" : "snapshot~",
									"rnbo_extra_attributes" : 									{
										"mode" : 0.0
									}
,
									"rnbo_serial" : 2,
									"rnbo_uniqueid" : "snapshot~_obj-22",
									"text" : "snapshot~ 16"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-21",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 207.0, 221.0, 79.0, 23.0 ],
									"rnbo_classname" : "snapshot~",
									"rnbo_extra_attributes" : 									{
										"mode" : 0.0
									}
,
									"rnbo_serial" : 1,
									"rnbo_uniqueid" : "snapshot~_obj-21",
									"text" : "snapshot~ 16"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-15",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 609.0, 303.0, 46.0, 23.0 ],
									"rnbo_classname" : "*~",
									"rnbo_serial" : 5,
									"rnbo_uniqueid" : "*~_obj-15",
									"text" : "*~ 0.33"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-16",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 609.0, 221.0, 29.5, 23.0 ],
									"rnbo_classname" : "*~",
									"rnbo_serial" : 6,
									"rnbo_uniqueid" : "*~_obj-16",
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-13",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 371.0, 303.0, 46.0, 23.0 ],
									"rnbo_classname" : "*~",
									"rnbo_serial" : 3,
									"rnbo_uniqueid" : "*~_obj-13",
									"text" : "*~ 0.33"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-14",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 371.0, 221.0, 29.5, 23.0 ],
									"rnbo_classname" : "*~",
									"rnbo_serial" : 4,
									"rnbo_uniqueid" : "*~_obj-14",
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 698.0, 146.0, 86.0, 23.0 ],
									"rnbo_classname" : "scale~",
									"rnbo_serial" : 3,
									"rnbo_uniqueid" : "scale~_obj-11",
									"text" : "scale~ -1 1. 0 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "signal" ],
									"patching_rect" : [ 698.0, 94.0, 75.0, 23.0 ],
									"rnbo_classname" : "cycle~",
									"rnbo_extra_attributes" : 									{
										"index" : "freq",
										"interp" : "linear",
										"buffername" : "RNBODefaultSinus"
									}
,
									"rnbo_serial" : 5,
									"rnbo_uniqueid" : "cycle~_obj-12",
									"text" : "cycle~ 0.135"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 458.0, 146.0, 86.0, 23.0 ],
									"rnbo_classname" : "scale~",
									"rnbo_serial" : 2,
									"rnbo_uniqueid" : "scale~_obj-9",
									"text" : "scale~ -1 1. 0 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "signal" ],
									"patching_rect" : [ 458.0, 94.0, 68.0, 23.0 ],
									"rnbo_classname" : "cycle~",
									"rnbo_extra_attributes" : 									{
										"index" : "freq",
										"interp" : "linear",
										"buffername" : "RNBODefaultSinus"
									}
,
									"rnbo_serial" : 4,
									"rnbo_uniqueid" : "cycle~_obj-10",
									"text" : "cycle~ 0.12"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 125.0, 303.0, 46.0, 23.0 ],
									"rnbo_classname" : "*~",
									"rnbo_serial" : 2,
									"rnbo_uniqueid" : "*~_obj-8",
									"text" : "*~ 0.33"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 125.0, 391.0, 43.0, 23.0 ],
									"rnbo_classname" : "out~",
									"rnbo_extra_attributes" : 									{
										"meta" : "",
										"comment" : ""
									}
,
									"rnbo_serial" : 1,
									"rnbo_uniqueid" : "out~_obj-7",
									"rnboinfo" : 									{
										"needsInstanceInfo" : 1,
										"argnames" : 										{
											"in1" : 											{
												"attrOrProp" : 1,
												"digest" : "signal sent to outlet with index 1",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 0,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"touched" : 0,
												"inlet" : 1,
												"type" : "signal"
											}
,
											"index" : 											{
												"attrOrProp" : 2,
												"digest" : "outlet number",
												"defaultarg" : 1,
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"touched" : 0,
												"type" : "number",
												"mandatory" : 1
											}
,
											"comment" : 											{
												"attrOrProp" : 2,
												"digest" : "mouse over comment",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"touched" : 0,
												"type" : "symbol"
											}
,
											"meta" : 											{
												"attrOrProp" : 2,
												"digest" : "A JSON formatted string containing metadata for use by the exported code",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"touched" : 0,
												"type" : "symbol",
												"defaultValue" : "",
												"label" : "Metadata",
												"displayorder" : 3
											}

										}
,
										"inputs" : [ 											{
												"name" : "in1",
												"type" : "signal",
												"digest" : "signal sent to outlet with index 1",
												"displayName" : "",
												"hot" : 1,
												"docked" : 0
											}
 ],
										"outputs" : [  ],
										"helpname" : "out~",
										"aliasOf" : "out~",
										"classname" : "out~",
										"operator" : 0,
										"versionId" : 1989326771,
										"changesPatcherIO" : 1
									}
,
									"text" : "out~ 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 125.0, 221.0, 29.5, 23.0 ],
									"rnbo_classname" : "*~",
									"rnbo_serial" : 1,
									"rnbo_uniqueid" : "*~_obj-6",
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 207.0, 150.0, 86.0, 23.0 ],
									"rnbo_classname" : "scale~",
									"rnbo_serial" : 1,
									"rnbo_uniqueid" : "scale~_obj-5",
									"text" : "scale~ -1 1. 0 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "signal" ],
									"patching_rect" : [ 207.0, 98.0, 61.0, 23.0 ],
									"rnbo_classname" : "cycle~",
									"rnbo_extra_attributes" : 									{
										"index" : "freq",
										"interp" : "linear",
										"buffername" : "RNBODefaultSinus"
									}
,
									"rnbo_serial" : 1,
									"rnbo_uniqueid" : "cycle~_obj-4",
									"text" : "cycle~ 0.1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "signal" ],
									"patching_rect" : [ 609.0, 94.0, 69.0, 23.0 ],
									"rnbo_classname" : "saw~",
									"rnbo_serial" : 18,
									"rnbo_uniqueid" : "saw~_obj-3",
									"text" : "saw~ 219.2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "signal" ],
									"patching_rect" : [ 371.0, 94.0, 59.0, 23.0 ],
									"rnbo_classname" : "saw~",
									"rnbo_serial" : 17,
									"rnbo_uniqueid" : "saw~_obj-2",
									"text" : "saw~ 165"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "signal" ],
									"patching_rect" : [ 125.0, 98.0, 59.0, 23.0 ],
									"rnbo_classname" : "saw~",
									"rnbo_serial" : 8,
									"rnbo_uniqueid" : "saw~_obj-1",
									"text" : "saw~ 110"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 1 ],
									"order" : 1,
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 0 ],
									"order" : 0,
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"source" : [ "obj-22", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 0 ],
									"source" : [ "obj-23", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 0 ],
									"source" : [ "obj-25", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 0 ],
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 0 ],
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"order" : 0,
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 1 ],
									"order" : 1,
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 1 ],
									"order" : 1,
									"source" : [ "obj-9", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"order" : 0,
									"source" : [ "obj-9", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 112.0, 131.0, 156.0, 22.0 ],
					"rnboattrcache" : 					{

					}
,
					"rnboversion" : "1.4.0",
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_invisible" : 1,
							"parameter_longname" : "rnbo~",
							"parameter_modmode" : 0,
							"parameter_shortname" : "rnbo~",
							"parameter_type" : 3
						}

					}
,
					"saved_object_attributes" : 					{
						"optimization" : "O1",
						"parameter_enable" : 1,
						"uuid" : "e8927123-5dd3-11f0-b123-a2db61054e31"
					}
,
					"snapshot" : 					{
						"filetype" : "C74Snapshot",
						"version" : 2,
						"minorversion" : 0,
						"name" : "snapshotlist",
						"origin" : "rnbo~",
						"type" : "list",
						"subtype" : "Undefined",
						"embed" : 1,
						"snapshot" : 						{
							"__presetid" : "mood-machine"
						}
,
						"snapshotlist" : 						{
							"current_snapshot" : 0,
							"entries" : [ 								{
									"filetype" : "C74Snapshot",
									"version" : 2,
									"minorversion" : 0,
									"name" : "untitled",
									"origin" : "mood-machine",
									"type" : "rnbo",
									"subtype" : "",
									"embed" : 0,
									"snapshot" : 									{
										"__presetid" : "mood-machine"
									}
,
									"fileref" : 									{
										"name" : "untitled",
										"filename" : "untitled_20250710_2.maxsnap",
										"filepath" : "~/Documents/Max 9/Snapshots",
										"filepos" : -1,
										"snapshotfileid" : "842ea9a7a54a51e15642b772b33f2573"
									}

								}
 ]
						}

					}
,
					"text" : "rnbo~ @title mood-machine",
					"varname" : "rnbo~"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 1 ],
					"order" : 0,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"order" : 1,
					"source" : [ "obj-1", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-1" : [ "rnbo~", "rnbo~", 0 ],
			"parameterbanks" : 			{
				"0" : 				{
					"index" : 0,
					"name" : "",
					"parameters" : [ "-", "-", "-", "-", "-", "-", "-", "-" ]
				}

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [ 			{
				"name" : "untitled_20250710_2.maxsnap",
				"bootpath" : "~/Documents/Max 9/Snapshots",
				"patcherrelativepath" : "../../../Documents/Max 9/Snapshots",
				"type" : "mx@s",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
