% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/read5endCoverage.r
\name{read5endCoverage}
\alias{read5endCoverage}
\title{Reads Coverage Using 5-end Base}
\usage{
read5endCoverage(bam, chroms = NULL, mapq = 30L, duplicate = FALSE,
  flag = scanBamFlag(isUnmappedQuery = FALSE, isSecondaryAlignment = FALSE,
  isNotPassingQualityControls = FALSE))
}
\arguments{
\item{bam}{The path to a BAM file, which is sorted and indexed.}

\item{chroms}{NULL or a vector of chromosome names that compatible with
the provided BAM file. Reads coverage will be generated for these
chromosomes. Default (NULL) will use all chromosomes in BAM file.}

\item{mapq}{A non-negative integer specifying the minimum mapping
quality to include. BAM records with mapping qualities less
than \code{mapq} are discarded.}

\item{duplicate}{A logical vector which, when FALSE (Default), returns
maximum coverage of 1 for every base pair. Reads that start at the same
position but on different strands are not treated as duplicates.}

\item{flag}{A returned object by \code{Rsamtools::scanBamFlag}.
Additional options for BAM records filtering.}
}
\value{
A list of two objects by \code{GenomicRanges::coverage}
\item{fwd}{Coverage object for forward strand.}
\item{rev}{Coverage object for reverse strand.}
}
\description{
Reads coverage in single base pair resolution using only 5-prime end
of BAM file records. Coverages are reported for forward and reverse
strands separately. Options for customized filtering of BAM records
are provided.
}
\examples{
bam <- system.file("extdata", "chipseq.bam", package="gcapc")
read5endCoverage(bam)
}
