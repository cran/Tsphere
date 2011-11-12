\name{CVcov}
\alias{CVcov}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Cross-Validation. 
%%  ~~function to do ... ~~
}
\description{Cross-Validation to estimate regularization parameters for
  sparse inverse covariance estimation.
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
CVcov(x, maxlam, minlam, steps, pmiss = 0.01, do = 2, trace = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{Data matrix.
%%     ~~Describe \code{x} here~~
}
  \item{maxlam}{Maximum regularization parameter.
%%     ~~Describe \code{maxlam} here~~
}
  \item{minlam}{Minimum regularization parameter.
%%     ~~Describe \code{minlam} here~~
}
  \item{steps}{Number of regularization parameters to test.
%%     ~~Describe \code{steps} here~~
}
  \item{pmiss}{Percentage missing in each fold.
%%     ~~Describe \code{pmiss} here~~
}
  \item{do}{Number of folds.  Note that for medium or large size data
    matrices, often one fold is sufficient.
%%     ~~Describe \code{do} here~~
}
  \item{trace}{Logical. Output the penalized log-likelihood and MSE for
    each step and fold.  
%%     ~~Describe \code{trace} here~~
}
}
\details{ For internal use.
%%  ~~ If necessary, more details than the description above ~~
}
\value{
  \item{cvmat }{Matrix of cross-validation mean squared errors.}
  \item{optlam }{ Optimal value of the regularization parameter as
    estimated by cross-validation.}
  \item{lams }{Values of the regularization parameters tested.}
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
  \code{\link{covTranspose11}}, \code{\link{TransSphere}}
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
