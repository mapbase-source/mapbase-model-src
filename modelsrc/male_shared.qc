// Created by Crowbar 0.56

$modelname "Humans\male_shared.mdl"

//$includemodel "player/male_anims.mdl"

// Must be included
$include "BaseModel.qci"
$include "hl2mp_ported_anims/commonbones.qci"
$include "hl2mp_ported_anims/weaponmacros.qci"

$includemodel "humans/male_shared_original.mdl"
$include "male_shared_DeclareSequence.qci"

$sequence "MeleeAttack01_Act" {
	"male_shared_anims\MeleeAttack01.smd"
	activity "ACT_MELEE_ATTACK1" 1
	{ event 3 13 "" }
	ikrule rhand touch "ValveBiped.Bip01_R_Hand" usesource
	cmdlist lockfeet
}

$pushd "male_shared_anims"
$include "DefaultHolster.qci"
$popd

// Remove this if we get real pistol animations
$animation a_Idle_Pistol_Aim "male_shared_anims\shootp1.smd" frame 0 0
$sequence "Idle_Pistol_Aim" a_Idle_Pistol_Aim {
	activity "ACT_IDLE_ANGRY_PISTOL" 1
	numframes 10
	fps 4
	cmdlist lockfeet
}

$definevariable Blend_Idle_Default "Idle_SMG1_Aim"
$definevariable Blend_Idle_Pistol "Idle_Pistol_Aim"
$definevariable Blend_Idle_Rifle "Idle_SMG1_Aim"

$definevariable Blend_SMD_Default "male_shared_anims\Idle_SMG1_Aim.smd"
$definevariable Blend_SMD_Pistol "police_animations_anims\pistolangryidle2.smd"
$definevariable Blend_SMD_Rifle "male_shared_anims\Idle_SMG1_Aim.smd"

$definevariable Blend_Node_Default "shooting"
$definevariable Blend_Node_Pistol "shooting"
$definevariable Blend_Node_Rifle "shooting"

$animation a_AnimMatch_Default "male_shared_anims\Idle_SMG1_Aim.smd" frame 0 0
$definevariable AnimMatch_Default a_AnimMatch_Default

$include "BaseDI.qci"
$include "AlyxDI.qci"
$include "AntlionRecvDI.qci"

// Needs to use response criteria now
$include "HunterRecvDI.qci"

$include "OnFirePolice.qci"

$include "AlyxBlindfire.qci"

$include "Rappel.qci"
$include "GenericAnimationMacros.qci"
$include "SoldierSignals.qci"

// Soldiers' original signals had a FPS of 48
$definevariable SignalFPS 36 //32
$DefaultSignalGestures $SignalFPS$
$DefaultSignalSequences "male_shared_anims\Idle_SMG1_Aim.smd" $SignalFPS$

$weightlist "GrenadeCorrectionWeights" {
	"ValveBiped.Bip01_Pelvis" 1
	"ValveBiped.Bip01_L_Thigh" 0.25
	"ValveBiped.Bip01_L_Calf" 0.15
	"ValveBiped.Bip01_L_Foot" 0
}

//$MakeGrenadeGesture $DI_Idle_Default$ "combine_soldier_anims_anims/grenThrow" 10 40 50 45
$SoldierGrenadeAnimation $Blend_SMD_Default$
$append "grenThrow_layer" {
	weightlist "GrenadeCorrectionWeights"
}

// Not good enough at/m
//$SoldierGrenadeDropAnimation $Blend_SMD_Default$
//$append "grenDrop_layer" {
//	weightlist "GrenadeCorrectionWeights"
//}
//$SoldierGrenadePlaceAnimation $Blend_SMD_Default$
//$append "grenPlace_layer" {
//	weightlist "GrenadeCorrectionWeights"
//}

$MakeManhackDeployLayer "police_animations_anims\deploy.smd" 30
$MakeManhackDeployAnimation $Blend_SMD_Default$ 50 30
$MakeManhackDeployGesture $Blend_SMD_Default$

// Funny bit
//$weightlist "FunnyTorsoWeightlist" { "ValveBiped.Bip01_Pelvis" 0 "ValveBiped.Bip01_R_Clavicle" 1 "ValveBiped.Bip01_L_Clavicle" 1 }
//$animation "a_Idle_Angry_Shotgun" "female_shared_anims\shoot_shotgun.smd" frame 0 0
//$sequence "funny01" a_Idle_Angry_Shotgun {
//	numframes 30
//	addlayer "shotgun_layer"
//	weightlist "FunnyTorsoWeightlist"
//}

$include "PoliceFlinches.qci"

// ================================================================
// 
// Harass Animations
// 
// Harass animations on citizens.
// 
// ================================================================
$include "PoliceHarassGestures.qci"

$sequence "harassfront1" {
	"male_shared_anims\Idle_SMG1_Relaxed.smd"
	numframes 50
	activity "ACT_POLICE_HARASS1" 1
	blendlayer "harassfront1_layer" 0 10 25 49 spline // Try harassfront1_gesture too
	ikrule "lfoot" footstep
	ikrule "rfoot" footstep
	ikrule "rhand" release
	ikrule "lhand" release
}

$sequence "harassfront2" {
	"male_shared_anims\Idle_SMG1_Relaxed.smd"
	numframes 50
	activity "ACT_POLICE_HARASS2" 1
	blendlayer "harassfront2_layer" 0 10 40 49 spline // Try harassfront2_gesture too
	ikrule "lfoot" footstep
	ikrule "rfoot" footstep
	ikrule "rhand" release
	ikrule "lhand" release
}

// ================================================================
// 
// Misc.
// 
// ================================================================
$include "SoldierEP1Rappel.qci"

$pushd "male_shared_anims"
$definevariable PanickedIdle "crouchIdle_panicked4"
$include "ArrestAnims.qci"
$popd

$KeyValues
{
	dynamic_interactions 
	{
		$DIKV_Alyx
	}
}
