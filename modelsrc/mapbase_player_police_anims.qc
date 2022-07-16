$modelname player\mapbase_police_anims.mdl

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

$pushd "police_animations_anims"
$include "mapbase_player_include_anims_police.qci"
$popd

$attachment "eyes" "ValveBiped.Bip01_Head1" 0 -4 67.5 absolute

$pushd "ChoreoModels"
$include "ChoreoModels\body_poses_lean.qci"
$popd
