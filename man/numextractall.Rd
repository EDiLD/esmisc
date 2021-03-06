% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/numextractall.R
\name{numextractall}
\alias{numextractall}
\title{Extract numbers from string}
\usage{
numextractall(x)
}
\arguments{
\item{x}{string}
}
\value{
numeric vector
}
\description{
Extract numbers from string
}
\examples{
numextractall('1 2 3')
numextractall('1,2,3')
numextractall('1;2,3 4')
numextractall('1;2,3 4,46')
}
\references{
\url{ http://stackoverflow.com/questions/19252663/extracting-decimal-numbers-from-a-string}
}
