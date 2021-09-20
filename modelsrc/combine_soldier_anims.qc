// Created by Crowbar 0.36.0.0

$ModelName "combine_soldier_anims.mdl"

//$includemodel "player/male_anims.mdl"

$includemodel "combine_soldier_anims_original.mdl"
$include "combine_soldier_anims_DeclareSequence.qci"

// Must be included
$include "BaseModel.qci"
$include "hl2mp_ported_anims/commonbones.qci"


$include "hl2mp_ported_anims/weaponmacros.qci"
//$pushd "male_shared_anims"
//$include "DefaultHolster.qci"
//$popd

$definevariable Blend_Idle_Default "CombatIdle1_SMG1"
$definevariable Blend_Idle_Pistol "CombatIdle1_SMG1"
$definevariable Blend_Idle_Rifle "CombatIdle1_SMG1"

$definevariable Blend_SMD_Default "combine_soldier_anims_anims\CombatIdle1_SMG1.smd"
$definevariable Blend_SMD_Pistol "combine_soldier_anims_anims\CombatIdle1_SMG1.smd"
$definevariable Blend_SMD_Rifle "combine_soldier_anims_anims\CombatIdle1_SMG1.smd"

// Soldiers don't use nodes...
$definevariable Blend_Node_Default "shooting"
$definevariable Blend_Node_Pistol "shooting"
$definevariable Blend_Node_Rifle "shooting"

$animation a_AnimMatch_Default "combine_soldier_anims_anims\CombatIdle1_SMG1.smd" frame 0 0
$definevariable AnimMatch_Default a_AnimMatch_Default

$animation a_AnimMatch_Idle "combine_soldier_anims_anims\Idle1.smd" frame 0 0
$definevariable AnimMatch_Idle a_AnimMatch_Idle

$include "BaseDI.qci"

// DO NOT uncomment unless you have the interaction keyvalues ready for each model!
// Having the interaction sequences without the keyvalues bypasses our fix for the "interaction twinning" bug
// and makes soldiers susceptible to it.
//$include "AlyxDI.qci"

$include "GenericAnimationMacros.qci"
$include "SoldierSignals.qci"

$include "HunterRecvDI.qci"

$include "AlyxBlindfire.qci"

$weightlist "FeetOnly" {
	"ValveBiped.Bip01_L_Foot" 1
	"ValveBiped.Bip01_R_Foot" 1
	"ValveBiped.Bip01_L_Calf" 0
	"ValveBiped.Bip01_R_Calf" 0
}

$MakeManhackDeployLayer "police_animations_anims\deploy.smd" 30
$MakeManhackDeployAnimation $Blend_SMD_Default$ 50 30
$MakeManhackDeployGesture $Blend_SMD_Default$

// ================================================================
// 
// Harass Animations
// 
// Harass animations on soldiers.
// 
// ================================================================
$include "PoliceHarassGestures.qci"

//$sequence "harassfront1" {
//	"police_animations_anims\harassfront2.smd"
//	activity "ACT_POLICE_HARASS1" 1
//	match $AnimMatch_Idle$
//	addlayer harassfront1_layer
//	cmdlist lockfeet
//}
//
//$sequence "harassfront2" {
//	"police_animations_anims\harassfront2.smd"
//	activity "ACT_POLICE_HARASS2" 1
//	match $AnimMatch_Idle$
//	addlayer harassfront2_layer
//	cmdlist lockfeet
//}

$sequence "harassfront1" {
	"combine_soldier_anims_anims\Idle1.smd"
	numframes 50
	activity "ACT_POLICE_HARASS1" 1
	blendlayer "harassfront1_layer" 0 10 25 49 spline // Try harassfront1_gesture too
	ikrule "lfoot" footstep
	ikrule "rfoot" footstep
	ikrule "rhand" release
	ikrule "lhand" release
}

$sequence "harassfront2" {
	"combine_soldier_anims_anims\Idle1.smd"
	numframes 50
	activity "ACT_POLICE_HARASS2" 1
	blendlayer "harassfront2_layer" 0 10 40 49 spline // Try harassfront2_gesture too
	ikrule "lfoot" footstep
	ikrule "rfoot" footstep
	ikrule "rhand" release
	ikrule "lhand" release
}

