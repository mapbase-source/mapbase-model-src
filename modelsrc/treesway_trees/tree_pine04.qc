// Created by Crowbar 0.68

$modelname "props_foliage\Tree_pine04.mdl"

$staticprop

$bodygroup "Body"
{
	studio "Tree_pine04.smd"
}

$lod 150
{
	replacemodel "Tree_pine04.smd" "Tree_pine04_lod1.smd"
	nofacial
}
$lod 200
{
	replacemodel "Tree_pine04.smd" "Tree_pine04_lod2.smd"
	nofacial
}
$lod 250
{
	replacemodel "Tree_pine04.smd" "Tree_pine04_lod3.smd"
	nofacial
}

$surfaceprop "default"

$contents "solid"

$illumposition 8.833 1.747 292.973

$casttextureshadows

$cdmaterials "models\props_foliage\"

$texturegroup "skinfamilies"
{
	{ "arbre01" }
	{ "arbre01_sway" }
}

$cbox 0 0 0 0 0 0

$bbox -154.22 -140.702 -1.352 150.727 158.368 587.297

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

// Physics model should be the original model's
