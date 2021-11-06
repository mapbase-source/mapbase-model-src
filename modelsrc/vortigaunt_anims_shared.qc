// Created by Crowbar 0.71
// 
// At the moment, this is shared between HL2 and Episodic.
// In Mapbase's HL2 content, "vortigaunt_anims_original.mdl" is the HL2 animations.
// In Mapbase's Episodic content, "vortigaunt_anims_original.mdl" is the EP2 animations.
// 

$modelname "vortigaunt_anims.mdl"

$includemodel "vortigaunt_anims_original.mdl"

$ikchain "rhand" "ValveBiped.hand1_R" knee 0.835 0.55 0
$ikchain "lhand" "ValveBiped.hand1_L" knee 0.807 0.59 0
$ikchain "rfoot" "ValveBiped.Bip01_R_Foot" knee 0.802 0.598 0
$ikchain "lfoot" "ValveBiped.Bip01_L_Foot" knee 0.798 0.603 0

$ikautoplaylock "rfoot" 1 0.1
$ikautoplaylock "lfoot" 1 0.1

$surfaceprop "alienflesh"

// ================================================================

// 
// Manned Gun Animations
// 
// Note that this requires the target weapon to have attachments named "L_hand_vort" and "R_hand_vort"
// in order to look correct
// 
$animation "Man_Gun_neutral" "vortigaunt_anims\custom\Man_Gun_vort.smd"

$definemacro ManGunAim AnimName FileName \\
$animation $AnimName$ $FileName$ subtract "Man_Gun_neutral" 0

$ManGunAim "Man_Gun_down_left" "vortigaunt_anims\custom\Man_Gun_vort_aim_down_left.smd"
$ManGunAim "Man_Gun_down_center" "vortigaunt_anims\custom\Man_Gun_vort_aim_down_center.smd"
$ManGunAim "Man_Gun_down_right" "vortigaunt_anims\custom\Man_Gun_vort_aim_down_right.smd"
$ManGunAim "Man_Gun_mid_left" "vortigaunt_anims\custom\Man_Gun_vort_aim_mid_left.smd"
$ManGunAim "Man_Gun_mid_center" "vortigaunt_anims\custom\Man_Gun_vort.smd"
$ManGunAim "Man_Gun_mid_right" "vortigaunt_anims\custom\Man_Gun_vort_aim_mid_right.smd"
$ManGunAim "Man_Gun_up_left" "vortigaunt_anims\custom\Man_Gun_vort_aim_up_left.smd"
$ManGunAim "Man_Gun_up_center" "vortigaunt_anims\custom\Man_Gun_vort_aim_up_center.smd"
$ManGunAim "Man_Gun_up_right" "vortigaunt_anims\custom\Man_Gun_vort_aim_up_right.smd"

$sequence "Man_Gun_Aim_all" {
	"Man_Gun_up_right"
	"Man_Gun_up_center"
	"Man_Gun_up_left"
	"Man_Gun_mid_right"
	"Man_Gun_mid_center"
	"Man_Gun_mid_left"
	"Man_Gun_down_right"
	"Man_Gun_down_center"
	"Man_Gun_down_left"
	blend "aim_yaw" -60 60
	blend "aim_pitch" -35 50
	delta
	fadein 0.2
	fadeout 0.2
	hidden
}

$sequence "Man_Gun" {
	"vortigaunt_anims\custom\Man_Gun_vort.smd"
	activity "ACT_IDLE_MANNEDGUN" 1
	fadein 0.2
	fadeout 0.2
	addlayer "Man_Gun_Aim_all"
	fps 30
	loop
	ikrule "lfoot" release
	ikrule "rfoot" release
	ikrule "lhand" attachment "L_hand_vort" radius 50
	ikrule "rhand" attachment "R_hand_vort" radius 50
}
