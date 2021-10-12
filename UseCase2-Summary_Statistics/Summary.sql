/* SQL command that can be run in BigQuery for summary statistics over the 18 different cancers. */
/* Table names may need to be updated depending on what is available to the user */

SELECT COUNT(CHROM), project_short_name
    FROM `isb-cgc-04-0026.fs_scratch.tcga_variants`
    GROUP BY (project_short_name);
