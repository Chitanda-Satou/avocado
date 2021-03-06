% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/factors.R
\name{is_factor}
\alias{is_factor}
\title{Judge whether a vector is a factor or a continuous variable.}
\usage{
is_factor(vec, levels_threshold = 5)
}
\arguments{
\item{vec}{A vector.}

\item{levels_threshold}{If the vector's levels n > levels_threshold, return FALSE.}
}
\value{
Bool.
}
\description{
Judge whether a vector is a factor or a continuous variable.
}
\examples{

is_factor(1:10) # FALSE
is_factor(1:5) # TRUE

}
