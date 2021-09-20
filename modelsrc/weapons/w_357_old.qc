// Created by Crowbar 0.56
// 
// We need to modify the muzzle attachment so it works on NPCs
// 

$modelname "weapons/w_357.mdl"

$bodygroup "studio"
{
	studio "w_357_reference.smd"
}


$surfaceprop "weapon"
$contents "solid"
$illumposition 1.346 1.301 0.06
$cdmaterials "models\weapons\w_357\"

// Muzzle
$Attachment "muzzle" "ValveBiped.Weapon_bone" 6.31 -0.68 0.42 rotate 4.49 -1.17 -98.82

$bbox -8.614 -2.682 -1.188 6.252 5.345 1.411

$definebone "MAXSceneRoot.Cylinder01" "" 0 0 0 0 0 89.999983 0 0 0 0 0 0


$sequence "idle" {
	"w_357_anims\idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "attack1" {
	"w_357_anims\attack1.smd"
	activity "ACT_RANGE_ATTACK_PISTOL" 1
	{ event 5003 0 "2" }
	{ event AE_NPC_MUZZLEFLASH 0 "357 MUZZLE" }
	{ event 3014 0 "" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "w_357_physics.smd"
{
	$mass 2
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
