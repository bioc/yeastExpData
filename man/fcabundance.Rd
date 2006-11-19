\name{fcabundance}
\alias{fcabundance}
\docType{data}
\title{Yeast protein abundance}

\description{
  Abundance of yeast proteins measured using flow cytometry and GFP
  tagging
}

\usage{data(fcabundance)}

\format{
  A data frame with 4159 observations on the following 6 variables.
  \describe{
    \item{\code{yORF}}{a factor denoting yeast Open Reading Frames with
      levels \code{YAL001C}, \code{YAL002W}, \code{YAL005C}, etc}
    \item{\code{gene_name}}{a factor denoting corresponding gene names,
      with levels \code{37164}, \code{AAC1}, \code{AAC3}, etc}
    \item{\code{YEPD.mean}}{a numeric vector, giving average abundance
      in rich (YEPD) media }
    \item{\code{YEPD.error}}{a numeric vector, giving corresponding
      (standard?) error }
    \item{\code{SD.mean}}{a numeric vector, giving average abundance
      in minimal (SD) media}
    \item{\code{SD.error}}{a numeric vector, giving corresponding error}
  }
}
% \details{
%   ~~ If necessary, more details than the __description__ above ~~
% }

\source{
  \url{http://www.nature.com/nature/journal/v441/n7095/extref/nature04785-s03.xls}  
}

\references{

"Single-cell proteomic analysis of S. cerevisiae reveals the
architecture of biological noise" (15 June 2006). John R. S. Newman, Sina
Ghaemmaghami, Jan Ihmels, David K. Breslow, Matthew Noble, Joseph
L. DeRisi and Jonathan S. Weissman Nature 441, 840-846
  
}
\examples{
data(fcabundance)
plot(YEPD.mean ~ SD.mean, fcabundance, log = "xy")
plot(SD.error ~ SD.mean, fcabundance, log = "x")
}
\keyword{datasets}
