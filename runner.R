library(rmarkdown)

args = commandArgs(trailingOnly = TRUE)

chrom = args[1]
start = args[2]
end = args[3]
summary_stats_file = args[4]
phenotype_file = args[5]
bcf_file = args[6]
python = args[7]
ABC_bed = args[8]
ABC_cell_types = args[9]
ABC_genes = args[10]
meta = args[11]

render(
    "finemapping.Rmd",
    output_file = glue::glue("finemapping_{meta}.html"),
    params = list(
        chrom = chrom,
        start = start,
        end = end,
        summary_stats_file = summary_stats_file,
        phenotype_file = phenotype_file,
        bcf_file = bcf_file,
        python = python,
        ABC_bed = ABC_bed,
        ABC_cell_types = ABC_cell_types,
        ABC_genes = ABC_genes
    )
)
