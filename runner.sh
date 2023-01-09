#!/bin/bash

CHR=chr3
START=160195572
END=160689399
SUMMARY_STATS=/net/topmed2/working/jweinstk/count_singletons/annotation_singletons/encore_output_download/semi_supervised_gwas.txt.gz
PHENOTYPE=/net/topmed2/working/jweinstk/count_singletons/annotation_singletons/encore_input/semi_supervised_output_2022_12_28.tsv
BCF=/net/topmed2/working/gt-release/exchange-area/freeze.10b/minDP0/freeze.10b.${CHR}.pass_and_fail.gtonly.minDP0.bcf
PYTHON=/net/fantasia/home/jweinstk/anaconda3/bin/python
ABC=/net/topmed2/working/jweinstk/count_singletons/new_drivers/ABC/liftover/AllPredictions.AvgHiC.ABC0.015.minus150.ForABCPaperV3.liftover.bed.gz
CELL_TYPES=CD34-positive_mobilized-Roadmap
GENES=SMC4
META=2023_1_9


Rscript runner.R $CHR $START $END $SUMMARY_STATS $PHENOTYPE $BCF $PYTHON $ABC $CELL_TYPES $GENES $META
