

## make sure to delete older versions first.  Note that number of
## proteins listed may have changed.

system("wget ftp://genome-ftp.stanford.edu/pub/yeast/protein_info/protein_properties.tab")

proteinProperties <-
    read.table("protein_properties.tab",
               header = FALSE, sep = "\t")


nms <-
    readLines(textConnection("FEATURE (ORF name)
SGDID
MOLECULAR WEIGHT (in Daltons)
PI
CAI (Codon Adaptation Index)
PROTEIN LENGTH
N TERM SEQ
C TERM SEQ
CODON BIAS
ALA
ARG
ASN
ASP
CYS
GLN
GLU
GLY
HIS
ILE
LEU
LYS
MET
PHE
PRO
SER
THR
TRP
TYR
VAL
FOP SCORE (Frequency of Optimal Codons)
GRAVY SCORE (Hydropathicity of Protein)
AROMATICITY SCORE (Frequency of aromatic amino acids: Phe, Tyr, Trp)
Feature type (ORF classification: Verified, Uncharacterized, Dubious)"))

longnames <- nms

nms[c(1:9, 30:33)] <-

    c("yORF",
      "SGDID",
      "molwt",
      "pi",
      "cai",
      "length",
      "nterm",
      "cterm",
      "codonBias",
      "fop",
      "gravy",
      "aromaticity",
      "type")

names(proteinProperties) <- nms

rownames(proteinProperties) <- proteinProperties$yORF

save(proteinProperties, file = "proteinProperties.rda", compress = TRUE)

## promptData(proteinProperties)

