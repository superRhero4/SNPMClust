\name{generatepriors}
\alias{generatepriors}
\title{
Generate pseudodata for \code{snpmclust}
}
\description{
Generates bivariate normal pseudodata for the homozygous and heterozygous minor genotypes.
}
\usage{
generatepriors(x, y, calls, priorpoints = length(x) * 0.2,
               xm1 = NA, xm2 = NA, xm3 = NA,
               ym1 = NA, ym2 = NA, ym3 = NA, ranseed = ranseed)
}
\arguments{
  \item{x}{
x-vector of signal intensity data in transformed scale.
}
  \item{y}{
y-vector of signal intensity data in transformed scale.
}
  \item{calls}{
A priori genotype calls for intensity data.
}
  \item{priorpoints}{
The number of observations of pseudodata to be generated for the heterozygous and homozygous minor genotypes.
}
  \item{xm1, xm2, xm3, ym1, ym2, ym3}{
Pseudodata cluster means can be user-specified through these parameters.  The ordered pair (xm1,ym1) gives the cluster mean for genotype AA; similarly for (xm2,ym2), (xm3,ym3) and AB, BB, respectively.  Default values are NA, in which case cluster means are estimated from the data, conditional on the a priori genotypes passed via calls.
}
  \item{ranseed}{
Random seed for generation of pseudodata.  The default is 1969.
}
}
\value{
A \code{priorpoints}-by-2 matrix.
}
\author{
Stephen W. Erickson \email{serickson@rti.org}
with Joshua Callaway \email{joshcllw@gmail.com}
}
\keyword{ priors }
\keyword{ pseudodata }
