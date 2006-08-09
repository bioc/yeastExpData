\name{ccyclered}
\alias{ccyclered}
\docType{data}
\title{ ~~ data name/kind ... ~~}
\description{
 The data are 2885 yeast genes, common to a number of different
 experiments. The original data were reported by Cho et al. and were
 processed to
}
\usage{data(ccyclered)}
\format{
  A data frame with 2885 observations on the following 11 variables.
  \describe{
    \item{Cluster}{The cluster number the gene was assigned to.}
    \item{Distance}{The distance from the cluster center?}
    \item{Y.name}{The name of the gene, using standard yeast nomenclature.}
    \item{SGDID}{The Stanford yeast genome database identifier for the gene.}
    \item{GENE}{The common name for the gene.}
    \item{Chromsome}{The chromosome the gene is located on.}
    \item{Start}{The start of the gene, in bases, most likely from the
    3' end.}
    \item{End}{The end of the gene.}
    \item{Introns}{The number of introns.}
    \item{Exons}{The location of the exons.}
    \item{Description}{A description of the gene.}
  }
}
\details{
Cho, et al. discuss the k means clustering of 2885 Saccharomyces genes
into 30 clusters with measurements taken over two synchronized cell cycles. 
}
\source{
  \url{http://arep.med.harvard.edu/network_discovery}
}

\references{
Cho, et al. (1998) A genome-wide transcriptional analysis of the mitotic
cell cycle.  Molecular Cell, 2, 65-73.

Tavazoie, et al. (1999) Systematic determination of genetic network
architecture. Nature Genetics, 22, 281-285.
}

\examples{
data(ccyclered)
}
\keyword{datasets}
