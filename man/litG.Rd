\name{litG}
\alias{litG}
\alias{y2hG}
\docType{data}
\title{ Literature and Y2H interaction graphs}
\description{
These two data objects represent protein/gene interactions
as reported in Ge et al.
}
\usage{data(litG)
       data(y2hG)}
\format{
 The data are stored as instances of the \code{graphNEL} class. Each
has 2885 nodes, named using yeast standard names. Interactions either
represent literature curated interactions, or Y2H interactions.
}
\details{
 The data were reported and used in Correlation between transcriptome and 
 interactome mapping data from Saccharomyces cerevisiae,
 Nature Genetics, 2001, H. Ge and Z. Liu and G. M. Church and M. Vidal.

 See the package vignette for more details.
}
\examples{
data(litG)
data(y2hG)
}
\keyword{datasets}
