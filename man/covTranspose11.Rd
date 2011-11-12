\name{covTranspose11}
\alias{covTranspose11}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
  Covariance Estimation.
  %%  ~~function to do ... ~~
}
\description{
Inverse row and column covariance estimation for the L1 penalized
matrix-variate normal model. 
  %%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
covTranspose11(xc, rhor, rhoc, row = TRUE, sigi.init = NULL, 
delti.init = NULL, thr = 1e-04, maxit = 1000, trace = TRUE,  thr.glasso
= 1e-04,  maxit.glasso = 1000, pen.diag = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{xc}{
    Centered data matrix.
%%     ~~Describe \code{xc} here~~
}
\item{rhor}{
  Row regularization parameter.
%%     ~~Describe \code{rhor} here~~
}
  \item{rhoc}{ Column regularization parameter.
%%     ~~Describe \code{rhoc} here~~
}
  \item{row}{ Logical. TRUE = Start with row covariance.
%%     ~~Describe \code{row} here~~
}
\item{sigi.init}{ Initialization for the row precision
  matrix. (Optional). 
%%     ~~Describe \code{sigi.init} here~~
}
  \item{delti.init}{ Initialization for the column precision
  matrix. (Optional). 
%%     ~~Describe \code{delti.init} here~~
}
  \item{thr}{ Convergence threshold.
%%     ~~Describe \code{thr} here~~
}
  \item{maxit}{ Maximum number of iterations.
%%     ~~Describe \code{maxit} here~~
}
  \item{trace}{ Prints matrix-variate log-likelihood for each iteration.
%%     ~~Describe \code{trace} here~~
}
  \item{thr.glasso}{ Convergence threshold for the graphical lasso.
%%     ~~Describe \code{thr.glasso} here~~
}
  \item{maxit.glasso}{ Maximum number of iterations for the graphical lasso.
%%     ~~Describe \code{maxit.glasso} here~~
}
  \item{pen.diag}{ Logical.  Indicates whether the diagonal should be penalized.
%%     ~~Describe \code{pen.diag} here~~
}
}
\details{
Estimates row and column precision matrix via L1 penalized Transposable
Regularized Covariance Models.  
  %%  ~~ If necessary, more details than the description above ~~
}
\value{
  \item{Sigmahat }{Estimated row covariance.}
  \item{Deltahat }{Estimated column covariance.}
  \item{Sigmaihat }{Estimated sparse row precision matrix.}
  \item{Deltaihat }{Estimated sparse column precision matrix.}
  \item{loglike }{Trace of the penalized log-likelihood at each iteration.}
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
  \code{\link{TransSphere}}
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
