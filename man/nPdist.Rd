\name{nPdist}
\alias{nPdist}
\docType{data}
\title{Counts from a node permutation experiment.}
\description{
  In comparing the yeast cell cycle data to the protein-protein
  interaction data a node permutation distribution is suggested. The
  output here are the counts of the number of common edges for 500
  permutations. 
}
\usage{data(nPdist)}
\format{
  Five hundred counts of nodes in the intersection of two graphs.
}
\details{
  The seed was \code{123} and we called the function \code{nodePerm}
  with \code{litG} and \code{cg1} as arguments. See the vignette in
  this package for the explicit computations.
}
\examples{
data(nPdist)
}
\keyword{datasets}
