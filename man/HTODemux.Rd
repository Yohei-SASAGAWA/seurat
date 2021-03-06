% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/multi_modal.R
\name{HTODemux}
\alias{HTODemux}
\title{Demultiplex samples based on data from cell 'hashing'}
\usage{
HTODemux(object, percent_cutoff = 0.999, init_centers = NULL,
  cluster_nstarts = 100, k_function = "kmeans", nsamples = 100,
  print.output = TRUE, assay.type = "HTO", confidence_threshold = 0.05)
}
\arguments{
\item{object}{Seurat object. Assumes that the hash tag oligo (HTO) data has been added and normalized in the HTO slot.}

\item{percent_cutoff}{The quantile of inferred 'negative' distribution for each HTO - over which the cell is considered 'positive'. Default is 0.999}

\item{init_centers}{Initial number of clusters for kmeans of the HTO oligos. Default is the # of samples + 1 (to account for negatives)}

\item{cluster_nstarts}{nstarts value for the initial k-means clustering}

\item{k_function}{Clustering function for initial HTO grouping. Default is "kmeans", also support "clara" for fast k-medoids clustering on large applications}

\item{nsamples}{Number of samples to be drawn from the dataset used for clustering, for k_function = "clara"}

\item{print.output}{Prints the output}

\item{assay.type}{Naming of HTO assay}

\item{confidence_threshold}{The quantile of the inferred 'positive' distribution for each HTO. Cells that have lower counts than this threshold are labeled as uncertain in the confidence field. Default is 0.05}
}
\value{
Seurat object. Demultiplexed information is stored in the object meta data.
}
\description{
Assign sample-of-origin for each cell, annotate doublets.
}
\examples{
\dontrun{
object <- HTODemux(object)
}
}
