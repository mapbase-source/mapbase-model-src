// Created by Crowbar 0.56

$modelname "combine_soldier_choreo.mdl"

$include "SoldierChoreoModel.qci"

$DefineSoldierModel "combine_soldier_Soldier_reference.smd"

$lod 10
{
	replacemodel "combine_soldier_Soldier_reference.smd" "combine_soldier_Soldier_reference_lod1.smd"
}
$lod 25
{
	replacemodel "combine_soldier_Soldier_reference.smd" "combine_soldier_Soldier_reference_lod2.smd"
}
$lod 40
{
	replacemodel "combine_soldier_Soldier_reference.smd" "combine_soldier_Soldier_reference_lod3.smd"
}
$lod 60
{
	replacemodel "combine_soldier_Soldier_reference.smd" "combine_soldier_Soldier_reference_lod4.smd"
}
$shadowlod
{
	replacemodel "combine_soldier_Soldier_reference.smd" "combine_soldier_Soldier_reference_lod5.smd"
}

$surfaceprop "flesh"

$contents "solid"

$illumposition 0.067 2.255 35.51

$eyeposition 0 0 73

$maxeyedeflection 90

$opaque

$cdmaterials "models\Combine_Soldier\"

$texturegroup "skinfamilies"
{
	{ "combinesoldiersheet"         }
	{ "combinesoldiersheet_shotgun" }
}

$attachment "eyes" "ValveBiped.Bip01_Head1" 4.5 -5 0 rotate 0 -90 -90

$cbox 0 0 0 0 0 0

$bbox -13 -13 0 13 13 72

$hboxset "default"
$hbox 2 "ValveBiped.Bip01_Spine" -1 -4.74 -7.22 7 8.27 6.78 ""
$hbox 1 "ValveBiped.Bip01_Head1" -1.75 -8 -3.5 7.25 4 3.5 ""
$hbox 4 "ValveBiped.Bip01_L_UpperArm" -2 -2.75 -2.75 12 2.75 2.75 ""
$hbox 4 "ValveBiped.Bip01_L_Forearm" 0 -2.44 -2.15 10 2.06 2.35 ""
$hbox 4 "ValveBiped.Bip01_L_Hand" 0.25 -1 -2 5.75 1 2 ""
$hbox 5 "ValveBiped.Bip01_R_UpperArm" -2 -2.75 -2.75 12 2.75 2.75 ""
$hbox 5 "ValveBiped.Bip01_R_Forearm" 0 -2.25 -2.25 10 2.25 2.25 ""
$hbox 5 "ValveBiped.Bip01_R_Hand" 0.5 -0.96 -2.33 5.5 1.04 2.61 ""
$hbox 6 "ValveBiped.Bip01_L_Thigh" 1.07 -3 -3 18.92 5 4 ""
$hbox 6 "ValveBiped.Bip01_L_Calf" 0.5 -3.5 -2.8 15.5 3.5 3.2 ""
$hbox 6 "ValveBiped.Bip01_L_Foot" -0.5 -1.5 -2 5.5 4.5 2.5 ""
$hbox 6 "ValveBiped.Bip01_L_Toe0" -0.25 -1.75 -2.19 3.25 0.75 2.46 ""
$hbox 7 "ValveBiped.Bip01_R_Thigh" 1 -5.5 -3.5 19 3.5 3.5 ""
$hbox 7 "ValveBiped.Bip01_R_Calf" 0.5 -4.01 -2.57 15.5 3.99 2.93 ""
$hbox 7 "ValveBiped.Bip01_R_Foot" -1.25 -4 -2.25 5.25 2 2.25 ""
$hbox 7 "ValveBiped.Bip01_R_Toe0" -1 -0.75 -2.6 3 1.75 2.1 ""
$hbox 0 "ValveBiped.Bip01_Pelvis" -7 -4.5 -8 7 4.5 5 ""
$hbox 0 "ValveBiped.Bip01_Spine2" -1 -4.25 -7.25 13 8.25 7.25 ""
$skipboneinbbox

// Include the original model instead
$includemodel "combine_soldier.mdl"
