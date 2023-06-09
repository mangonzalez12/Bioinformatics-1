Packages needed from Bioconda
STAR
Fastqc
Multiqc
Pear




RUN FASTQC AND THEN MULTIQC TO GET REPORT OF ALL SAMPLES TOGETHER
fastqc --help

Run command:
fastqc -o ../QC *.fastq (specify the output file)
you can also run the command with --noextract to keep the fastq.gz files

Run command:
multiqc .
Runs the command on the folder where the fastqc reports were stored. It can be opened in a browser

After quality control is checked in multiqc report you can merge the forward and reverse paired-end reads (if that is the case)
using Pear (from bioconda) or Vsearch (Bioconda)
mkdir merged_samples


You can start by merging 2 files (forward and reverse) for one sample

vsearch -fastq_mergepairs Sample1_R1.fastq -fastqout Sample1_merged.fastq (Note that the Sample1_R2.fastq file is not specified)

pear -f SRR9036307_GSM3758005_440349.1.X_1_Homo_sapiens_RNA-Seq_1.fastq -r SRR9036307_GSM3758005_440349.1.X_1_Homo_sapiens_RNA-Seq_2.fastq -o merged_GSM3758005.fastq

pear -f *RNA-Seq_1.fastq -r *RNA-Seq_2.fastq -o *_merged


List to merge samples and give a name to each:

