// Created by Crowbar 0.68

$modelname "props_foliage/tree_deciduous_01a.mdl"

$staticprop

$bodygroup "Body"
{
	studio "tree_deciduous_01a_reference.smd"
}

$lod 50
{
	replacemodel "tree_deciduous_01a_reference.smd" "tree_deciduous_01a_reference_lod1.smd"
	nofacial
}

$surfaceprop "wood_solid"

$contents "solid"

$illumposition -24.475 12.297 217.979

$cdmaterials "models\props_foliage\"

$texturegroup "skinfamilies"
{
	{ "tree_deciduous_01a_branches"    "tree_deciduous_01a_trunk" }
	{ "tree_deciduous_01a_leaves"    "tree_deciduous_01a_trunk" }
	{ "tree_deciduous_01a_branches_sway"    "tree_deciduous_01a_trunk_sway" }
	{ "tree_deciduous_01a_leaves_sway"    "tree_deciduous_01a_trunk_sway" }
}

$cbox 0 0 0 0 0 0

$bbox -189.376 -213.493 -0.383 164.782 164.542 436.34

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

// Physics model should be the original model's
