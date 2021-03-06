% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/algorithms.R
\name{sim6}
\alias{sim6}
\title{Sim6 Co-occurrence Randomization Algorithm}
\usage{
sim6(speciesData)
}
\arguments{
\item{speciesData}{binary presence-absence matrix
(rows = species, columns = sites).}
}
\value{
Returns a binary presence-absence matrix with the same
dimensions and fill as the input matrix.
}
\description{
Randomizes a binary matrix speciesData by reshuffling all
elements. Rows are equiprobable, and columns are proportional to column sums.
Makes a call to the vector_sample function.
}
\details{
This algorithm assumes that species are equiprobable, but that
differences in suitability among sites are proportional to observed species
richness (=colsums).
}
\note{
This algorithm assumes that species are equiprobable, and that
differences among sites are proportional to observed species richness
(=colsums). sim6 has a high frequency of Type I errors with random matrices,
so it is not recommended for co-occurrence analysis.
}
\examples{
randomMatrix <- sim6(speciesData = matrix(rbinom(40,1,0.5),nrow=8))
}
\references{
Gotelli, N.J. 2000. Null model analysis of species co-occurrence
patterns. Ecology 81: 2606-2621.
}

