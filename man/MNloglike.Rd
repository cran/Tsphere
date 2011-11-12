\name{MNloglike}
\alias{MNloglike}
\title{Penalized Matrix-variate normal log-likelihood.
%%  ~~function to do ... ~~
}
\description{Penalized Matrix-variate normal log-likelihood.
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
MNloglike(x, M, Sig, Delt, rhor, rhoc, qr = 2, qc = 2,  Sigi = NULL, 
Delti = NULL) 
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{ Data matrix.
%%     ~~Describe \code{x} here~~
}
  \item{M}{ Mean matrix.
%%     ~~Describe \code{M} here~~
}
  \item{Sig}{ Row covariance matrix.
%%     ~~Describe \code{Sig} here~~
}
  \item{Delt}{ Column covariance matrix.
%%     ~~Describe \code{Delt} here~~
}
  \item{rhor}{ Row regularization parameter.
%%     ~~Describe \code{rhor} here~~
}
  \item{rhoc}{ Column regularization parameter.
%%     ~~Describe \code{rhoc} here~~
}
  \item{qr}{ Row regularization norm.  Either 1 or 2.
%%     ~~Describe \code{qr} here~~
}
  \item{qc}{ Column regularization norm.  Either 1 or 2.
%%     ~~Describe \code{qc} here~~
}
  \item{Sigi}{ Row precision matrix. (optional).
%%     ~~Describe \code{Sigi} here~~
}
  \item{Delti}{ Column precision matrix. (optional).
%%     ~~Describe \code{Delti} here~~
}
}
\details{
  For internal use.
%%  ~~ If necessary, more details than the description above ~~
}
\value{
  \item{value}{Log-likelihood.}
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
\code{\link{covTranspose11}}
  %% ~~objects to See Also as \code{\link{help}}, ~~~
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
