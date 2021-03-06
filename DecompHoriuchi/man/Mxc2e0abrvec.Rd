% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/AndreevShkolnikovBegun.R
\name{Mxc2e0abrvec}
\alias{Mxc2e0abrvec}
\title{get life expectancy at birth from the vec of an age-cause matrix}
\usage{
Mxc2e0abrvec(Mxcvec, dims, trans = FALSE)
}
\arguments{
\item{Mxcvec}{numeric vector, \code{c(Mxc)}.}

\item{dims}{integer vector of length two, \code{c(nrow(Mxc),ncol(Mxc))}.}

\item{trans}{do we need to transpose in order to arrive back to an age-cause matrix?}
}
\value{
numeric life expectancy at birth
}
\description{
Given a vector with abridged ages stacked within causes of death, assign its dimensions, take the age marginal sums using \code{Mxc2e0abr}, then calculate life expectancy at birth using \code{LTabr()}.
}
\details{
This assumes that the marginal row sums give all-cause mortality rates. Give an other category if you need to top-up to all-cause mortality. Do not include all-cause mortality itself! \code{length(Mxcvec)} must equal \code{prod(dim(Mxc))}. This function is meant to be fed to a generic decomposition function, such as \code{stepwise_replacement()}, or \code{DecompContinuousOrig()}.
}
