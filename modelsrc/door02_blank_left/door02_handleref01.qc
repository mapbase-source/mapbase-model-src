// Created by Crowbar 0.56

// 
// A mere reference model! Unusable! DO NOT USE!
// 
// This is for people creating doors with door02_blank_left.
// 

$modelname "props_c17/door02_handleref01.mdl"

$bodygroup "Body"
{
	studio "door02_double_door_reference.smd"
}
$bodygroup "handle02"
{
	studio "door02_double_door01_left_handle01_reference.smd"
}

$surfaceprop "metal"

$contents "solid"

$illumposition 23 0 0

$cdmaterials "models\props_c17\"

$texturegroup "skinfamilies"
{
	{ "frostedglass_blank_01a" }
	{ "frostedglass_01a" }
}

$cbox 0 0 0 0 0 0

$bbox -5.996 -1.25 -54.25 5.996 47.25 54.25

$sequence "idle" {
	"door02_double_anims\idle.smd"
	activity "ACT_IDLE" 1
}

$keyvalues
{
	door_options 
	{
		"actual_model" "props_c17/door02_blank_double.mdl"
	}
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
