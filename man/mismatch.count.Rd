\name{mismatch.count}
\alias{mismatch.count}
\title{mismatch.count}
\usage{
  mismatch.count(x, y = NULL, tol = ncol(x)/100)
}
\arguments{
  \item{x}{aSnpStats object}

  \item{y}{aSnpStats object}

  \item{tol}{maximum number of mismatched genotypes allowed
  for duplicate samples}
}
\value{
  a matrix, nrow(x) x nrow(y) with each entry the number of
  mismatches if <tol, or tol
}
\description{
  Count mismatches between pairs of individuals
}
\author{
  Chris Wallace
}

