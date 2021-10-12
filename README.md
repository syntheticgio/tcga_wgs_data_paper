# tcga_wgs_data_paper
Code and scripts which support a paper related to whole genome sequence variant calls for normal-tumor paired samples in the TCGA project.

## Code Snips

## Use Cases
There are three use cases which are provided in the paper.  Code and scripts which support those use cases are found in this repository.

### Use Case 1
The first use case is to demonstrate fast mapping between the variant dataset generated and provided in BigQuery format and a separate dataset - in this case, BioMuta.  This is a common use case where the new variant list can be used to enrich a separate database.

Code supporting this can be found in the folder `UseCase1-Crossmapping/`.

### Use Case 2
The second use case demonstrates generating some basic summary statistics for the dataset.

Code supporting this can be found in the folder `UseCase2-Summary_Statistics/`.
### Use Case 3
The third use case demonstrates regenerating a proper VCF file for a TCGA ID from the BigQuery table.  A VCF file is required as the input format for many programs and might be essential for certain pipelines.

Code supporting this can be found in the folder `UseCase3-WGS_to_VCF/`.