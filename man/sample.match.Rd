\name{sample.match}
\alias{sample.match}
\title{snp.match}
\usage{
  sample.match(x, y, col.x = 0, col.y = 0)
}
\arguments{
  \item{x}{aSnpMatrix object}

  \item{y}{aSnpMatrix object}

  \item{col.x}{optional, column identifier for
  \code{x@samples} for matching}

  \item{col.y}{optional, column identifier for
  \code{y@samples} for matching}
}
\value{
  a named list of length two with elements \describe{

  \item{x}{indices of matching samples in x}

  \item{y}{indices of matching samples in y}

  }
}
\description{
  Match samples in two aSnpMatrix objects
}
\details{
  Extract indices of overlapping samples in two aSnpMatrix
  objects.  By default, match is on
  \code{rownames(x@samples)}, \code{rownames(y@snps)}.
}
\author{
  Chris Wallace
}

