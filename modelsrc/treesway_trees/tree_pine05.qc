// Created by Crowbar 0.68

$modelname "props_foliage\Tree_pine05.mdl"

$staticprop

$bodygroup "Body"
{
	studio "Tree_pine05.smd"
}

$lod 150
{
	replacemodel "Tree_pine05.smd" "Tree_pine05_lod1.smd"
	nofacial
}
$lod 200
{
	replacemodel "Tree_pine05.smd" "Tree_pine05_lod2.smd"
	nofacial
}
$lod 250
{
	replacemodel "Tree_pine05.smd" "Tree_pine05_lod3.smd"
	nofacial
}

$surfaceprop "default"

$contents "solid"

$illumposition -9.02 -11.321 351.624

$casttextureshadows

$cdmaterials "models\props_foliage\"

$texturegroup "skinfamilies"
{
	{ "arbre01" }
	{ "arbre01_sway" }
}

$cbox 0 0 0 0 0 0

$bbox -159.123 -169.688 -1.564 181.765 151.648 704.813

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

// Physics model should be the original model's
