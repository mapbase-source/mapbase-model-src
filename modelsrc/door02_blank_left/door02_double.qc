// Created by Crowbar 0.56

$modelname "props_c17/door02_blank_double.mdl"

$bodygroup "Body"
{
	//blank
	studio "door02_double_door_reference.smd"
}
$bodygroup "handle02"
{
	blank
	studio "door02_double_door01_left_handle01_reference.smd"
	studio "door02_double_door01_left_handle02_reference.smd"
}

//$lod 15
//{
//	replacemodel "door02_double_door_reference.smd" "door02_double_door_reference_lod1.smd"
//	replacemodel "door02_double_door01_left_handle01_reference.smd" "door02_double_door01_left_handle01_reference_lod1.smd"
//	replacemodel "door02_double_door01_left_handle02_reference.smd" "door02_double_door01_left_handle02_reference_lod1.smd"
//	nofacial
//}

$surfaceprop "metal"

$contents "solid"

$illumposition 22.06 0.045 0

$cdmaterials "models\props_c17\"

$texturegroup "skinfamilies"
{
	{ "frostedglass_blank_01a" }
	{ "frostedglass_01a" }
}

$cbox 0 0 0 0 0 0

$bbox -5.909 -1.281 -54.281 5.82 45.12 54.281

$definebone "door" "" 0 0 0 0 0 89.999983 0 0 0 0 0 0
$definebone "handle" "door" 43.810005 -10.390667 1.997513 0 0 0 0 0 0 0 0 0
$definebone "handle02" "door" 43.810005 -10.390667 1.997513 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"door02_double_anims\idle.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "locked" {
	"door02_double_anims\locked.smd"
	activity "ACT_DOOR_LOCKED" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "open" {
	"door02_double_anims\open.smd"
	activity "ACT_DOOR_OPEN" 1
	{ event 1 8 "" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "door02_double_physics.smd"
{
	$mass 50
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 1

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
		}
		"skin0"		 
		{
			"open"			"Doors.FullOpen1"
			"close"			"Doors.FullClose1"
			"move"			"Doors.Move1"
			"surfaceprop"			"metal"
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
	}
}
