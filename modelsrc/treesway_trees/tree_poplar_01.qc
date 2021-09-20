// Created by Crowbar 0.68

$modelname "props_foliage\tree_poplar_01.mdl"

$staticprop

$bodygroup "Body"
{
	studio "tree_poplar_01.smd"
}

$lod 180
{
	replacemodel "tree_poplar_01.smd" "tree_poplar_01_lod1.smd"
	nofacial
}

$surfaceprop "wood_solid"

$contents "solid"

$illumposition -7.867 -30.583 559.413

$cdmaterials "models\props_foliage\"

$texturegroup "skinfamilies"
{
	{ "tree_deciduous_01a_branches"    "tree_deciduous_01a_trunk" }
	{ "tree_deciduous_01a_leaves"    "tree_deciduous_01a_trunk" }
	{ "tree_deciduous_01a_branches_sway"    "tree_deciduous_01a_trunk_sway" }
	{ "tree_deciduous_01a_leaves_sway"    "tree_deciduous_01a_trunk_sway" }
}

$cbox 0 0 0 0 0 0

$bbox -122.693 -147.649 -1.382 183.858 131.915 1119.398

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

// Physics model should be the original model's
