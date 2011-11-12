\name{ACE}
\alias{ACE}
\title{ Alternating Conditional Expectations
%%  ~~function to do ... ~~
}
\description{ Predicts values for scattered missing elements according
  to the matrix-variate normal distribution.  Internal use.
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
ACE(x, sig, delt, sigi, delti, M, thr = 1e-04, maxit = 1000)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{ Data matrix with scattered missing values.  Missing values 
    should be denoted with "NA".
%%     ~~Describe \code{x} here~~
}
  \item{sig}{ Row covariance matrix.
%%     ~~Describe \code{sig} here~~
}
  \item{delt}{ Column covariance matrix.
%%     ~~Describe \code{delt} here~~
}
  \item{sigi}{ Row precision matrix.
%%     ~~Describe \code{sigi} here~~
}
  \item{delti}{ Column precision matrix.
%%     ~~Describe \code{delti} here~~
}
  \item{M}{ Mean matrix.
%%     ~~Describe \code{M} here~~
}
  \item{thr}{ Convergence threshold.
%%     ~~Describe \code{thr} here~~
}
  \item{maxit}{ Maximum number of iterations.
%%     ~~Describe \code{maxit} here~~
}
}
\details{
  For internal use. 
%%  ~~ If necessary, more details than the description above ~~
}
\value{
  \item{x}{Matrix of predicted values.}
  \item{iter}{Number of iterations until convergence.}
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{ 
  G. I. Allen and R. Tibshirani, "Transposable regularized covariance
  models with an application to missing data imputation",  Annals of
  Applied Statistics, 4:2, 764-790, 2010. 
%% ~put references to the literature/web site here ~
}
\author{
  Genevera I. Allen
%%  ~~who you are~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
  \code{\link{CVcov}}
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
