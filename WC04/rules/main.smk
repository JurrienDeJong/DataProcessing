datadir= '/commons/Themas/Thema11/Dataprocessing/WC04/data/'

rule all:
    input: 'results/heatmap.jpg'


rule make_heatmap:
    """ rule which creates heatmap"""
    input:
        datadir + 'gene_ex.csv'
    output:
         'results/heatmap.jpg'
    shell:
        'Rscript scripts/heatmap.R {input} {output}'