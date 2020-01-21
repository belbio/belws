+++
fragment = "content"
#disabled = true
date = "2017-10-05"
weight = 200

# background = "secondary"

title = "BEL Example"
# subtitle = "Full width content fragment"
title_align = "left" # Default is center, can be left, right or center
+++

> "Shear stress enhances expression of the gene encoding the endothelial nitric oxide synthase (eNOS)
> and further stimulates its enzymatic activity, leading to physiologic low
> concentrations of nitric oxide (NO) within endothelial cells [44–46].
> This continuous generation of NO prevents the apoptosis of endothelial cells,
> thereby protecting the endothelial monolayer from injury [47,48]."

Is converted into BEL Assertions:

-   biologicalProcess(GO:"response to fluid shear stress") increases rnaAbundance(HGNC:NOS3)
-   biologicalProcess(GO:"response to fluid shear stress") increases activity(proteinAbundance(HGNC:NOS3), molecularActivity(cat))
-   activity(proteinAbundance(HGNC:NOS3), molecularActivity(cat)) directlyIncreases abundance(CHEBI:"nitric oxide")
-   abundance(CHEBI:"nitric oxide") decreases biologicalProcess(GO:"apoptotic process")

the abbreviated BEL Assertions are:

-   bp(GO:"response to fluid shear stress") -> r(HGNC:NOS3)
-   bp(GO:"response to fluid shear stress") -> act(p(HGNC:NOS3), ma(cat))
-   act(p(HGNC:NOS3), ma(cat)) => a(CHEBI:"nitric oxide")
-   a(CHEBI:"nitric oxide") -| bp(GO:"apoptotic process")

[BEL Language documentation and tutorials](https://language.bel.bio)
