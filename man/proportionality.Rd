% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/proprotionality.R
\name{proportionality}
\alias{proportionality}
\title{Proportionality Distance}
\usage{
proportionality(X)
}
\arguments{
\item{X}{an object of the class: \code{pca}, \code{spca}, \code{pls}, \code{spls}, \code{block.pls} or \code{block.spls}}
}
\value{
Return a list containing the following components:
  \item{propr.distance}{Square matrix with proportionality distance between pairs of features}
  \item{propr.distance.w.cluster}{distance between pairs with cluster label}
  \item{pvalue}{Wilcoxon U-test p-value comparing the medians within clusters and with the entire background set}
}
\description{
\code{proportionality} is a wrapper that compute proportionality distance for 
a clustering result (\code{pca}, \code{spca}, \code{pls}, \code{spls}, \code{block.pls}, \code{block.spls}).
and it performs a u-test to compare the median within a cluster to the median of the entire background set.
}
\examples{
demo <- suppressWarnings(get_demo_cluster())

# pca
X <- demo$pca
propr.res <- proportionality(X)
plot(propr.res)

# pls
X <- demo$spls
propr.res <- proportionality(X)
plot(propr.res)

# block.pls
X <- demo$block.spls
propr.res <- proportionality(X)
plot(propr.res)

}
\references{
Lovell, D., Pawlowsky-Glahn, V., Egozcue, J. J., Marguerat, S., Bähler, J. (2015). Proportionality: a valid alternative to correlation for relative data. PLoS Comput. Biol. 11, e1004075. doi: 10.1371/journal.pcbi.1004075

Quinn, T. P., Richardson, M. F., Lovell, D., Crowley, T. M. (2017). propr: an r-package for identifying proportionally abundant features using compositional data analysis. Sci. Rep. 7, 16252. doi: 10.1038/s41598-017-16520-0
}
