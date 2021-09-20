// Created by Crowbar 0.56

$modelname "props_c17/door01_left.mdl"

$bodygroup "Body"
{
	studio "door01_left_door_reference.smd"
}
$bodygroup "handle01"
{
	blank
	studio "door01_left_handle01_reference.smd"
	studio "door01_left_handle02_reference.smd"
	studio "door01_left_handle03_reference.smd"
	studio "door01_left_handle04_reference.smd"
}

$lod 15
{
	replacemodel "door01_left_door_reference.smd" "door01_left_door_reference_lod1.smd"
	replacemodel "door01_left_handle01_reference.smd" "door01_left_handle01_reference_lod1.smd"
	replacemodel "door01_left_handle02_reference.smd" "door01_left_handle02_reference_lod1.smd"
	replacemodel "door01_left_handle03_reference.smd" "door01_left_handle03_reference_lod1.smd"
	replacemodel "door01_left_handle04_reference.smd" "door01_left_handle04_reference_lod1.smd"
	nofacial
}

$surfaceprop "metal"

$contents "solid"

$illumposition 23 0 0

$cdmaterials "models\props_c17\"
$cdmaterials "models\props_combine\"

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

$cbox 0 0 0 0 0 0

$bbox -5.996 -1.25 -54.25 5.996 47.25 54.25

$definebone "door" "" 0 0 0 0 0 89.999983 0 0 0 0 0 0
$definebone "handle" "door" 43.810005 -10.390667 1.997513 0 0 0 0 0 0 0 0 0
$definebone "handle02" "door" 43.810005 -10.390667 1.997513 0 0 0 0 0 0 0 0 0


$weightlist "weights_openbar" {
	 "door" 0
	 "handle" 0
	 "handle02" 1
}

$sequence "idle" {
	"door01_left_anims\idle.smd"
	activity "ACT_IDLE" 1
}

$sequence "locked" {
	"door01_left_anims\locked.smd"
	activity "ACT_DOOR_LOCKED" 1
}

$sequence "openbar" {
	"door01_left_anims\openbar.smd"
	hidden
	weightlist "weights_openbar"
}

$sequence "open" {
	"door01_left_anims\open.smd"
	activity "ACT_DOOR_OPEN" 1
	{ event 1 8 "" }
	addlayer "openbar"
}

// Use the original model's physics
//$collisionmodel "door01_left_physics.smd"
//{
//	$mass 50
//	$inertia 1
//	$damping 0
//	$rotdamping 0
//	$rootbone " "
//	$concave
//	$maxconvexpieces 1
//
//}

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
		}
		"hardware1"		 
		{
			"locked"			"DoorHandles.Locked1"
			"unlocked"			"DoorHandles.Unlocked1"
		}
		"hardware2"		 
		{
			"locked"			"DoorHandles.Locked2"
			"unlocked"			"DoorHandles.Unlocked2"
		}
		"hardware3"		 
		{
			"locked"			"DoorHandles.Locked1"
			"unlocked"			"DoorHandles.Unlocked1"
		}
		"hardware4"		 
		{
			"locked"			"combine.door_lock"
			"unlocked"			"DoorHandles.Unlocked1"
		}
	}
}
