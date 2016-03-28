\name{snpmclust}
\alias{snpmclust}
\title{
Genotype Clustering and Calling
}
\description{
Genotype Clustering and Calling for Illumina Microarrays.
}
\usage{
snpmclust(indata, p = 1, priorfrac = 0.2, uncertcutoff = 0.01, qcutoff = 0,
          showplots = FALSE, xm1 = NA, xm2 = NA, xm3 = NA, ym1 = NA,
          ym2 = NA, ym3 = NA, ranseed = 1969, R.lowcutoff = 0.05)
}
\arguments{
  \item{indata}{
A list containing input data on one or all SNPs, and would normally be produced by the function \code{prepdata}.  Details on the different components of \code{indata} can be seen in \code{help(prepdata)}.
}
  \item{p}{
A positive integer specifying which SNP to cluster.  The default is 1.
}
  \item{priorfrac}{
A non-negative scalar specifying the number of observations, as a fraction of the number of samples N, of pseudodata to be appended to the heterozygous and homozygous minor genotypes.  The default is 0.2.
}
  \item{uncertcutoff}{
Genotype calls with uncertainty greater than \code{uncertcutoff} are set to "NC" (no call).  The default is 0.01.
}
  \item{qcutoff}{
Uncertainty scores lower than the \code{qcutoff}'th quantile are reset to that value.  When used with \code{R.lowcutoff}, this is equivalent to requiring a SNP-specific call rate of \code{qcutoff} or higher.
}
  \item{showplots}{
A logical value.  If TRUE, the function will produce a series of plots.  The default is FALSE.
}
  \item{xm1, xm2, xm3, ym1, ym2, ym3}{
Pseudodata cluster means can be user-specified through these parameters.  The ordered pair (xm1,ym1) gives the cluster mean
for genotype AA; similarly for (xm2,ym2), (xm3,ym3) and AB, BB, respectively.  Default values are NA, in which case cluster
means are estimated from the data, conditional on the a priori genotypes produced by GenomeStudio.
}
  \item{ranseed}{
Random seed for generation of pseudodata.  The default is 1969.
}
  \item{R.lowcutoff}{
Genotypes for which R is less than R.lowcutoff are set to "NC" (no call).  The default is 0.05.
}
}
\value{
A list with the following components:
\item{calls}{A data frame with N rows and 4 columns, namely, \code{SNP}, \code{SampleID}, \code{MClustCalls} (the genotype call), and \code{Uncertainty}.}
\item{snp}{The SNP name (i.e. rs-number).}
\item{callrate}{Call rate for the SNP.}
\item{priorfrac}{Value of argument in function call.}
\item{uncertcutoff}{Value of argument in function call.}
\item{qcutoff}{Value of argument in function call.}
}
\author{
Stephen W. Erickson \email{serickson@rti.org}
with Joshua Callaway \email{joshcllw@gmail.com}
}
\examples{
data(testset)
tmpfile = prepdata(testset)
snpmclust(tmpfile, p=1, showplots=TRUE)
}

\keyword{ cluster }
\keyword{ SNPs }