pear -f SRR9036307_GSM3758005_440349.1.X_1_Homo_sapiens_RNA-Seq_1.fastq -r SRR9036307_GSM3758005_440349.1.X_1_Homo_sapiens_RNA-Seq_2.fastq -o Sample_GSM3758005
pear -f SRR9036308_GSM3758006_440350.1.X_1_Homo_sapiens_RNA-Seq_1.fastq -r SRR9036308_GSM3758006_440350.1.X_1_Homo_sapiens_RNA-Seq_2.fastq -o Sample_GSM3758006
pear -f SRR9036309_GSM3758007_440351.1.X_4_Homo_sapiens_RNA-Seq_1.fastq -r SRR9036309_GSM3758007_440351.1.X_4_Homo_sapiens_RNA-Seq_2.fastq -0 Sample_GSM3758007
pear -f SRR9036310_GSM3758008_440352.1.X_4_Homo_sapiens_RNA-Seq_1.fastq -r SRR9036310_GSM3758008_440352.1.X_4_Homo_sapiens_RNA-Seq_2.fastq -o Sample_GSM3758008
pear -f SRR9036311_GSM3758009_440353.1.X_4_Homo_sapiens_RNA-Seq_1.fastq -r SRR9036311_GSM3758009_440353.1.X_4_Homo_sapiens_RNA-Seq_2.fastq -o Sample_GSM3758009
pear -f SRR9036312_GSM3758010_440354.1.X_4_Homo_sapiens_RNA-Seq_1.fastq -r SRR9036312_GSM3758010_440354.1.X_4_Homo_sapiens_RNA-Seq_2.fastq -o Sample_GSM3758010
pear -f SRR9036313_GSM3758011_440355.1.X_4_Homo_sapiens_RNA-Seq_1.fastq -r SRR9036313_GSM3758011_440355.1.X_4_Homo_sapiens_RNA-Seq_2.fastq -o Sample_GSM3758011
pear -f SRR9036314_GSM3758012_440357.1.X_5_Homo_sapiens_RNA-Seq_1.fastq -r SRR9036314_GSM3758012_440357.1.X_5_Homo_sapiens_RNA-Seq_2.fastq -o Sample_GSM3758012
pear -f SRR9036315_GSM3758013_440375.1.X_8_Homo_sapiens_RNA-Seq_1.fastq -r SRR9036315_GSM3758013_440375.1.X_8_Homo_sapiens_RNA-Seq_2.fastq -o Sample_GSM3758013
pear -f SRR9036316_GSM3758014_440376.1.X_1_Homo_sapiens_RNA-Seq_1.fastq -r SRR9036316_GSM3758014_440376.1.X_1_Homo_sapiens_RNA-Seq_2.fastq -o Sample_GSM3758014
pear -f SRR9036317_GSM3758015_440377.1.X_1_Homo_sapiens_RNA-Seq_1.fastq -r SRR9036317_GSM3758015_440377.1.X_1_Homo_sapiens_RNA-Seq_2.fastq -o Sample_GSM3758015
pear -f SRR9036318_GSM3758016_440378.1.X_1_Homo_sapiens_RNA-Seq_1.fastq -r SRR9036318_GSM3758016_440378.1.X_1_Homo_sapiens_RNA-Seq_2.fastq -o Sample_GSM3758016
pear -f SRR9036319_GSM3758017_440379.1.X_1_Homo_sapiens_RNA-Seq_1.fastq -r SRR9036319_GSM3758017_440379.1.X_1_Homo_sapiens_RNA-Seq_2.fastq -o Sample_GSM3758017
pear -f SRR9036320_GSM3758018_440380.1.X_1_Homo_sapiens_RNA-Seq_1.fastq -r SRR9036320_GSM3758018_440380.1.X_1_Homo_sapiens_RNA-Seq_2.fastq -o Sample_GSM3758018
pear -f SRR9036321_GSM3758019_440381.1.X_1_Homo_sapiens_RNA-Seq_1.fastq -r SRR9036321_GSM3758019_440381.1.X_1_Homo_sapiens_RNA-Seq_2.fastq -o Sample_GSM3758019
pear -f SRR9036322_GSM3758020_440382.1.X_1_Homo_sapiens_RNA-Seq_1.fastq -r SRR9036322_GSM3758020_440382.1.X_1_Homo_sapiens_RNA-Seq_2.fastq -o Sample_GSM3758020
pear -f SRR9036323_GSM3758021_440383.1.X_1_Homo_sapiens_RNA-Seq_1.fastq -r SRR9036323_GSM3758021_440383.1.X_1_Homo_sapiens_RNA-Seq_2.fastq -o Sample_GSM3758021
pear -f SRR9036324_GSM3758022_440384.1.X_1_Homo_sapiens_RNA-Seq_1.fastq -r SRR9036324_GSM3758022_440384.1.X_1_Homo_sapiens_RNA-Seq_2.fastq -o Sample_GSM3758022
pear -f SRR9036325_GSM3758023_440385.1.X_1_Homo_sapiens_RNA-Seq_1.fastq -r SRR9036325_GSM3758023_440385.1.X_1_Homo_sapiens_RNA-Seq_2.fastq -o Sample_GSM3758023
pear -f SRR9036326_GSM3758024_440388.1.X_1_Homo_sapiens_RNA-Seq_1.fastq -r SRR9036326_GSM3758024_440388.1.X_1_Homo_sapiens_RNA-Seq_2.fastq -o Sample_GSM3758024
pear -f SRR9036327_GSM3758025_440389.1.X_1_Homo_sapiens_RNA-Seq_1.fastq -r SRR9036327_GSM3758025_440389.1.X_1_Homo_sapiens_RNA-Seq_2.fastq -o Sample_GSM3758025
pear -f SRR9036328_GSM3758026_440390.1.X_1_Homo_sapiens_RNA-Seq_1.fastq -r SRR9036328_GSM3758026_440390.1.X_1_Homo_sapiens_RNA-Seq_2.fastq -o Sample_GSM3758026
pear -f SRR9036329_GSM3758027_440391.1.X_3_Homo_sapiens_RNA-Seq_1.fastq -r SRR9036329_GSM3758027_440391.1.X_3_Homo_sapiens_RNA-Seq_2.fastq -o Sample_GSM3758027
pear -f SRR9036330_GSM3758028_440393.1.X_3_Homo_sapiens_RNA-Seq_1.fastq -r SRR9036330_GSM3758028_440393.1.X_3_Homo_sapiens_RNA-Seq_2.fastq -o Sample_GSM3758028
pear -f SRR9036331_GSM3758029_440394.1.X_3_Homo_sapiens_RNA-Seq_1.fastq -r SRR9036331_GSM3758029_440394.1.X_3_Homo_sapiens_RNA-Seq_2.fastq -o Sample_GSM3758029
pear -f SRR9036332_GSM3758030_440395.1.X_3_Homo_sapiens_RNA-Seq_1.fastq -r SRR9036332_GSM3758030_440395.1.X_3_Homo_sapiens_RNA-Seq_2.fastq -o Sample_GSM3758030
pear -f SRR9036333_GSM3758031_440408.1.X_6_Homo_sapiens_RNA-Seq_1.fastq -r SRR9036333_GSM3758031_440408.1.X_6_Homo_sapiens_RNA-Seq_2.fastq -o Sample_GSM3758031
pear -f SRR9036334_GSM3758032_440409.1.X_6_Homo_sapiens_RNA-Seq_1.fastq -r SRR9036334_GSM3758032_440409.1.X_6_Homo_sapiens_RNA-Seq_2.fastq -o Sample_GSM3758032
pear -f SRR9036335_GSM3758033_440410.1.X_6_Homo_sapiens_RNA-Seq_1.fastq -r SRR9036335_GSM3758033_440410.1.X_6_Homo_sapiens_RNA-Seq_2.fastq -o Sample_GSM3758033
pear -f SRR9036336_GSM3758034_440411.1.X_7_Homo_sapiens_RNA-Seq_1.fastq -r SRR9036336_GSM3758034_440411.1.X_7_Homo_sapiens_RNA-Seq_2.fastq -o Sample_GSM3758034
pear -f SRR9036337_GSM3758035_440417.1.X_8_Homo_sapiens_RNA-Seq_1.fastq -r SRR9036337_GSM3758035_440417.1.X_8_Homo_sapiens_RNA-Seq_2.fastq -o Sample_GSM3758035
pear -f SRR9036338_GSM3758036_440418.1.X_8_Homo_sapiens_RNA-Seq_1.fastq -r SRR9036338_GSM3758036_440418.1.X_8_Homo_sapiens_RNA-Seq_2.fastq -o Sample_GSM3758036
pear -f SRR9036339_GSM3758037_440419.1.X_8_Homo_sapiens_RNA-Seq_1.fastq -r SRR9036339_GSM3758037_440419.1.X_8_Homo_sapiens_RNA-Seq_2.fastq -o Sample_GSM3758037
pear -f SRR9036340_GSM3758038_440420.1.X_8_Homo_sapiens_RNA-Seq_1.fastq -r SRR9036340_GSM3758038_440420.1.X_8_Homo_sapiens_RNA-Seq_2.fastq -o Sample_GSM3758038
pear -f SRR9036341_GSM3758039_440421.1.X_1_Homo_sapiens_RNA-Seq_1.fastq -r SRR9036341_GSM3758039_440421.1.X_1_Homo_sapiens_RNA-Seq_2.fastq -o Sample_GSM3758039
pear -f SRR9036342_GSM3758040_440422.1.X_1_Homo_sapiens_RNA-Seq_1.fastq -r SRR9036342_GSM3758040_440422.1.X_1_Homo_sapiens_RNA-Seq_2.fastq -o Sample_GSM3758040
pear -f SRR9036343_GSM3758041_440423.1.X_1_Homo_sapiens_RNA-Seq_1.fastq -r SRR9036343_GSM3758041_440423.1.X_1_Homo_sapiens_RNA-Seq_2.fastq -o Sample_GSM3758041
pear -f SRR9036344_GSM3758042_440424.1.X_1_Homo_sapiens_RNA-Seq_1.fastq -r SRR9036344_GSM3758042_440424.1.X_1_Homo_sapiens_RNA-Seq_2.fastq -o Sample_GSM3758042
pear -f SRR9036345_GSM3758043_440426.1.X_2_Homo_sapiens_RNA-Seq_1.fastq -r SRR9036345_GSM3758043_440426.1.X_2_Homo_sapiens_RNA-Seq_2.fastq -o Sample_GSM3758043
pear -f SRR9036346_GSM3758044_440429.1.X_2_Homo_sapiens_RNA-Seq_1.fastq -r SRR9036346_GSM3758044_440429.1.X_2_Homo_sapiens_RNA-Seq_2.fastq -o Sample_GSM3758044
pear -f SRR9036347_GSM3758045_440430.1.X_2_Homo_sapiens_RNA-Seq_1.fastq -r SRR9036347_GSM3758045_440430.1.X_2_Homo_sapiens_RNA-Seq_2.fastq -o Sample_GSM3758045
pear -f SRR9036348_GSM3758046_440432.1.X_1_Homo_sapiens_RNA-Seq_1.fastq -r SRR9036348_GSM3758046_440432.1.X_1_Homo_sapiens_RNA-Seq_2.fastq -o Sample_GSM3758046
pear -f SRR9036349_GSM3758047_440435.1.X_3_Homo_sapiens_RNA-Seq_1.fastq -r SRR9036349_GSM3758047_440435.1.X_3_Homo_sapiens_RNA-Seq_2.fastq -o Sample_GSM3758047
pear -f SRR9036350_GSM3758048_440436.1.X_4_Homo_sapiens_RNA-Seq_1.fastq -r SRR9036350_GSM3758048_440436.1.X_4_Homo_sapiens_RNA-Seq_2.fastq -o Sample_GSM3758048
pear -f SRR9036351_GSM3758049_440437.1.X_1_Homo_sapiens_RNA-Seq_1.fastq -r SRR9036351_GSM3758049_440437.1.X_1_Homo_sapiens_RNA-Seq_2.fastq -o Sample_GSM3758049
pear -f SRR9036352_GSM3758050_440438.1.X_4_Homo_sapiens_RNA-Seq_1.fastq -r SRR9036352_GSM3758050_440438.1.X_4_Homo_sapiens_RNA-Seq_2.fastq -o Sample_GSM3758050
pear -f SRR9036353_GSM3758051_440440.1.X_4_Homo_sapiens_RNA-Seq_1.fastq -r SRR9036353_GSM3758051_440440.1.X_4_Homo_sapiens_RNA-Seq_2.fastq -o Sample_GSM3758051
pear -f SRR9036354_GSM3758052_440441.1.X_5_Homo_sapiens_RNA-Seq_1.fastq -r SRR9036354_GSM3758052_440441.1.X_5_Homo_sapiens_RNA-Seq_2.fastq -o Sample_GSM3758052
pear -f SRR9036355_GSM3758053_440451.1.X_7_Homo_sapiens_RNA-Seq_1.fastq -r SRR9036355_GSM3758053_440451.1.X_7_Homo_sapiens_RNA-Seq_2.fastq -o Sample_GSM3758053
pear -f SRR9036356_GSM3758054_440474.1.X_2_Homo_sapiens_RNA-Seq_1.fastq -r SRR9036356_GSM3758054_440474.1.X_2_Homo_sapiens_RNA-Seq_2.fastq -o Sample_GSM3758054
pear -f SRR9036357_GSM3758055_440475.1.X_2_Homo_sapiens_RNA-Seq_1.fastq -r SRR9036357_GSM3758055_440475.1.X_2_Homo_sapiens_RNA-Seq_2.fastq -o Sample_GSM3758055
pear -f SRR9036358_GSM3758056_440476.1.X_2_Homo_sapiens_RNA-Seq_1.fastq -r SRR9036358_GSM3758056_440476.1.X_2_Homo_sapiens_RNA-Seq_2.fastq -o Sample_GSM3758056
pear -f SRR9036359_GSM3758057_440477.1.X_2_Homo_sapiens_RNA-Seq_1.fastq -r SRR9036359_GSM3758057_440477.1.X_2_Homo_sapiens_RNA-Seq_2.fastq -o Sample_GSM3758057
pear -f SRR9036360_GSM3758058_440478.1.X_2_Homo_sapiens_RNA-Seq_1.fastq -r SRR9036360_GSM3758058_440478.1.X_2_Homo_sapiens_RNA-Seq_2.fastq -o Sample_GSM3758058
pear -f SRR9036361_GSM3758059_440479.1.X_3_Homo_sapiens_RNA-Seq_1.fastq -r SRR9036361_GSM3758059_440479.1.X_3_Homo_sapiens_RNA-Seq_2.fastq -o Sample_GSM3758059
pear -f SRR9036362_GSM3758060_440480.1.X_3_Homo_sapiens_RNA-Seq_1.fastq -r SRR9036362_GSM3758060_440480.1.X_3_Homo_sapiens_RNA-Seq_2.fastq -o Sample_GSM3758060
pear -f SRR9036363_GSM3758061_440481.1.X_3_Homo_sapiens_RNA-Seq_1.fastq -r SRR9036363_GSM3758061_440481.1.X_3_Homo_sapiens_RNA-Seq_2.fastq -o Sample_GSM3758061
pear -f SRR9036364_GSM3758062_440482.1.X_3_Homo_sapiens_RNA-Seq_1.fastq -r SRR9036364_GSM3758062_440482.1.X_3_Homo_sapiens_RNA-Seq_2.fastq -o Sample_GSM3758062
pear -f SRR9036365_GSM3758063_440483.1.X_3_Homo_sapiens_RNA-Seq_1.fastq -r SRR9036365_GSM3758063_440483.1.X_3_Homo_sapiens_RNA-Seq_2.fastq -o Sample_GSM3758063
pear -f SRR9036366_GSM3758064_440484.1.X_4_Homo_sapiens_RNA-Seq_1.fastq -r SRR9036366_GSM3758064_440484.1.X_4_Homo_sapiens_RNA-Seq_2.fastq -o Sample_GSM3758064
pear -f SRR9036367_GSM3758065_440485.1.X_4_Homo_sapiens_RNA-Seq_1.fastq -r SRR9036367_GSM3758065_440485.1.X_4_Homo_sapiens_RNA-Seq_2.fastq -o Sample_GSM3758065
pear -f SRR9036368_GSM3758066_440487.1.X_4_Homo_sapiens_RNA-Seq_1.fastq -r SRR9036368_GSM3758066_440487.1.X_4_Homo_sapiens_RNA-Seq_2.fastq -o Sample_GSM3758066
pear -f SRR9036369_GSM3758067_440488.1.X_4_Homo_sapiens_RNA-Seq_1.fastq -r SRR9036369_GSM3758067_440488.1.X_4_Homo_sapiens_RNA-Seq_2.fastq -o Sample_GSM3758067
pear -f SRR9036370_GSM3758068_440490.1.X_5_Homo_sapiens_RNA-Seq_1.fastq -r SRR9036370_GSM3758068_440490.1.X_5_Homo_sapiens_RNA-Seq_2.fastq -o Sample_GSM3758068
pear -f SRR9036371_GSM3758069_440492.1.X_5_Homo_sapiens_RNA-Seq_1.fastq -r SRR9036371_GSM3758069_440492.1.X_5_Homo_sapiens_RNA-Seq_2.fastq -o Sample_GSM3758069
pear -f SRR9036372_GSM3758070_440525.1.X_4_Homo_sapiens_RNA-Seq_1.fastq -r SRR9036372_GSM3758070_440525.1.X_4_Homo_sapiens_RNA-Seq_2.fastq -o Sample_GSM3758070
pear -f SRR9036373_GSM3758071_440526.1.X_4_Homo_sapiens_RNA-Seq_1.fastq -r SRR9036373_GSM3758071_440526.1.X_4_Homo_sapiens_RNA-Seq_2.fastq -o Sample_GSM3758071
pear -f SRR9036374_GSM3758072_440527.1.X_4_Homo_sapiens_RNA-Seq_1.fastq -r SRR9036374_GSM3758072_440527.1.X_4_Homo_sapiens_RNA-Seq_2.fastq -o Sample_GSM3758072
pear -f SRR9036375_GSM3758073_440528.1.X_5_Homo_sapiens_RNA-Seq_1.fastq -r SRR9036375_GSM3758073_440528.1.X_5_Homo_sapiens_RNA-Seq_2.fastq -o Sample_GSM3758073
pear -f SRR9036376_GSM3758074_440529.1.X_5_Homo_sapiens_RNA-Seq_1.fastq -r SRR9036376_GSM3758074_440529.1.X_5_Homo_sapiens_RNA-Seq_2.fastq -o Sample_GSM3758074
pear -f SRR9036377_GSM3758075_440534.1.X_5_Homo_sapiens_RNA-Seq_1.fastq -r SRR9036377_GSM3758075_440534.1.X_5_Homo_sapiens_RNA-Seq_2.fastq -o Sample_GSM3758075
pear -f SRR9036378_GSM3758076_440538.1.X_6_Homo_sapiens_RNA-Seq_1.fastq -r SRR9036378_GSM3758076_440538.1.X_6_Homo_sapiens_RNA-Seq_2.fastq -o Sample_GSM3758076
pear -f SRR9036379_GSM3758077_440548.1.X_7_Homo_sapiens_RNA-Seq_1.fastq -r SRR9036379_GSM3758077_440548.1.X_7_Homo_sapiens_RNA-Seq_2.fastq -o Sample_GSM3758077
pear -f SRR9036380_GSM3758078_449058.1.X_7_Homo_sapiens_RNA-Seq_1.fastq -r SRR9036380_GSM3758078_449058.1.X_7_Homo_sapiens_RNA-Seq_2.fastq -o Sample_GSM3758078
pear -f SRR9036381_GSM3758079_449060.1.X_8_Homo_sapiens_RNA-Seq_1.fastq -r SRR9036381_GSM3758079_449060.1.X_8_Homo_sapiens_RNA-Seq_2.fastq -o Sample_GSM3758079
pear -f SRR9036382_GSM3758080_449063.1.X_8_Homo_sapiens_RNA-Seq_1.fastq -r SRR9036382_GSM3758080_449063.1.X_8_Homo_sapiens_RNA-Seq_2.fastq -o Sample_GSM3758080
pear -f SRR9036383_GSM3758081_449064.1.X_8_Homo_sapiens_RNA-Seq_1.fastq -r SRR9036383_GSM3758081_449064.1.X_8_Homo_sapiens_RNA-Seq_2.fastq -o Sample_GSM3758081
pear -f SRR9036384_GSM3758082_449065.1.X_5_Homo_sapiens_RNA-Seq_1.fastq -r SRR9036384_GSM3758082_449065.1.X_5_Homo_sapiens_RNA-Seq_2.fastq -o Sample_GSM3758082




