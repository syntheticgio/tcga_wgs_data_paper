/* Provided below is the SQL statement that can be run directly in BigQuery (with adaptation for table names as needed). */
/* This statement will crossmap the variant dataset with the cancer database BioMuta. */

SELECT v4_0.*
    FROM biomuta.v4_0
        WHERE NOT EXISTS(SELECT *
            FROM `isb-cgc-04-0026.fs_scratch.tcga_variants`
                WHERE CHROM = CONCAT("chr", CAST(v4_0.chr_id as string)) AND POS = v4_0.chr_pos);
