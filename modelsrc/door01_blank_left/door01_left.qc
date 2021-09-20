// Created by Crowbar 0.56

$modelname "props_c17/door01_blank_left.mdl"

$bodygroup "Body"
{
	blank
	//studio "door01_left_door_reference.smd"
}
$bodygroup "handle01"
{
	blank
	studio "door01_left_handle01_reference.smd"
	studio "door01_left_handle02_reference.smd"
	studio "door01_left_handle03_reference.smd"
}

//$lod 15
//{
//	replacemodel "door01_left_door_reference.smd" "door01_left_door_reference_lod1.smd"
//	replacemodel "door01_left_handle01_reference.smd" "door01_left_handle01_reference_lod1.smd"
//	replacemodel "door01_left_handle02_reference.smd" "door01_left_handle02_reference_lod1.smd"
//	replacemodel "door01_left_handle03_reference.smd" "door01_left_handle03_reference_lod1.smd"
//	nofacial
//}

$surfaceprop "metal"

$contents "solid"

$illumposition 23 0 0

$cdmaterials "models\props_c17\"

$texturegroup "skinfamilies"
{
	{ "door01_blank"        }
	{ "door01_blank_metal" }
	{ "door01_blank_metal" } // Actually chainlink fence
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
			"open"			"Doors.FullOpen3"
			"close"			"Doors.FullClose3"
			"move"			"Doors.Move3"
			"surfaceprop"			"wood"
		}
		"skin1"		 
		{
			"open"			"Doors.FullOpen1"
			"close"			"Doors.FullClose1"
			"move"			"Doors.Move1"
			"surfaceprop"			"metal"
		}
		"skin2"		 
		{
			"open"			"Doors.FullOpen6"
			"close"			"Doors.FullClose6"
			"move"			"Doors.Move6"
			"surfaceprop"			"chainlink"
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

$collisionmodel "door01_left_physics.smd"
{
	$mass 50
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 1
}
