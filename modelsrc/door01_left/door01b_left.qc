
$modelname "props_c17/door01b_left.mdl"

$include "door01_left_shared.qci"

$texturegroup "skinfamilies"
{
	{ "door01a"        }
	
	// door01_left ends at door01b_skin14.
	// This starts where that left off.
	{ "door01b_skin2" } // Derives from skin7
	{ "door01b_skin3" } // Derives from skin5
	{ "door01b_skin4" } // Derives from skin5
	{ "door01b_skin5" } // Derives from skin5
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
		
		// Mapbase starts here
		"skin0"		 
		{
			"open"			"Doors.FullOpen1"
			"close"			"Doors.FullClose1"
			"move"			"Doors.Move1"
			"surfaceprop"			"metal"
		}
		"skin1"		 
		{
			"open"			"Doors.FullOpen2"
			"close"			"Doors.FullClose2"
			"move"			"Doors.Move2"
			"surfaceprop"			"metal"
		}
		"skin2"		 
		{
			"open"			"Doors.FullOpen1"
			"close"			"Doors.FullClose1"
			"move"			"Doors.Move1"
			"surfaceprop"			"metal"
		}
		"skin3"		 
		{
			"open"			"Doors.FullOpen2"
			"close"			"Doors.FullClose2"
			"move"			"Doors.Move2"
			"surfaceprop"			"metal"
		}
		"skin4"		 
		{
			"open"			"Doors.FullOpen2"
			"close"			"Doors.FullClose2"
			"move"			"Doors.Move2"
			"surfaceprop"			"metal"
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
