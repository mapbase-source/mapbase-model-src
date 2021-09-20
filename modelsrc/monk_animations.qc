// Created by Crowbar 0.56

$modelname "monk_animations.mdl"

$includemodel "monk_animations_original.mdl"

// Must be included
$include "BaseModel.qci"
$include "hl2mp_ported_anims/commonbones.qci"

//$poseparameter "gesture_height" 1 -1 loop 0
//$poseparameter "gesture_width" 1 -1 loop 0
//$poseparameter "move_yaw" -180 180 loop 0

//$definevariable Blend_Idle_Default "Idle_SMG1_Aim"
//$definevariable Blend_Idle_Pistol "Idle_Pistol_Aim"
//$definevariable Blend_Idle_Rifle "Idle_SMG1_Aim"

$definevariable Blend_SMD_Default "monk_animations_anims\Idle_SMG1_Aim.smd"
$definevariable Blend_SMD_Pistol "police_animations_anims\pistolangryidle2.smd"
$definevariable Blend_SMD_Rifle "monk_animations_anims\Idle_SMG1_Aim.smd"

$definevariable Blend_Node_Default "shooting"
$definevariable Blend_Node_Pistol "shooting"
$definevariable Blend_Node_Rifle "shooting"

$include "BaseDI.qci"
$include "AlyxDI.qci"
