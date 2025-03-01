// Created by Crowbar 0.74

$modelname "weapons/w_grenade.mdl"

$bodygroup "studio"
{
	studio "Grenade_reference.smd"
}


$surfaceprop "grenade"

$contents "solid"

$illumposition -0.032 -0.002 0.085

$cdmaterials "models\weapons\w_grenade\"

$attachment "fuse" "fuse" 0 0 0 rotate 0 90 0

$cbox 0 0 0 0 0 0

$bbox -2.089 -2.089 -4.684 2.089 2.089 4.839

$sequence "idle" {
	"Grenade_reference.smd"
	activity "ACT_VM_IDLE" 1
}

$collisionmodel "w_grenade_physics.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
