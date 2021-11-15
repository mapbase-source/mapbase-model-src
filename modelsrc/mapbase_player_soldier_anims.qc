$modelname player\mapbase_soldier_anims.mdl

$include "hl2mp_ported_anims\commonbones.qci"
$include "hl2mp_ported_anims\standardhierarchy.qci"
$include "hl2mp_ported_anims\standardikchains.qci"
$include "hl2mp_ported_anims\hitbox.qci"

//$lockbonelengths

//$lockdefinebones

$include "hl2mp_ported_anims\player_macros.qci"
$include "hl2mp_ported_anims\weaponmacros.qci"

$sequence reference "hl2mp_ported_anims\ragdoll_pose"

$include "HL2MPMoveAnims.qci"

$pushd "combine_soldier_anims_anims"
$include "mapbase_player_include_anims_soldier.qci"
$popd

// ---------------------------------------------------
// Soldier Signals
$include "SoldierSignals.qci"

// Soldiers' original signals had a FPS of 48
$definevariable SignalFPS 36 //32
$DefaultSignalGestures $SignalFPS$
// ---------------------------------------------------

$attachment "eyes" "ValveBiped.Bip01_Head1" 0 -4 67.5 absolute

$pushd "ChoreoModels"
$include "ChoreoModels\body_poses_lean.qci"
$popd
