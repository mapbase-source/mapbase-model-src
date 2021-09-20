// Created by Crowbar 0.56
// 
// We need to modify the shooting animation so it works on NPCs
// 

$modelname "weapons/W_357.mdl"

$bodygroup "studio"
{
	studio "w_357_HL2DM_357_reference.smd"
}


$surfaceprop "weapon"
$contents "solid"
$illumposition 0.561 -6.385 0.209
$cdmaterials "models\weapons\w_357\"

$attachment "muzzle" "ValveBiped.Muzzle" 0 0 0 rotate -90 -90 0

$bbox -1.563 -1.255 -3.944 14.334 2.163 4.361

$definebone "ValveBiped" "" 0 0 0 0 0 89.999983 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Hand" "ValveBiped" -1.040719 -1.86425 -1.514839 -89.294158 46.301412 39.751636 0 0 0 0 0 0
$definebone "ValveBiped.bone" "ValveBiped.Bip01_R_Hand" 2.361367 -2.9876 -2.569651 3.947336 -89.624637 -87.351768 0 0 0 0 0 0
$definebone "ValveBiped.Muzzle" "ValveBiped.bone" -1.904833 2.566497 13.39708 -0.113216 0.002579 -2.112095 0 0 0 0 0 0


$sequence "idle" {
	"w_357_anims\idle.smd"
	activity "ACT_VM_IDLE" 1
}

$sequence "attack1" {
	"w_357_anims\attack1.smd"
	activity "ACT_RANGE_ATTACK_PISTOL" 1
	//{ event 5003 0 "2" }
	{ event AE_NPC_MUZZLEFLASH 0 "357 MUZZLE" }
	{ event 3014 0 "" }
	numframes 2
}

$collisionmodel "w_357_physics.smd"
{
	$mass 10
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
}
