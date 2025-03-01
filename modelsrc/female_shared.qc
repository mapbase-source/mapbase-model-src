// Created by Crowbar 0.56

$modelname "Humans\female_shared.mdl"

// Automatically tries to convert any non-female animations to the female skeleton
$lockbonelengths

// Must be included
$include "BaseModel.qci"
$include "hl2mp_ported_anims/commonbones_female.qci"
$include "hl2mp_ported_anims/weaponmacros.qci"
$include "hl2mp_ported_anims/player_macros.qci"
$include "GenericWeightlists.qci"
$include "GenericAnimationMacros.qci"

$include "FemaleCitizenMoveAnims.qci"

$includemodel "humans/female_shared_original.mdl"
$include "female_shared_DeclareSequence.qci"

$pushd "female_shared_anims"
$include "CitizenActivityFixes.qci"
$include "CitizenNewWeaponActivities.qci"
$popd

// A quick way of retargeting male animations to the female skeleton.
$weightlist "MaleToFemaleWeights" { "ValveBiped.Bip01_Pelvis" 1 "ValveBiped.Bip01_L_UpperArm" 0 "ValveBiped.Bip01_R_UpperArm" 0 }
$sequence "male_to_female_layer_base" "male_shared_anims\ragdoll.smd" hidden
$sequence "male_to_female_layer" "female_shared_anims\ragdoll.smd" weightlist "MaleToFemaleWeights" subtract "male_to_female_layer_base" 0 delta hidden

// ================================================================
// 
// Pistol Animations
// 
// ================================================================
$include "NewPistolAnimations_FemaleCitizen.qci"
$include "NewPistolAnimations_357_FemaleCitizen.qci"
// ================================================================

$sequence "MeleeAttack01_Act" {
	"female_shared_anims\MeleeAttack01.smd"
	activity "ACT_MELEE_ATTACK1" 1
	{ event 3 13 "" }
	cmdlist lockfeet
}

$pushd "female_shared_anims"
$include "DefaultHolster.qci"
$popd

$definevariable Blend_Idle_Default "Idle_SMG1_Aim"
$definevariable Blend_Idle_Unarmed "idle_subtle"
$definevariable Blend_Idle_Panicked "crouch_panicked"
$definevariable Blend_Idle_Pistol "Pistol_idle_aim"
$definevariable Blend_Idle_Rifle "Idle_SMG1_Aim"
$definevariable Blend_Idle_Rifle_Crouched "crouch_aim_smg1"

$definevariable Blend_SMD_Default "female_shared_anims\Idle_SMG1_Aim.smd"
$definevariable Blend_SMD_Unarmed "female_shared_anims\idle_subtle.smd"
$definevariable Blend_SMD_Panicked "female_shared_anims\crouch_panicked.smd"
$definevariable Blend_SMD_Pistol "female_shared_anims\Pistol_idle_aim.smd"
$definevariable Blend_SMD_Rifle "female_shared_anims\Idle_SMG1_Aim.smd"
$definevariable Blend_SMD_Rifle_Crouched "female_shared_anims\crouch_aim_smg1.smd"
$definevariable Blend_SMD_Annabelle "female_shared_anims\idle_ar2_aim.smd"
$definevariable Blend_SMD_Annabelle_Crouch "female_shared_anims\crouch_aim_smg1.smd" // TODO?

$definevariable Blend_Node_Default "shooting"
$definevariable Blend_Node_Pistol "shooting"
$definevariable Blend_Node_Rifle "shooting"

$definevariable Blend_Aim_Rifle "soldier_Aim_9_directions"

$include "BaseDI.qci"
$include "AlyxDI.qci"
$include "AntlionRecvDI.qci"

$include "HunterRecvDI.qci"

$include "OnFirePolice.qci"

$include "AlyxBlindfire.qci"
$include "AlyxHolster.qci"

$include "Rappel.qci"
$include "SoldierSignals.qci"

