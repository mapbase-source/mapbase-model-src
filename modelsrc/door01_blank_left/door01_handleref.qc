// Created by Crowbar 0.56

// 
// A mere reference model! Unusable! DO NOT USE!
// 
// This is for people creating doors with door01_blank_left.
// 

$modelname "props_c17/door01_handleref01.mdl"

$bodygroup "Body"
{
	studio "door01_left_door_reference.smd"
}
$bodygroup "handle01"
{
	studio "door01_left_handle01_reference.smd"
}

$surfaceprop "metal"

$contents "solid"

$illumposition 23 0 0

$cdmaterials "models\props_c17\"

$cbox 0 0 0 0 0 0

$bbox -5.996 -1.25 -54.25 5.996 47.25 54.25

$sequence "idle" {
	"door01_left_anims\idle.smd"
	activity "ACT_IDLE" 1
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
