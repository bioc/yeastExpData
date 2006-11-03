
## code to download gfp data and converts it into a data frame

## make sure to delete older versions first:

system("wget http://yeastgfp.ucsf.edu/allOrfData.txt")

## convert to CSV using gnumeric.  Some manual changes were needed to
## handle quotes etc.  It might be possible to do that with
## read.table, but I didn't try hard enough.

gfp <-
    read.table("allOrfData.csv", sep = ",",
               header = TRUE)

gfp$missingAbundance <- as.character(gfp$abundance)
gfp$abundance <- as.numeric(gfp$missingAbundance)
is.na(gfp$missingAbundance) <- !is.na(gfp$abundance)
gfp$missingAbundance <- as.factor(gfp$missingAbundance)
rownames(gfp) <- as.character(gfp$yORF)


save(gfp, file = "gfp.rda", compress = TRUE)

## Warning: running this will overwrite modifications to gfp.Rd
## promptData(gfp) 

