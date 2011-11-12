\name{meanTranspose}
\alias{meanTranspose}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Transposable model mean.
%%  ~~function to do ... ~~
}
\description{ Estimates row and column means.
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
meanTranspose(x, tol = 1e-06)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{ Data matrix.
%%     ~~Describe \code{x} here~~
}
  \item{tol}{Tolerance for iterative algorithm when data has missing values.
%%     ~~Describe \code{tol} here~~
}
}
\details{
  Estimates the row and column means.
%%  ~~ If necessary, more details than the description above ~~
}
\value{
  \item{x }{Original data matrix.}
  \item{xcen }{Centered data matrix.}
  \item{mu }{Column mean.}
  \item{nu }{Row mean.}
  \item{M }{Mean matrix.}
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
\examples{
x = matrix(rnorm(100*50),100,50)

#row and column centered data matrix
xc = meanTranspose(x)$xcen

}
