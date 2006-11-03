\name{gfp}
\alias{gfp}
\docType{data}
\title{Yeast GFP Fusion Data }
\description{
  This data frame contains data concerning the localization and
  abundance of various yeast proteins. 
}
\usage{data(gfp)}
\format{
  A data frame with 6234 observations on the following 33 variables.
  \describe{
    \item{\code{orfid}}{a numeric vector of identifiers}
    \item{\code{yORF}}{a factor representing yeast ORF names, with
      levels \code{YAL001C}, \code{YAL002W}, etc.  These are also the
      row names of the data frame.}
    \item{\code{gene_name}}{a factor representing corresponding yeast
      gene names, with levels \code{AAC1}, \code{AAC3}, etc. }
    \item{\code{GFP_tagged}}{a factor with levels \code{not tagged} and
      \code{tagged}, indicating whether or not the ORF was GFP tagged}
    \item{\code{GFP_visualized}}{a factor with levels \code{not
	visualized} and \code{visualized}, indicating whether or not GFP
      fluoresence was visualized}
    \item{\code{TAP_visualized}}{a factor with levels \code{TAP
	visualized} and \code{not TAP visualized}, indicating success of
      TAP tag}
    \item{\code{abundance}}{a numeric vector, giving estimated abundance
      in units of molecules per cell }
    \item{\code{error}}{a numeric vector of estimated errors in
      abundance for a subset of proteins, in the same units as
      \code{abundance} (see details below)}
    \item{\code{localization_summary}}{a factor with levels \code{},
      \code{ER}, \code{ER to Golgi}, \code{ER,ambiguous},
      \code{ER,ambiguous,bud}, etc.  Summarizes the information
      contained in the subsequent columns. }
  }

  The following columns indicate whether or not the protein was
  localized in the specific region of the cell.  A protein can be
  localized in more than one region.

  \describe{
    \item{\code{ambiguous}}{a logical vector}
    \item{\code{mitochondrion}}{a logical vector}
    \item{\code{vacuole}}{a logical vector}
    \item{\code{spindle_pole}}{a logical vector}
    \item{\code{cell_periphery}}{a logical vector}
    \item{\code{punctate_composite}}{a logical vector}
    \item{\code{vacuolar_membrane}}{a logical vector}
    \item{\code{ER}}{a logical vector}
    \item{\code{nuclear_periphery}}{a logical vector}
    \item{\code{endosome}}{a logical vector}
    \item{\code{bud_neck}}{a logical vector}
    \item{\code{microtubule}}{a logical vector}
    \item{\code{Golgi}}{a logical vector}
    \item{\code{late_Golgi}}{a logical vector}
    \item{\code{peroxisome}}{a logical vector}
    \item{\code{actin}}{a logical vector}
    \item{\code{nucleolus}}{a logical vector}
    \item{\code{cytoplasm}}{a logical vector}
    \item{\code{ER_to_Golgi}}{a logical vector}
    \item{\code{early_Golgi}}{a logical vector}
    \item{\code{lipid_particle}}{a logical vector}
    \item{\code{nucleus}}{a logical vector}
    \item{\code{bud}}{a logical vector}
  }

  Explanation for missing abundance values are given by

  \describe{
    \item{\code{missingAbundance}}{a factor with levels
      \code{low signal}, \code{not visualized} and
      \code{technical problem}}
  }
}
\details{

  The information on abundance is available in three columns.
  \code{abundance} gives (where available) absolute protein abundances
  determined by quantitative Western blot analysis of TAP-tagged
  strains.  Abundances that have a non-\code{NA} \code{error} value were
  done in triplicate with serial dilutions of purified TAP-tagged
  standards included in each gel, which substantially reduces the
  measurement error. In addition, for these strains, the tagged genes
  were confirmed to rescue the loss of function phenotype of the
  corresponding deletion strain.  For rows where \code{abundance} is
  missing (\code{NA}), the \code{missingAbundance} column gives the
  reason.  Possible reasons are:

  \describe{
    \item{\code{"not visualized"}}{Either the tagging was unsuccessful
      or no signal was detected.}
    \item{\code{"low signal"}}{The tagging was successful, but the
      signal was not sufficiently high above background to permit
      accurate quantitation (∼50 molecules/cell).}
    \item{\code{"technical problem"}}{The protein was detectable but
      could not be quantitated because it did not migrate as a single
      band or comigrated with the internal standards in the gel.}
  }

  Replicate analysis for a subset of tagged strains found a linear
  correlation coefficient of R = 0.94, with the pairs of proteins having
  a median variation of a factor of 2.0. This error analysis does not
  account for potential alterations in the endogenous levels of the
  proteins caused by the the fused tag, which may be particularly
  disruptive for small proteins.





}
\source{
  The data were obtained from \url{http://yeastgfp.ucsf.edu/}, which
  contains a lot more information as well as raw image data.  This data
  frame was specifically generated from
  \url{http://yeastgfp.ucsf.edu/allOrfData.txt}
}

\references{

  For the Localization data: Huh, et al., Nature 425, 686-691 (2003) --
  \url{http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=14562095&dopt=Abstract}

  For the Protein abundance data: Ghaemmaghami, et al., Nature 425,
  737-741 (2003) --
  \url{http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=14562106&dopt=Abstract}

}

\examples{
data(gfp)
keep <- names(which(table(gfp$localization_summary) > 50))

if (require(lattice)) {
  bwplot(reorder(localization_summary, abundance, median, na.rm = TRUE) ~ log2(abundance), gfp,
         varwidth = TRUE,
         subset = localization_summary %in% keep)
} else {

  opar <- par(las = 2, mar = par("mar") + c(3.5, 0, 0, 0))
  gfp._sub <- subset(gfp, localization_summary %in% keep)
  gfp._sub$localization_summary <- gfp._sub$localization_summary[, drop = TRUE]
  boxplot(log2(abundance) ~ reorder(localization_summary, abundance, median, na.rm = TRUE), 
          data = gfp._sub, varwidth = TRUE)
  rm(gfp._sub)
  par(opar)

}

}
\keyword{datasets}
