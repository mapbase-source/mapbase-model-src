// Created by Crowbar 0.71
// Mapbase only recompiles this for the vortigaunt manned gun attachments below.

$modelname "props_combine\bunker_gun01.mdl"

$bodygroup "studio"
{
	studio "bunker_gun01_reference.smd"
}

$lod 10
{
	replacemodel "bunker_gun01_reference.smd" "bunker_gun01_reference_lod1.smd"
	replacebone "Bunker_Gun.L_hand" "Bunker_Gun.Gun_Pitch"
	replacebone "Bunker_Gun.R_hand" "Bunker_Gun.Gun_Pitch"
	nofacial
}
$lod 13
{
	replacemodel "bunker_gun01_reference.smd" "bunker_gun01_reference_lod2.smd"
	replacebone "Bunker_Gun.L_hand" "Bunker_Gun.Gun_Pitch"
	replacebone "Bunker_Gun.R_hand" "Bunker_Gun.Gun_Pitch"
	nofacial
}
$lod 16
{
	replacemodel "bunker_gun01_reference.smd" "bunker_gun01_reference_lod3.smd"
	replacebone "Bunker_Gun.L_hand" "Bunker_Gun.Gun_Pitch"
	replacebone "Bunker_Gun.R_hand" "Bunker_Gun.Gun_Pitch"
	nofacial
}
$lod 20
{
	replacemodel "bunker_gun01_reference.smd" "bunker_gun01_reference_lod4.smd"
	replacebone "Bunker_Gun.L_hand" "Bunker_Gun.Gun_Pitch"
	replacebone "Bunker_Gun.R_hand" "Bunker_Gun.Gun_Pitch"
	nofacial
}

$surfaceprop "metal"

$contents "solid"

$illumposition -0.174 1.67 10.144

$noforcedfade

$cdmaterials "models\props_combine\"

$attachment "muzzle" "Bunker_Gun.Gun_Pitch" 26.27 0.01 0 rotate 0 0 0
$attachment "light" "Bunker_Gun.Gun_Pitch" 25.46 0.45 -2.28 rotate 0 0 0
$attachment "L_hand" "Bunker_Gun.L_hand" 0 0 0 rotate 0 0 0
$attachment "R_hand" "Bunker_Gun.R_hand" 0 0 0 rotate 0 0 0
$attachment "aimrotation" "Bunker_Gun.Base" 0 15 0 rotate -83 90 180

// New attachments
$attachment "L_hand_vort" "Bunker_Gun.L_hand" -2 0 0 rotate 0 0 180
$attachment "R_hand_vort" "Bunker_Gun.R_hand" -2 0 0 rotate 0 0 180

$cbox 0 0 0 0 0 0

$bbox -24.557 -8.073 0 21.216 7.726 20.288

$definebone "Bunker_Gun.Base" "" 0 0 0 0 0 89.999982 0 0 0 0 0 0
$definebone "Bunker_Gun.Bipod_Flex1" "Bunker_Gun.Base" 0 7.594948 -1.74555 85.696608 -89.999982 -89.999982 0 0 0 0 0 0
$definebone "Bunker_Gun.Bipod_Flex2" "Bunker_Gun.Bipod_Flex1" 8.854472 0 0 0 128.355729 0 0 0 0 0 0 0
$definebone "Bunker_Gun.Gun_Yaw" "Bunker_Gun.Bipod_Flex2" 9.51054 0 0 0 55.947671 89.999982 0 0 0 0 0 0
$definebone "Bunker_Gun.Gun_Pitch" "Bunker_Gun.Gun_Yaw" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "Bunker_Gun.Flash3" "Bunker_Gun.Gun_Pitch" 11.835633 -1.043192 -0.666903 -60.000029 -89.999982 -89.999982 0 0 0 0 0 0
$definebone "Bunker_Gun.Flash2" "Bunker_Gun.Gun_Pitch" 11.835633 1.10718 -0.574615 60.000029 -89.999982 -89.999982 0 0 0 0 0 0
$definebone "Bunker_Gun.Flash1" "Bunker_Gun.Gun_Pitch" 11.835633 -0.047929 1.241519 0 89.999982 89.999982 0 0 0 0 0 0
$definebone "Bunker_Gun.L_hand" "Bunker_Gun.Gun_Pitch" -19.3069 5.1978 -3.3314 -21.209807 -31.198183 13.12738 0 0 0 0 0 0
$definebone "Bunker_Gun.R_hand" "Bunker_Gun.Gun_Pitch" -16.984301 -6.0741 -1.7099 0 24.958213 -176.983507 0 0 0 0 0 0


