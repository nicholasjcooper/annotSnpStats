\name{snp.trim}
\alias{snp.trim}
\title{snp.trim}
\usage{
  snp.trim(x,
    thr = c(Call.rate = ">0.99", MAF = ">0.03", z.HWE = "<5"))
}
\arguments{
  \item{x}{annotSnpStats object}

  \item{thr}{named character vector, see Details.}
}
\value{
  an annotSnpStats object with only SNPs that meet the
  criteria specified.
}
\description{
  Drop SNPs from an annotSnpStats object according to SNP
  qc summary stats
}
\details{
  \code{thr} must be a named character vector, with names
  corresponding to column names in the matrix returned by
  \code{\link[snpStats]{col.summary}}.  The elements of the
  vector should be character objects.  The first character
  must be '<' or '>' and the remainder, on conversion to
  as.numeric, gives the threshold for keeping SNPs.
  \code{z.HWE} is special, and applies to abs(z.HWE).
}
\examples{
data(for.exercise, package="snpStats")
## find rare SNPs with high call rates that do not deviate from HWE
snps.ok <- snp.trim(snps.10, thr=c(Call.rate=">0.99", MAF="<0.03", z.HWE="<3"))
}
\author{
  Chris Wallace
}

