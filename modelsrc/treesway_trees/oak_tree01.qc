// Created by Crowbar 0.68

$modelname "props_foliage\oak_tree01.mdl"

$staticprop

$bodygroup "Body"
{
	studio "oak_tree01.smd"
}

$lod 130
{
	replacemodel "oak_tree01.smd" "oak_tree01_lod1.smd"
	nofacial
}
$lod 200
{
	replacemodel "oak_tree01.smd" "oak_tree01_lod2.smd"
	nofacial
}
$lod 260
{
	replacemodel "oak_tree01.smd" "oak_tree01_lod3.smd"
	nofacial
}

$surfaceprop "wood_solid"

$contents "solid"

$illumposition -46.597 61.743 585.095

$cdmaterials "models\props_foliage\"

$texturegroup "skinfamilies"
{
	{ "tree_deciduous_01a_branches"    "oak_tree01" }
	{ "tree_deciduous_01a_leaves"    "oak_tree01" }
	{ "tree_deciduous_01a_branches_sway"    "oak_tree01_sway" }
	{ "tree_deciduous_01a_leaves_sway"    "oak_tree01_sway" }
}

$cbox 0 0 0 0 0 0

$bbox -708.598 -625.146 -13.267 585.112 531.952 1183.456

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

// Physics model should be the original model's
