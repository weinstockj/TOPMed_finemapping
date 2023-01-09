This repo contains a Rmarkdown file for finemapping GWAS summary stats. The summary
stats are presumed to come in the SAIGE format. This pipepline assumes the genotypes
and original phenotype file from the GWAS are available. Additionally, the pipeline uses
a GRCh38 liftover of the ABC model to highlight possible enhancers. The genotypes are 
used to compute in-sample LD to feed into SuSIE RSS finemapping. 

## Contact
Josh Weinstock <jweinstk@umich.edu>
