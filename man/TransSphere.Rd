\name{TransSphere}
\alias{TransSphere}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Transposable Sphering Algorithm for Large-Scale Inference.
%%  ~~function to do ... ~~
}
\description{Applies the Transposable Sphering Algorithm to adjust for
  correlations among the rows and columns when conducting large-scale
  inference on the rows of a data matrix.  
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
TransSphere(dat, y, fdr, minlam, maxlam = NULL)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{dat}{ Data matrix.  Inference will be conducted on the rows and
    the matrix should be oriented in this manner.  For example in gene
    expression data, the data matrix should be oriented as genes by
    samples.  
%%     ~~Describe \code{dat} here~~
}
  \item{y}{ A vector of group labels.  Labels should be denoted as
    a numeric 1 or 2. 
%%     ~~Describe \code{y} here~~
}
  \item{fdr}{ Desired False Discovery Rate to be controlled. Default is 0.1.
%%     ~~Describe \code{fdr} here~~
}
  \item{minlam}{ Minimum regularization parameter to test via
    cross-validation for sparse 
    inverse covariance estimation.  Default is 0.15.  Note that small
    values of this parameter may result in numerical instabilities.  It
    is recommended to keep this parameter at the default.
%%     ~~Describe \code{minlam} here~~
}
  \item{maxlam}{ Maximum regularization parameter to test via
    cross-validation for sparse 
    inverse covariance estimation.  Default is 0.25.
%%     ~~Describe \code{maxlam} here~~
}
}
\details{ The Transposable Sphering Algorithm adjusts for correlations
  among the rows and columns of a data matrix before conducting
  large-scale inference.  Currently, this method is only written for
  two-sample problems.  The data matrix is row and column centered and
  two-sample T-statistics are computed for each row.  The Transposable
  Sphering method is applied to the top 500 rows corresponding to the
  largest absolute T-statistics. The matrix is decomposed
  into a signal matrix, corresponding to the two classes of interest,
  and a noise matrix.  This noise matrix is sphered so that both the
  rows and columns are approximately independent.  Specifically, sparse
  inverse covariances of the rows and columns are estimated via
  Transposable Regularized Covariance Models and used to whiten the
  noise matrix.  Cross-validation is used to estimate the regularization
  parameters controlling the amount of sparsity.  The estimated signal
  matrix and sphered noise matrix are then added to form the sphered
  data matrix that is used to conduct large-scale inference.  Test
  statistics are adjusted using central-matching, and the
  Benjamini-Hochberg step-up procedure is used to control the False
  Discovery Rate.  
%%  ~~ If necessary, more details than the description above ~~
}
\value{
  \item{sig.rows }{The indices of the statistically
    significant rows after controlling the False Discovery Rate at the
    value \code{fdr}.}
  \item{t.stats }{Sphered two-sample T-statistics. }
  \item{p.vals }{Sphered (unadjusted) p-values. }
  \item{x.sphered }{The sphered data matrix.  Note that only the top 500
  rows are used in the algorithm so this data matrix is has row
  dimension at most 500.}
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
      G. I. Allen and R. Tibshirani, "Inference with Transposable Data:
      Modeling the Effects of Row and Column Correlations", To Appear in
      Journal of the Royal Statistical Society, Series B (Theory &
      Methods), 2011.

      G. I. Allen and R. Tibshirani, "Transposable regularized covariance
      models with an application to missing data imputation",  Annals of
      Applied Statistics, 4:2, 764-790, 2010.       
%% ~put references to the literature/web site here ~
}
\author{
  Genevera I. Allen
%%  ~~who you are~~
}
\examples{
#batch-effect simulation
n = 250
p = 50
y = c(rep(1,25),rep(2,25))
mu1true = c(rep(.5,25),rep(-.5,25),rep(0,n-50))
mu2true = c(rep(-.5,25),rep(.5,25),rep(0,n-50))
Smat = cbind(matrix(mu1true,n,p/2),matrix(mu2true,n,p/2))
mus = c(-.5,-.25,0,.25,.5)
Bmatsig = matrix(1,n,1) \%*\% t(rep(mus,each=10))
Bmat = Bmatsig + matrix(rnorm(n*p)*.75,n,p)
xxt = matrix(rnorm(2*n^2),n,2*n)
Sig = xxt \%*\% t(xxt)/(2*n); eSig = eigen(Sig);
xx = matrix(rnorm(n*p),n,p)
x.b = Smat + eSig$vectors \%*\% diag(sqrt(eSig$values)) \%*\%
eSig$vectors \%*\% xx + Bmat

#Transposable Sphering Algorithm
ans = TransSphere(x.b,y,fdr=.1,.15,.25)

#significant rows
ans$sig.rows

#true positive rate
sum(ans$sig.rows<=50)/50

#false positive rate
sum(ans$sig.rows>50)/200
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
