#' @title myddt function
#' @param x x variable (Length)
#' @param y y variable (Weight
#' @param cond length of species
#' @param col column variable
#' @param df data
#'
#' @return Plots ddt data
#' @export
#'
#' @examples
#'
myddtfun2 <- function(df, x, y, cond, col){

  df1 <- df %>% filter({{cond}}) # Note the use of {{}}
  g <- ggplot(df1, aes_string(x=x,y=y)) + # Note the use of aes_string
    geom_point(aes_string(color = col )) +
    geom_smooth(formula = y~x +I(x^2), method = "lm") +
    ggtitle("Matthew Clark")
  print(g)
  head(df1)
  write.csv(df1,'LvsWforCCATFISH.csv')
  write.csv(df1,'LvswforSMBuffalo.csv')
  print(ddt)
  print(df1)
  table(ddt$RIVER)/length(ddt$RIVER)

}
