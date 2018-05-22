\name{complexity}
\alias{complexity}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Calculate dynamic complexity of multiple time series in a data frame
%%  ~~function to do ... ~~
}
\description{
Calculates the dynamic complexity for every column in a data frame.
%%  ~~ A concise (1-5 lines) description of what the function does. ~~

}

\usage{complexity(x, startCol, endCol, scaleMin, scaleMax, width = 7, measure = "complexity", rescale = FALSE)}

\arguments{
  \item{x}{
  The data to be used (representing a data frame of observations. Rows should be observations, columns should be variables. All variables must be numeric.).
%%     ~~Describe \code{x} here~~
}
\item{startCol}{
Column to start the analysis with.
}
\item{endCol}{
Last column analysed.
}

  \item{scaleMin}{
  Theoretical minimum of the data. Will default to the observed minimum of x.
%%     ~~Describe \code{scaleMin} here~~
}
  \item{scaleMax}{
  Theoretical maximum of the data. Will default to the observed maximum of x.
%%     ~~Describe \code{scaleMax} here~~
}
  \item{width}{
  Width of the moving window. Default is 7.
%%     ~~Describe \code{width} here~~
}
  \item{measure}{
  Either "complexity", "fluctuation" or "distribution". Indicates which value should be returned. Default is "complexity".
%%     ~~Describe \code{measure} here~~
}

\item{rescale}{
If TRUE, rescales the returned values to scale minimum and maximum. This is sometimes useful for graphical interpretation or plotting. Default: FALSE.
}

}

\author{
Tim Kaiser <Tim.Kaiser@sbg.ac.at>
%%  ~~who you are~~
}

\references{Kaiser, T. (2017). dyncomp: an R package for Estimating the Complexity of Short Time Series. DOI 10.17605/OSF.IO/GWTKX}

\examples{
t <- data.frame(matrix(runif(1000, 0, 10), ncol = 10))
c <- df.complexity(x = t, startCol = 1, endCol = 10, scaleMin = 0, scaleMax = 10, width = 5, measure = "complexity",
rescale = TRUE)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
