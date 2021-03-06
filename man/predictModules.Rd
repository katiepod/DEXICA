% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/predictModules.R
\name{predictModules}
\alias{predictModules}
\title{Predict gene modules using ICA}
\usage{
predictModules(x, n.comp = ceiling(ncol(x) / 4), ...)
}
\arguments{
\item{x}{a numeric matrix(-like object), typically with genes in rows and samples
(e.g., microarrays) in columns}

\item{n.comp}{an integer specifying the number of modules to predict}

\item{...}{additional arguments to be passed to \code{\link[DEXICA]{dexFastICA}})}
}
\value{
A list with the following elements:
\describe{
 \item{S}{The estimated source (gene module definition) matrix}
 \item{A}{The estimated mixing (e.g., weight of each module in each array) matrix}
}
}
\description{
Predicts gene modules (sets of co-expressed genes) from a previously
preprocessed (see Details) gene expression data matrix using independent component
analysis (ICA).
}
\details{
This function runs an ICA algorithm (currently only fastICA is supported)
on the input matrix.  It does not conduct preprocessing operations (such as centering and
scaling on the rows and/or columns) on the input matrix first; \code{\link{preprocessMatrix}} should
be run on the input matrix to carryout such steps prior to using this function.
}
\examples{
x = matrix(rnorm(100), 10, 10)
x = preprocessMatrix(x)
m = predictModules(x, n.comp = 3)

}
\seealso{
\code{\link[DEXICA]{dexFastICA}},
\code{\link[DEXICA]{preprocessMatrix}}
}