// Soldiers' original signals had a FPS of 48
$definevariable SignalFPS 36 //32
$DefaultSignalGestures $SignalFPS$
$DefaultSignalSequences "female_shared_anims\Idle_SMG1_Aim.smd" $SignalFPS$

$weightlist "GrenadeCorrectionWeights" {
	"ValveBiped.Bip01_Pelvis" 1
	"ValveBiped.Bip01_L_Thigh" 0.25
	"ValveBiped.Bip01_L_Calf" 0.15
	"ValveBiped.Bip01_L_Foot" 0
}

$SoldierGrenadeAnimation $Blend_SMD_Default$
$append "grenThrow_layer" {
	weightlist "GrenadeCorrectionWeights"
}

$makeweapongesturep grenThrow_gesture "combine_soldier_anims_anims\grenThrow.smd" 10 35 50
$append grenThrow_gesture {
	fps 45
	activity "ACT_GESTURE_COMBINE_THROW_GRENADE" 1
	{ event 7 30 "" }
}

$makeweapongesturep grenDrop_gesture "combine_soldier_anims_anims\grenDrop.smd" 12 32 43
$append grenDrop_gesture {
	fps 35
	activity "ACT_GESTURE_SPECIAL_ATTACK1" 1
	{ event 7 26 "" }
}

$makeweapongesturep grenPlace_gesture "combine_soldier_anims_anims\grenPlace.smd" 12 35 45
$append grenPlace_gesture {
	fps 35
	activity "ACT_GESTURE_SPECIAL_ATTACK2" 1
	{ event 9 25 "" }
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
	"female_shared_anims\Idle_SMG1_Relaxed.smd"
	numframes 50
	activity "ACT_POLICE_HARASS1" 1
	blendlayer "harassfront1_layer" 0 10 25 49 spline // Try harassfront1_gesture too
	ikrule "lfoot" footstep
	ikrule "rfoot" footstep
	ikrule "rhand" release
	ikrule "lhand" release
}

$sequence "harassfront2" {
	"female_shared_anims\Idle_SMG1_Relaxed.smd"
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

$sequence "arrestidle" "female_shared_anims\arrestidle.smd"
$sequence "arrestidle2" "male_shared_anims\arrestidle.smd"
$sequence "arrestcurious" "female_shared_anims\arrestcurious.smd"

$pushd "female_shared_anims"
$include "ArrestAnims.qci"

$include "CitizenPackageRun_Female.qci"
$include "CitizenSuitcase_FemaleCitizen.qci"

$definevariable PistolIdleLayer "Idle_Pistol_Layer2"
$definevariable PistolIdleLowLayer "Idle_Pistol_Layer2"
$definevariable PistolCrouchAimLayer "Idle_Pistol_Layer3"
$definevariable PistolAimLayer "layer_Aim_p_all"
$include "CitizenWallCover.qci"

$include "CitizenCrouchMovement.qci"
$popd

$include "l4d1_ported_anims\L4D1_LadderClimb_Female.qci"

$include "NPCDoorAnims.qci"

$include "AnnabelleAnimations.qci"

// ================================================================

$sequence reference "female_shared_anims\ragdoll"
$include "HL2MPMoveAnims_Female.qci"

$pushd "female_shared_anims"
$animation "@gesture_shoot_pistol_corrective_animation" "..\police_animations_anims\@gesture_shoot_pistol_corrective_animation.smd"

$include "mapbase_player_include_anims_citizen.qci"
$popd

// ================================================================

$KeyValues
{
	dynamic_interactions 
	{
		$DIKV_Alyx
	}
	
	playermodel_data
	{
		neck_pivot_up			"12"
		neck_pivot_fwd			"-4"
		neck_pivot_duck_up		"12"
		neck_pivot_duck_fwd		"16"
		
		bone_transforms
		{
			$include "mapbase_player_include_bonetransforms.qci"
		}
	}
}