$poseparameter "aim_yaw" -60 60 loop 0
$poseparameter "aim_pitch" -35 50 loop 0

$animation "up_right_corrective_animation" "bunker_gun01_anims\up_right_corrective_animation.smd" {
}

$animation "up_center_corrective_animation" "bunker_gun01_anims\up_center_corrective_animation.smd" {
}

$animation "up_left_corrective_animation" "bunker_gun01_anims\up_left_corrective_animation.smd" {
}

$animation "mid_right_corrective_animation" "bunker_gun01_anims\mid_right_corrective_animation.smd" {
}

$animation "mid_center_corrective_animation" "bunker_gun01_anims\mid_center_corrective_animation.smd" {
}

$animation "mid_left_corrective_animation" "bunker_gun01_anims\mid_left_corrective_animation.smd" {
}

$animation "down_right_corrective_animation" "bunker_gun01_anims\down_right_corrective_animation.smd" {
}

$animation "down_center_corrective_animation" "bunker_gun01_anims\down_center_corrective_animation.smd" {
}

$animation "down_left_corrective_animation" "bunker_gun01_anims\down_left_corrective_animation.smd" {
}

$animation "neutral" "bunker_gun01_anims\neutral.smd" {
	fps 30
}

$animation "down_left" "bunker_gun01_anims\down_left.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "down_left_corrective_animation" 0
}

$animation "down_center" "bunker_gun01_anims\down_center.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "down_center_corrective_animation" 0
}

$animation "down_right" "bunker_gun01_anims\down_right.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "down_right_corrective_animation" 0
}

$animation "mid_left" "bunker_gun01_anims\mid_left.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "mid_left_corrective_animation" 0
}

$animation "mid_center" "bunker_gun01_anims\mid_center.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "mid_center_corrective_animation" 0
}

$animation "mid_right" "bunker_gun01_anims\mid_right.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "mid_right_corrective_animation" 0
}

$animation "up_left" "bunker_gun01_anims\up_left.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "up_left_corrective_animation" 0
}

$animation "up_center" "bunker_gun01_anims\up_center.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "up_center_corrective_animation" 0
}

$animation "up_right" "bunker_gun01_anims\up_right.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "up_right_corrective_animation" 0
}

$sequence "idle" {
	"bunker_gun01_anims\idle.smd"
	activity "ACT_BUNKER_GUN_ACTIVE_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "activate" {
	"bunker_gun01_anims\activate.smd"
	activity "ACT_BUNKER_GUN_ACTIVATE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "fire" {
	"bunker_gun01_anims\fire.smd"
	activity "ACT_BUNKER_GUN_FIRE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "retract" {
	"bunker_gun01_anims\retract.smd"
	activity "ACT_BUNKER_GUN_RETRACT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "idle_inactive" {
	"bunker_gun01_anims\idle_inactive.smd"
	activity "ACT_BUNKER_GUN_INACTIVE_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "aim" {
	"up_right"
	"up_center"
	"up_left"
	"mid_right"
	"mid_center"
	"mid_left"
	"down_right"
	"down_center"
	"down_left"
	autoplay
	blend "aim_yaw" -60 60
	blend "aim_pitch" -35 50
	delta
	fadein 0.2
	fadeout 0.2
	hidden
}

$collisionjoints "bunker_gun01_physics.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}

$keyvalues
{
	bone_followers 
	{
		"bone"		"Bunker_Gun.Gun_Pitch"
	}
}
