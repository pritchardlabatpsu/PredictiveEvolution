
rm(list=ls())
setwd("C:/Users/Scott/Box Sync/MutBias/GitHub/Figures/Figure1/")
library("pwr")

grwth.df = read.csv("Supplementary Table 1.csv",stringsAsFactors=F)

pwr.2p2n.test(h = , n1 = , n2 = , sig.level = , power = )

EK = grwth.df$E255K
EK = EK[!is.na(EK)]
EV = grwth.df$E255V
EV = EV[!is.na(EV)]

pwr.tst = pwr.t2n.test(n1=length(EK),n2=length(EV),
             sig.level = 0.05,
             power = 0.8)
pooled.sd = sqrt((sd(EK)^2-sd(EV)^2)/2)
delta = pwr.tst$d*pooled.sd

delta/mean(c(EK,EV)) #11.1% difference
