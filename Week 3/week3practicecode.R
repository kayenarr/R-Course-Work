






library(lattice)
library(nlme)
xyplot(y~x|f, panel= function(x,y,...) {
panel.xyplot(x,y,...)
panel.abline(h=median(y),lty=3)
}
)