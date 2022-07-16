
$modelname "props_c17/door01_left.mdl"

$include "door01_left_shared.qci"

$texturegroup "skinfamilies"
{
	{ "door01a"        }
	{ "door01a_skin2"  }
	{ "door01a_skin3"  }
	{ "door01a_skin4"  }
	{ "door01a_skin5"  }
	{ "door01a_skin6"  }
	{ "door01a_skin7"  }
	{ "door01a_skin8"  }
	{ "door01a_skin9"  }
	{ "door01a_skin10" }
	{ "door01a_skin11" }
	{ "door01a_skin12" }
	{ "door01a_skin13" }
	{ "door01a_skin14" }
}

$keyvalues
{
	prop_data 
	{
		"allowstatic"		"1"
		"blocklos"		"1"
	}
	door_options 
	{
		"default"		 
		{
			"open"			"Doors.FullOpen1"
			"close"			"Doors.FullClose1"
			"move"			"Doors.Move1"
			"surfaceprop"			"wood"
		}
		"skin0"		 
		{
			"open"			"Doors.FullOpen1"
			"close"			"Doors.FullClose1"
			"move"			"Doors.Move1"
			"surfaceprop"			"metal"
		}
		"skin1"		 
		{
			"open"			"Doors.FullOpen4"
			"close"			"Doors.FullClose4"
			"move"			"Doors.Move4"
			"surfaceprop"			"wood"
		}
		"skin2"		 
		{
			"open"			"Doors.FullOpen3"
			"close"			"Doors.FullClose3"
			"move"			"Doors.Move3"
			"surfaceprop"			"wood"
		}
		"skin3"		 
		{
			"open"			"Doors.FullOpen4"
			"close"			"Doors.FullClose4"
			"move"			"Doors.Move4"
			"surfaceprop"			"wood"
		}
		"skin4"		 
		{
			"open"			"Doors.FullOpen1"
			"close"			"Doors.FullClose1"
			"move"			"Doors.Move1"
			"surfaceprop"			"metal"
		}
		"skin5"		 
		{
			"open"			"Doors.FullOpen1"
			"close"			"Doors.FullClose1"
			"move"			"Doors.Move1"
			"surfaceprop"			"metal"
		}
		"skin6"		 
		{
			"open"			"Doors.FullOpen1"
			"close"			"Doors.FullClose1"
			"move"			"Doors.Move1"
			"surfaceprop"			"metal"
		}
		"skin7"		 
		{
			"open"			"Doors.FullOpen2"
			"close"			"Doors.FullClose2"
			"move"			"Doors.Move2"
			"surfaceprop"			"metal"
		}
		"skin8"		 
		{
			"open"			"Doors.FullOpen1"
			"close"			"Doors.FullClose1"
			"move"			"Doors.Move1"
			"surfaceprop"			"metal"
		}
		"skin9"		 
		{
			"open"			"Doors.FullOpen2"
			"close"			"Doors.FullClose2"
			"move"			"Doors.Move2"
			"surfaceprop"			"metal"
		}
		"skin10"		 
		{
			"open"			"Doors.FullOpen2"
			"close"			"Doors.FullClose2"
			"move"			"Doors.Move2"
			"surfaceprop"			"metal"
		}
		"skin11"		 
		{
			"open"			"Doors.FullOpen3"
			"close"			"Doors.FullClose3"
			"move"			"Doors.Move3"
			"surfaceprop"			"wood"
		}
		"skin12"		 
		{
			"open"			"Doors.FullOpen1"
			"close"			"Doors.FullClose1"
			"move"			"Doors.Move1"
			"surfaceprop"			"metal"
		}
		"skin13"		 
		{
			"open"			"Doors.FullOpen3"
			"close"			"Doors.FullClose3"
			"move"			"Doors.Move3"
			"surfaceprop"			"wood"
		}
		"skin14"		 
		{
			"open"			"Doors.FullOpen3"
			"close"			"Doors.FullClose3"
			"move"			"Doors.Move3"
			"surfaceprop"			"wood"
		}
		"hardware0"		 
		{
			"locked"			"DoorSound.Null"
			"unlocked"			"DoorSound.Null"
			
			"activity_front"	"ACT_GESTURE_DOOR_LEVER_OPEN_FRONT"
			"activity_back"		"ACT_GESTURE_DOOR_LEVER_OPEN_BACK"
		}
		"hardware1"		 
		{
			"locked"			"DoorHandles.Locked1"
			"unlocked"			"DoorHandles.Unlocked1"
			
			"activity_front"	"ACT_GESTURE_DOOR_LEVER_OPEN_FRONT"
			"activity_back"		"ACT_GESTURE_DOOR_LEVER_OPEN_BACK"
		}
		"hardware2"		 
		{
			"locked"			"DoorHandles.Locked2"
			"unlocked"			"DoorHandles.Unlocked2"
			
			"activity_front"	"ACT_GESTURE_DOOR_PUSHBAR_OPEN_FRONT"
			"activity_back"		"ACT_GESTURE_DOOR_PUSHBAR_OPEN_BACK"
		}
		
		// Mapbase -- Fixed keypad handle sounds
		"hardware3"		 
		{
			"locked"			"DoorHandles.Locked1"
			"unlocked"			"DoorHandles.Unlocked1"
			
			"activity_front"	"ACT_GESTURE_DOOR_LEVER_OPEN_FRONT"
			"activity_back"		"ACT_GESTURE_DOOR_LEVER_OPEN_BACK"
		}
		
		// Mapbase -- New Combine lock hardware
		"hardware4"		 
		{
			"locked"			"combine.door_lock"
			"unlocked"			"DoorHandles.Unlocked1"
			
			"activity_front"	"ACT_GESTURE_DOOR_LEVER_OPEN_FRONT"
			"activity_back"		"ACT_GESTURE_DOOR_LEVER_OPEN_BACK"
		}
	}
}
