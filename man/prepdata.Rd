\name{prepdata}
\alias{prepdata}
\title{
Prepares data for use with \code{snpmclust}
}
\description{
Converts and transforms data from GenomeStudio output into form that can be handled by the function \code{snpmclust}.
}
\usage{
prepdata(rawdata)
}
\arguments{
  \item{rawdata}{
Data frame taken from an import of GenomeStudio full data table.
}
}
\details{
\code{prepdata} expects a data frame that includes columns from an import of a GenomeStudio full data table.  These columns include Name (the column of SNP rs-numbers) and the subcolumns Theta, R, GType, Score, X, Y, X.Raw, Y.Raw.  Sample IDs are taken from the subcolumn prefixes.  The data transformations in \code{prepdata} are an integral part of the SNPMClust
methodology.
}
\value{
A list with the following components:
\item{SNP }{Character vector of SNP IDs ("rs numbers").}
\item{SampleID }{Character vector of sample ID numbers, taken from subcolumn prefixes.}
\item{P }{Length of SNP.}
\item{N }{Length of SampleID.}
\item{Theta }{Numeric PxN matrix of Theta subcolumns.}
\item{R }{Numeric PxN matrix of R subcolumns.}
\item{GType }{CharacterPxN matrix of GType subcolumns.}
\item{Score }{Numeric PxN matrix of Score subcolumns.}
\item{X.Raw }{Numeric PxN matrix of X.Raw subcolumns.}
\item{Y.Raw }{Numeric PxN matrix of Y.Raw subcolumns.}
\item{X }{Numeric PxN matrix of X subcolumns.}
\item{Y }{Numeric PxN matrix of Y subcolumns.}
\item{logratio }{Numeric PxN matrix of normalized signal intensity log-ratios.}
\item{R.trans }{Numeric PxN matrix of Box-Cox-transformed signal magnitudes.}
}
\author{
Stephen W. Erickson \email{serickson@rti.org}
with Joshua Callaway \email{joshcllw@gmail.com}
}
\examples{
data(testset)
tmpfile = prepdata(testset)
}
\keyword{ rawdata }
\keyword{ convert }
