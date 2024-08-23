setwd("C:/Users/caiol/Desktop/UFPE/R")
dados = read.csv("ITUB3.csv", header = TRUE, sep = ";")
mod = lm(formula = ITUB3 ~ dias,data = dados)
coef = coef(mod)
delta = c()
p = 264
for(i in 1:p){
delta[i] = abs(dados$ITUB3[i] - ((coef[2]*dados$dias[i])+coef[1]))
}
dp = var(delta)**(1/2)
y = c()
k = 33
for(j in 1:k){
x = c()
for(i in 1:p){
r = runif(1)
x[i] = coef[2]*dados$dias[i] + coef[1]+(-2*dp + (4 * dp * r))
}
y[j] = x[p]
}
media = mean(y)
dpy = var(y)**(1/2)
otimista = media + (2*dpy/(33**(1/2)))
pessimista = media - (2*dpy/(33**(1/2)))