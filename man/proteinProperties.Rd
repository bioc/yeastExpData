\name{proteinProperties}
\alias{proteinProperties}
\docType{data}

\title{Properties of Yeast proteins}

\description{
  A data frame which details 33 properties of proteins in the Yeast
  Genome
}
\usage{data(proteinProperties)}

\format{
  A data frame with 6718 observations on the following 33 variables.

  \describe{
    \item{\code{yORF}}{ a factor representing yeast ORF names, with
      levels \code{Q0010}, \code{Q0017}, etc. }
    \item{\code{SGDID}}{a factor representing SGD IDs }
    \item{\code{molwt}}{a numeric vector giving Molecular Weight in Daltons}
    \item{\code{pi}}{a numeric vector denoting the theoretical
      isoelectric point(pI), the pH at which the protein carries no net
      charge}
    \item{\code{cai}}{a numeric vector denoting Codon Adaptation Index}
    \item{\code{length}}{a numeric vector denoting length of the
      protein (number of amino acids)
    }
    \item{\code{nterm}}{a factor representing N Term Sequence with
      levels \code{MAAACIC} \code{MAAAPWY}, etc.}
    \item{\code{cterm}}{a factor representing N Term Sequence with
      levels \code{AAAAMLL} \code{AAADKKT}, etc. }
    \item{\code{codonBias}}{a numeric vector denoting Codon Bias}
  }

  The next set of columns, designated by amino acids, is the number of
  times that particular residue appears in the protein sequence.  For
  example, if the ALA column is 2, then the protein contains 2 alanines.
  These columns (should) add up to the \code{length} column.

  \describe{
    \item{\code{ALA}}{a numeric vector}
    \item{\code{ARG}}{a numeric vector}
    \item{\code{ASN}}{a numeric vector}
    \item{\code{ASP}}{a numeric vector}
    \item{\code{CYS}}{a numeric vector}
    \item{\code{GLN}}{a numeric vector}
    \item{\code{GLU}}{a numeric vector}
    \item{\code{GLY}}{a numeric vector}
    \item{\code{HIS}}{a numeric vector}
    \item{\code{ILE}}{a numeric vector}
    \item{\code{LEU}}{a numeric vector}
    \item{\code{LYS}}{a numeric vector}
    \item{\code{MET}}{a numeric vector}
    \item{\code{PHE}}{a numeric vector}
    \item{\code{PRO}}{a numeric vector}
    \item{\code{SER}}{a numeric vector}
    \item{\code{THR}}{a numeric vector}
    \item{\code{TRP}}{a numeric vector}
    \item{\code{TYR}}{a numeric vector}
    \item{\code{VAL}}{a numeric vector}
  }

  The remaining columns are:

  \describe{
    \item{\code{fop}}{FOP score, a numeric vector, denoting Frequency of
      Optimal Codons}
    \item{\code{gravy}}{Gravy score, a numeric vector denoting
      Hydropathicity of Protein}
    \item{\code{aromaticity}}{Aromaticity score, a numeric vector
      denoting Frequency of aromatic amino acids: Phe, Tyr, Trp}
    \item{\code{type}}{Feature type, a factor with levels
      \code{ORF|Dubious} \code{ORF|Uncharacterized} \code{ORF|Verified}
      \code{ORF|Verified|silenced_gene} \code{pseudogene}
      \code{transposable_element_gene}}
  }
}
\details{
  This data frame is downloaded directly from SGD. It contains 33
  characteristics for 6714 open reading frames (ORFS). From the SGD
  README:

  \dQuote{Contains basic protein information about each ORF in SGD. This
    file does not include information on deleted or merged ORFs. Note,
    however, that it includes ORFs of all other classifications
    (Verified, Uncharacterized, and Dubious).}

  For more details see
  \url{http://www.yeastgenome.org/help/protein_page.html}.
}


\source{

  \url{ftp://genome-ftp.stanford.edu/pub/yeast/protein_info/protein_properties.tab}.  
  This file is updated weekly (Saturday).  The version used here
  was downloaded on 2006-11-03.

}
\examples{
data(proteinProperties)
pairs(proteinProperties[, c("molwt", "pi", "cai", "gravy", "aromaticity")],
      pch = ".", col = as.numeric(proteinProperties$type))
}
\keyword{datasets}
