
## 1. download http://www.nature.com/nature/journal/v441/n7095/extref/nature04785-s03.xls

## 2. convert to CSV and delete first few lines

## 3:

fcabundance <-
    read.table("/home/dsarkar/fcabundance.csv",
               sep = ",", header = TRUE,
               quote = '"')

for (nm in c("X", "X.1", "X.2", "X.3", "X.4", "X.5", "X.6"))
{
    fcabundance[[nm]] <- NULL
}

fcabundance <- fcabundance[, 1:6]

names(fcabundance) <- c("yORF", "gene_name", "YEPD.mean", "YEPD.error", "SD.mean", "SD.error")

rownames(fcabundance) <- fcabundance$yORF

save(fcabundance, file = "../../data/fcabundance.rda", compress = TRUE)

## promptData(fcabundance)


## ## comparison with other measures of 'abundance'

## library(yeastExpData)
## library(lattice)

## data(gfp)
## data(proteinProperties)

## nm <- intersect(rownames(gfp), rownames(proteinProperties))
## nm <- intersect(nm, rownames(fcabundance))

## foo <-
##     data.frame(cai = proteinProperties[nm, "cai"],
##                ab = gfp[nm, "abundance"],
##                yepd = fcabundance[nm, "YEPD.mean"], 
##                sd = fcabundance[nm, "SD.mean"])

## ## suggests truncation
## qqmath(~log(ab) + log(yepd) + log(sd), foo, auto.key = TRUE)
