#' Plot MAAIT variables
#'
#' @description This function produces a plot with smoothing curves for variables in the MAAIT research
#'
#' @param df a dataframe containing the MAAIT data
#' @param x_axis_var the name of the column in \code{df} that specifies the name of the x-axis variable
#' @param y_axis_var the name of the column in \code{df} that specifies the name of the y-axis variable
#'
#' @return a ggplot object
#'
#' @examples
#' plot_maait(maait_data, x_axis_var = "dmouseblog2", y_axis_var = "sxsgeneral")
#' @import ggplot2
#' @export

plot_maait = function(df, x_axis_var, y_axis_var){

  p <- ggplot(data = df, aes(x = df[,x_axis_var], y = df[,y_axis_var])) +
    geom_point() +
    geom_smooth(method = "gam", formula = y ~ s(x)) +
    theme_bw() +
    xlab(x_axis_var) +
    ylab(y_axis_var)

  return(p)
}