########################################################################################################################################################################

FIRST STEP IS TO MAKE THE GENOME INDICES
Download genome to align your samples to and annotation file from ENSEMBL
- Homo_sapiends.GRCh38.dna_sm.primary_assembly.fa (Genome example)
- Homo_sapiens.GRCh38.104.gtf (Annotation file)
- Ensembl updates every 3 months or so the genome for many species (new releases)

########################################################################################################################################################################

mkdir reference_genome_indices
STAR --help (See alignment options, also in STAR manual)

STAR --runMode genomeGenerate --genomeDir reference_genome_indices/  --genomeFastaFiles Homo_sapiends.GRCh38.dna_sm.primary_assembly.fa
--sjdbGTFfile Homo_sapiens.GRCh38.104.gtf --runThreadN 16 

########################################################################################################################################################################

Example code to align one sample
mkdir mapped_one_sample

Step 1

STAR -- runMode alighReads --genomeDir ../reference_genome_indices/ --outSAMtype BAM SortedByCoordinate 
--readFilesIn Samples/Sample1.fastq.gz --runThreadN 12 

Step 2
 Get the gene counts using the BAM files
featureCounts -a Homo_sapiens.GRCh38.104.gtf -o count.out -T 8 bams/*.bam



########################################################################################################################################################################



All samples alignment

mkdir mapped to store mapped samples

OPTION 1 if you have only one file per sample
Align all samples to genome indices to get BAM.out files from which you can retrieve gene or transcript counts:

for file in Samples/*.fastq; do STAR --runMode alignReads --genomeDir genome_indices 
--outSAMtype BAM SortedByCoordinate --readFilesIn ${file} --runThreadN 12 
--outFileNamePrefix mapped/${file}; done


OPTION 2 if you have pair end fastq files (forward and reverse fastq files)
Align using all pair-end reads without using Pear to merge sample forward and reverse reads

Example code from (http://bioconductor.org/help/course-materials/2016/CSAMA/lab-3-rnaseq/rnaseq_gene_CSAMA2016.html#aligning-reads-to-a-reference-genome):
###########################################################################################
for f in `cat files`; do STAR --genomeDir ../STAR/ENSEMBL.homo_sapiens.release-75 \
--readFilesIn fastq/$f\_1.fastq fastq/$f\_2.fastq --outSAMtype BAM SortedByCoordinate \
--runThreadN 12 --outFileNamePrefix aligned/$f.; done
##########################################################################################


for f in `cat files1.txt files2.txt`; do STAR --runMode alignReads --genomeDir ../genome_indices
--readFilesIn fastq/*Seq_1.fastq fastq/*Seq_2.fastq --outSAMtype BAM SortedByCoordinate 
--runThreadN 12 --outFileNamePrefix ../aligned/$f.; done


STAR --runThreadN 12 --genomeDir ../genome_indices --runMode alignReads --readFilesIn fastq/*Seq_1.fastq fastq/*Seq_2.fastq 
--outFileNamePrefix ../mapped --outSAMtype BAM SortedByCoordinate



for *Seq_1.fastq in Samples/fastq/*.fastq; do STAR --runMode alignReads --genomeDir genome_indices 
--outSAMtype BAM SortedByCoordinate --readFilesIn *Seq_2.fastq --runThreadN 12 
--outFileNamePrefix mapped/${file}; done





#######################################################################################################
Get counts for all samples



for file in BAMs/*.bam; do featureCounts -a Homo_sapiens.GRCh38.104.gtf -o count.out -T 8 
bams/${file}; done



featureCounts -a Homo_sapiens.GRCh38.104.gtf -o "counts.txt" -F "GTF"  -g "gene_id" -p -T 8 *.bam