// ================================================================
// ================================================================

//$sequence deploy_layer $AnimMatch_Default$ weightlist "FeetOnly" hidden
//$sequence "deploy" {
//	"police_animations_anims\deploy.smd"
//	activity "ACT_METROPOLICE_DEPLOY_MANHACK" 1
//	{ event AE_METROPOLICE_START_DEPLOY 10 "" }
//	{ event AE_METROPOLICE_DEPLOY_MANHACK 33 "" }
//	match $AnimMatch_Default$
//	addlayer deploy_layer
//	cmdlist lockfeet
//}

//$sequence "pickup_weird" {
//	"male_shared_anims\pickup.smd"
//	activity "ACT_METROPOLICE_DEPLOY_MANHACK" 1
//	{ event 2040 13 "" }
//	match $AnimMatch_Default$
//	cmdlist lockfeet
//}

// Use our DI blending techniques
$sequence pickup_unarmed_layer "combine_soldier_anims_anims\Idle_Unarmed.smd" numframes 2 hidden

$MakeAdjustedAnimation pickup "male_shared_anims\pickup.smd" $Blend_SMD_Default$ 8 24 43
$append pickup {
	activity "ACT_PICKUP_GROUND" 1
	{ event 2040 13 "" }
	blendlayer pickup_unarmed_layer 0 0 0 13
}

$MakeAdjustedAnimation gunrack "male_shared_anims\gunrack.smd" $Blend_SMD_Default$ 12 16 40
$append gunrack {
	activity "ACT_PICKUP_RACK" 1
	{ event 2040 15 "" }
	blendlayer pickup_unarmed_layer 0 0 0 13
}


// 
// AR2 Alt-Fire Gesture Experiment
// 
// Programming not included
// 
$weightlist "AR2AltFireWeightlistDelta" {
	"ValveBiped.Bip01_Pelvis" 1
	"ValveBiped.Bip01_L_Clavicle" 0
	"ValveBiped.Bip01_Spine" 1
	"ValveBiped.Bip01_R_Clavicle" 0
	"ValveBiped.Bip01_Neck1" 0
}

$weightlist "AR2AltFireWeightlist" {
	"ValveBiped.Bip01_Pelvis" 0
	"ValveBiped.Bip01_Spine" 0
	"ValveBiped.Bip01_L_Clavicle" 1
	"ValveBiped.Bip01_R_Clavicle" 1
	"ValveBiped.Bip01_L_Thigh" 0
	"ValveBiped.Bip01_R_Thigh" 0
	"ValveBiped.Bip01_Neck1" 1
}

$sequence "shootAR2alt_gesture_delta" {
	"combine_soldier_anims_anims\shootAR2alt.smd"
	subtract "shootAR2alt_gesture_delta" 0
	delta
	hidden
	weightlist "AR2AltFireWeightlistDelta"
}

$sequence "shootAR2alt_gesture" {
	"combine_soldier_anims_anims\shootAR2alt.smd"
	weightlist "AR2AltFireWeightlist"
	addlayer "shootAR2alt_gesture_delta"
	addlayer "Aim_stand_delta_all"
	activity "ACT_GESTURE_AR2_ALTFIRE" 1
	{ event COMBINE_AE_BEGIN_ALTFIRE 0 "" }
	{ event COMBINE_AE_ALTFIRE 16 "" }
}

$DefaultSignalGestures 36

//$Attachment "eyes" "ValveBiped.Bip01_Head1" 4.5 -5 0 rotate 0 -90 -90
//$include "body_poses_lean.qci"

// ================================================================
// 
// Misc.
// 
// ================================================================

// Use our DI blending techniques to add a heal animation
$MakeAdjustedAnimation Heal "male_shared_anims\Heal.smd" $Blend_SMD_Default$ 12 32 50
//$MakeAdjustedDelta Heal "male_shared_anims\Heal.smd" $Blend_SMD_Default$ 50 30
$append Heal {
	activity "ACT_CIT_HEAL" 1
	{ event AE_CITIZEN_HEAL 31 "" }
}
