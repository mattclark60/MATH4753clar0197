#' @title Curve Function
#'
#' @param mu mean value
#' @param sigma standard deviation
#' @param a secondxcurvevalue
#'
#' @return Plots Curve
#'
#' @export
#'
#' @examples
#' myncurve(mu=10,sigma=5, a=6)
myncurve = function(mu, sigma, a){
  curve(dnorm(x,mean=,sd=sigma), xlim = c(mu-3*sigma, mu + 3*sigma))
  xcurve = seq(-20, a, length = 100)
  ycurve = dnorm(xcurve, -2, 0.5)
}

