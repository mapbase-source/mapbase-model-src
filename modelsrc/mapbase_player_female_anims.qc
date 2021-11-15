$modelname player\mapbase_female_anims.mdl

$include "hl2mp_ported_anims\commonbones_female.qci"
$include "hl2mp_ported_anims\standardhierarchy.qci"
$include "hl2mp_ported_anims\standardikchains.qci"
$include "hl2mp_ported_anims\hitbox.qci"

$lockbonelengths

//$lockdefinebones

$include "hl2mp_ported_anims\player_macros.qci"
$include "hl2mp_ported_anims\weaponmacros.qci"

$sequence reference "female_shared_anims\ragdoll"

$include "HL2MPMoveAnims_Female.qci"

$pushd "female_shared_anims"
$include "mapbase_player_include_anims_citizen.qci"
$popd

$attachment "eyes" "ValveBiped.Bip01_Head1"  0 -3.5 65.2 absolute

$pushd "ChoreoModels"
$include "ChoreoModels\body_poses_lean.qci"
$popd

