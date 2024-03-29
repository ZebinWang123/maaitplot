% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot_maait.R
\name{plot_maait}
\alias{plot_maait}
\title{Plot MAAIT variables}
\usage{
plot_maait(df, x_axis_var, y_axis_var)
}
\arguments{
\item{df}{a dataframe containing the MAAIT data}

\item{x_axis_var}{the name of the column in \code{df} that specifies the name of the x-axis variable}

\item{y_axis_var}{the name of the column in \code{df} that specifies the name of the y-axis variable}
}
\value{
a ggplot object
}
\description{
This function produces a plot with smoothing curves for variables in the MAAIT research
}
\examples{
plot_maait(maait_data, x_axis_var = "dmouseblog2", y_axis_var = "sxsgeneral")
}
