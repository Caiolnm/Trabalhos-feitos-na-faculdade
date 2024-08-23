setwd("C:/Users/caiol/Desktop/UFPE/R")
Dados = read.table("q3.txt", header = TRUE)
#Separando os Dados
dois_f = replicate(3,1)
tres_f = replicate(3,2)
quatro_f = replicate(3,3)
cinco_f = replicate(3,4)
dummyh = c(dois_f, tres_f,quatro_f,cinco_f)
dummyv = t(dummyh)
dummy = t(dummyv)
Dados_1 <- cbind(Dados, dummy)
dummy2 = c(1,2,3,1,2,3,1,2,3,1,2,3)
dummy2v = t(dummy2)
dummy_2 = t(dummy2v)
Dados_2 <- cbind(Dados_1, dummy_2)
dados <- subset(Dados_2, select = c(bread, veg.,fruits,meat,poultry,milk,wine,dummy,dummy_2))
dois_filhos <- subset(dados, dummy == 1)
dois_filhos <- subset(dois_filhos, select = -dummy)
dois_filhos <- subset(dois_filhos, select = -dummy_2)
tres_filhos <- subset(dados, dummy == 2)
tres_filhos <- subset(tres_filhos, select = -dummy)
tres_filhos <- subset(tres_filhos, select = -dummy_2)
quatro_filhos <- subset(dados, dummy == 3)
quatro_filhos <- subset(quatro_filhos, select = -dummy)
quatro_filhos <- subset(quatro_filhos, select = -dummy_2)
cinco_filhos <- subset(dados, dummy == 4)
cinco_filhos <- subset(cinco_filhos, select = -dummy)
cinco_filhos <- subset(cinco_filhos, select = -dummy_2)
MA <- subset(dados, dummy_2 == 1)
MA <- subset(MA, select = -dummy)
MA <- subset(MA, select = -dummy_2)
EM <- subset(dados, dummy_2 == 2)
EM <- subset(EM, select = -dummy)
EM <- subset(EM, select = -dummy_2)
CA <- subset(dados, dummy_2 == 3)
CA <- subset(CA, select = -dummy)
CA <- subset(CA, select = -dummy_2)
dados_geral <- subset(dados, select = -dummy)
dados_geral <- subset(dados_geral, select = -dummy_2)

#Analise geral
plot(dados_geral)
#Calculando as medias
pao_g = mean(dados_geral$bread)
vegetais_g = mean(dados_geral$veg.)
fruta_g = mean(dados_geral$fruits)
carne_g = mean(dados_geral$meat)
aves_g = mean(dados_geral$poultry)
leite_g = mean(dados_geral$milk)
vinho_g = mean(dados_geral$wine)
total_g = c(pao_g,vegetais_g,fruta_g,carne_g,aves_g,leite_g,vinho_g)
mean(total_g)
#fazendo histogramas
hist(dados_geral$bread)
hist(dados_geral$veg.)
hist(dados_geral$fruits)
hist(dados_geral$meat)
hist(dados_geral$poultry)
hist(dados_geral$milk)
hist(dados_geral$wine)
hist(total_g)
#fazendo boxplots
boxplot(dados_geral$bread)
boxplot(dados_geral$veg.)
boxplot(dados_geral$fruits)
boxplot(dados_geral$meat)
boxplot(dados_geral$poultry)
boxplot(dados_geral$milk)
boxplot(dados_geral$wine)
boxplot(total_g)
#verificando outliers
boxplot(dados_geral$bread)$out
boxplot(dados_geral$veg.)$out
boxplot(dados_geral$fruits)$out
boxplot(dados_geral$meat)$out
boxplot(dados_geral$poultry)$out
boxplot(dados_geral$milk)$out
boxplot(dados_geral$wine)$out
boxplot(total_g)$out
#calculando variancia
var(dados_geral$bread)
var(dados_geral$veg.)
var(dados_geral$fruits)
var(dados_geral$meat)
var(dados_geral$poultry)
var(dados_geral$milk)
var(dados_geral$wine)
var(total_g)
#matriz de covariancia
cov(dados_geral)
#calculando desvio padrao
sqrt(var(dados_geral$bread))
sqrt(var(dados_geral$veg.))
sqrt(var(dados_geral$fruits))
sqrt(var(dados_geral$meat))
sqrt(var(dados_geral$poultry))
sqrt(var(dados_geral$milk))
sqrt(var(dados_geral$wine))
sqrt(var(total_g))
#matriz de correlação
cor(dados_geral)
#calculando medianas
median(dados_geral$bread)
median(dados_geral$veg.)
median(dados_geral$fruits)
median(dados_geral$meat)
median(dados_geral$poultry)
median(dados_geral$milk)
median(dados_geral$wine)
median(total_g)
#calculando Quartis
quantile(dados_geral$bread)
quantile(dados_geral$veg.)
quantile(dados_geral$fruits)
quantile(dados_geral$meat)
quantile(dados_geral$poultry)
quantile(dados_geral$milk)
quantile(dados_geral$wine)
quantile(total_g)





#Analise para dois filhos
plot(dois_filhos)
#Calculando as medias
pao_2 = mean(dois_filhos$bread)
vegetais_2 = mean(dois_filhos$veg.)
fruta_2 = mean(dois_filhos$fruits)
carne_2 = mean(dois_filhos$meat)
aves_2 = mean(dois_filhos$poultry)
leite_2 = mean(dois_filhos$milk)
vinho_2 = mean(dois_filhos$wine)
total_2 = c(pao_2,vegetais_2,fruta_2,carne_2,aves_2,leite_2,vinho_2)
mean(total_2)
#fazendo histogramas
hist(dois_filhos$bread)
hist(dois_filhos$veg.)
hist(dois_filhos$fruits)
hist(dois_filhos$meat)
hist(dois_filhos$poultry)
hist(dois_filhos$milk)
hist(dois_filhos$wine)
hist(total_2)
#fazendo boxplots
boxplot(dois_filhos$bread)
boxplot(dois_filhos$veg.)
boxplot(dois_filhos$fruits)
boxplot(dois_filhos$meat)
boxplot(dois_filhos$poultry)
boxplot(dois_filhos$milk)
boxplot(dois_filhos$wine)
boxplot(total_2)
#verificando outliers
boxplot(dois_filhos$bread)$out
boxplot(dois_filhos$veg.)$out
boxplot(dois_filhos$fruits)$out
boxplot(dois_filhos$meat)$out
boxplot(dois_filhos$poultry)$out
boxplot(dois_filhos$milk)$out
boxplot(dois_filhos$wine)$out
boxplot(total_2)$out
#calculando variancia
var(dois_filhos$bread)
var(dois_filhos$veg.)
var(dois_filhos$fruits)
var(dois_filhos$meat)
var(dois_filhos$poultry)
var(dois_filhos$milk)
var(dois_filhos$wine)
var(total_2)
#matriz de covariancia
cov(dois_filhos)
#calculando desvio padrao
sqrt(var(dois_filhos$bread))
sqrt(var(dois_filhos$veg.))
sqrt(var(dois_filhos$fruits))
sqrt(var(dois_filhos$meat))
sqrt(var(dois_filhos$poultry))
sqrt(var(dois_filhos$milk))
sqrt(var(dois_filhos$wine))
sqrt(var(total_2))
#matriz de correlação
cor(dois_filhos)
#calculando medianas
median(dois_filhos$bread)
median(dois_filhos$veg.)
median(dois_filhos$fruits)
median(dois_filhos$meat)
median(dois_filhos$poultry)
median(dois_filhos$milk)
median(dois_filhos$wine)
median(total_2)
#calculando Quartis
quantile(dois_filhos$bread)
quantile(dois_filhos$veg.)
quantile(dois_filhos$fruits)
quantile(dois_filhos$meat)
quantile(dois_filhos$poultry)
quantile(dois_filhos$milk)
quantile(dois_filhos$wine)
quantile(total_2)






#Analise para tres filhos
plot(tres_filhos)
#Calculando as medias
pao_3 = mean(tres_filhos$bread)
vegetais_3 = mean(tres_filhos$veg.)
fruta_3 = mean(tres_filhos$fruits)
carne_3 = mean(tres_filhos$meat)
aves_3 = mean(tres_filhos$poultry)
leite_3 = mean(tres_filhos$milk)
vinho_3 = mean(tres_filhos$wine)
total_3 = c(pao_3,vegetais_3,fruta_3,carne_3,aves_3,leite_3,vinho_3)
mean(total_3)
#fazendo histogramas
hist(tres_filhos$bread)
hist(tres_filhos$veg.)
hist(tres_filhos$fruits)
hist(tres_filhos$meat)
hist(tres_filhos$poultry)
hist(tres_filhos$milk)
hist(tres_filhos$wine)
hist(total_3)
#fazendo boxplots
boxplot(tres_filhos$bread)
boxplot(tres_filhos$veg.)
boxplot(tres_filhos$fruits)
boxplot(tres_filhos$meat)
boxplot(tres_filhos$poultry)
boxplot(tres_filhos$milk)
boxplot(tres_filhos$wine)
boxplot(total_3)
#verificando outliers
boxplot(tres_filhos$bread)$out
boxplot(tres_filhos$veg.)$out
boxplot(tres_filhos$fruits)$out
boxplot(tres_filhos$meat)$out
boxplot(tres_filhos$poultry)$out
boxplot(tres_filhos$milk)$out
boxplot(tres_filhos$wine)$out
boxplot(total_3)$out
#calculando variancia
var(tres_filhos$bread)
var(tres_filhos$veg.)
var(tres_filhos$fruits)
var(tres_filhos$meat)
var(tres_filhos$poultry)
var(tres_filhos$milk)
var(tres_filhos$wine)
var(total_3)
#matriz de covariancia
cov(tres_filhos)
#calculando desvio padrao
sqrt(var(tres_filhos$bread))
sqrt(var(tres_filhos$veg.))
sqrt(var(tres_filhos$fruits))
sqrt(var(tres_filhos$meat))
sqrt(var(tres_filhos$poultry))
sqrt(var(tres_filhos$milk))
sqrt(var(tres_filhos$wine))
sqrt(var(total_3))
#matriz de correlação
cor(tres_filhos)
#calculando medianas
median(tres_filhos$bread)
median(tres_filhos$veg.)
median(tres_filhos$fruits)
median(tres_filhos$meat)
median(tres_filhos$poultry)
median(tres_filhos$milk)
median(tres_filhos$wine)
median(total_3)
#calculando Quartis
quantile(tres_filhos$bread)
quantile(tres_filhos$veg.)
quantile(tres_filhos$fruits)
quantile(tres_filhos$meat)
quantile(tres_filhos$poultry)
quantile(tres_filhos$milk)
quantile(tres_filhos$wine)
quantile(total_3)






#Analise para quatro filhos
plot(quatro_filhos)
#Calculando as medias
pao_4 = mean(quatro_filhos$bread)
vegetais_4 = mean(quatro_filhos$veg.)
fruta_4 = mean(quatro_filhos$fruits)
carne_4 = mean(quatro_filhos$meat)
aves_4 = mean(quatro_filhos$poultry)
leite_4 = mean(quatro_filhos$milk)
vinho_4 = mean(quatro_filhos$wine)
total_4 = c(pao_4,vegetais_4,fruta_4,carne_4,aves_4,leite_4,vinho_4)
mean(total_4)
#fazendo histogramas
hist(quatro_filhos$bread)
hist(quatro_filhos$veg.)
hist(quatro_filhos$fruits)
hist(quatro_filhos$meat)
hist(quatro_filhos$poultry)
hist(quatro_filhos$milk)
hist(quatro_filhos$wine)
hist(total_4)
#fazendo boxplots
boxplot(quatro_filhos$bread)
boxplot(quatro_filhos$veg.)
boxplot(quatro_filhos$fruits)
boxplot(quatro_filhos$meat)
boxplot(quatro_filhos$poultry)
boxplot(quatro_filhos$milk)
boxplot(quatro_filhos$wine)
boxplot(total_4)
#verificando outliers
boxplot(quatro_filhos$bread)$out
boxplot(quatro_filhos$veg.)$out
boxplot(quatro_filhos$fruits)$out
boxplot(quatro_filhos$meat)$out
boxplot(quatro_filhos$poultry)$out
boxplot(quatro_filhos$milk)$out
boxplot(quatro_filhos$wine)$out
boxplot(total_4)$out
#calculando variancia
var(quatro_filhos$bread)
var(quatro_filhos$veg.)
var(quatro_filhos$fruits)
var(quatro_filhos$meat)
var(quatro_filhos$poultry)
var(quatro_filhos$milk)
var(quatro_filhos$wine)
var(total_4)
#matriz de covariancia
cov(quatro_filhos)
#calculando desvio padrao
sqrt(var(quatro_filhos$bread))
sqrt(var(quatro_filhos$veg.))
sqrt(var(quatro_filhos$fruits))
sqrt(var(quatro_filhos$meat))
sqrt(var(quatro_filhos$poultry))
sqrt(var(quatro_filhos$milk))
sqrt(var(quatro_filhos$wine))
sqrt(var(total_4))
#matriz de correlação
cor(quatro_filhos)
#calculando medianas
median(quatro_filhos$bread)
median(quatro_filhos$veg.)
median(quatro_filhos$fruits)
median(quatro_filhos$meat)
median(quatro_filhos$poultry)
median(quatro_filhos$milk)
median(quatro_filhos$wine)
median(total_4)
#calculando Quartis
quantile(quatro_filhos$bread)
quantile(quatro_filhos$veg.)
quantile(quatro_filhos$fruits)
quantile(quatro_filhos$meat)
quantile(quatro_filhos$poultry)
quantile(quatro_filhos$milk)
quantile(quatro_filhos$wine)
quantile(total_4)





#Analise para cinco filhos
plot(cinco_filhos)
#Calculando as medias
pao_5 = mean(cinco_filhos$bread)
vegetais_5 = mean(cinco_filhos$veg.)
fruta_5 = mean(cinco_filhos$fruits)
carne_5 = mean(cinco_filhos$meat)
aves_5 = mean(cinco_filhos$poultry)
leite_5 = mean(cinco_filhos$milk)
vinho_5 = mean(cinco_filhos$wine)
total_5 = c(pao_5,vegetais_5,fruta_5,carne_5,aves_5,leite_5,vinho_5)
mean(total_5)
#fazendo histogramas
hist(cinco_filhos$bread)
hist(cinco_filhos$veg.)
hist(cinco_filhos$fruits)
hist(cinco_filhos$meat)
hist(cinco_filhos$poultry)
hist(cinco_filhos$milk)
hist(cinco_filhos$wine)
hist(total_5)
#fazendo boxplots
boxplot(cinco_filhos$bread)
boxplot(cinco_filhos$veg.)
boxplot(cinco_filhos$fruits)
boxplot(cinco_filhos$meat)
boxplot(cinco_filhos$poultry)
boxplot(cinco_filhos$milk)
boxplot(cinco_filhos$wine)
boxplot(total_5)
#verificando outliers
boxplot(cinco_filhos$bread)$out
boxplot(cinco_filhos$veg.)$out
boxplot(cinco_filhos$fruits)$out
boxplot(cinco_filhos$meat)$out
boxplot(cinco_filhos$poultry)$out
boxplot(cinco_filhos$milk)$out
boxplot(cinco_filhos$wine)$out
boxplot(total_5)$out
#calculando variancia
var(cinco_filhos$bread)
var(cinco_filhos$veg.)
var(cinco_filhos$fruits)
var(cinco_filhos$meat)
var(cinco_filhos$poultry)
var(cinco_filhos$milk)
var(cinco_filhos$wine)
var(total_5)
#matriz de covariancia
cov(cinco_filhos)
#calculando desvio padrao
sqrt(var(cinco_filhos$bread))
sqrt(var(cinco_filhos$veg.))
sqrt(var(cinco_filhos$fruits))
sqrt(var(cinco_filhos$meat))
sqrt(var(cinco_filhos$poultry))
sqrt(var(cinco_filhos$milk))
sqrt(var(cinco_filhos$wine))
sqrt(var(total_5))
#matriz de correlação
cor(cinco_filhos)
#calculando medianas
median(cinco_filhos$bread)
median(cinco_filhos$veg.)
median(cinco_filhos$fruits)
median(cinco_filhos$meat)
median(cinco_filhos$poultry)
median(cinco_filhos$milk)
median(cinco_filhos$wine)
median(total_5)
#calculando Quartis
quantile(cinco_filhos$bread)
quantile(cinco_filhos$veg.)
quantile(cinco_filhos$fruits)
quantile(cinco_filhos$meat)
quantile(cinco_filhos$poultry)
quantile(cinco_filhos$milk)
quantile(cinco_filhos$wine)
quantile(total_5)







#Analise para manual workers
plot(MA)
#Calculando as medias
pao_MA = mean(MA$bread)
vegetais_MA = mean(MA$veg.)
fruta_MA = mean(MA$fruits)
carne_MA = mean(MA$meat)
aves_MA = mean(MA$poultry)
leite_MA = mean(MA$milk)
vinho_MA = mean(MA$wine)
total_MA = c(pao_MA,vegetais_MA,fruta_MA,carne_MA,aves_MA,leite_MA,vinho_MA)
mean(total_MA)
#fazendo histogramas
hist(MA$bread)
hist(MA$veg.)
hist(MA$fruits)
hist(MA$meat)
hist(MA$poultry)
hist(MA$milk)
hist(MA$wine)
hist(total_MA)
#fazendo boxplots
boxplot(MA$bread)
boxplot(MA$veg.)
boxplot(MA$fruits)
boxplot(MA$meat)
boxplot(MA$poultry)
boxplot(MA$milk)
boxplot(MA$wine)
boxplot(total_MA)
#verificando outliers
boxplot(MA$bread)$out
boxplot(MA$veg.)$out
boxplot(MA$fruits)$out
boxplot(MA$meat)$out
boxplot(MA$poultry)$out
boxplot(MA$milk)$out
boxplot(MA$wine)$out
boxplot(total_MA)$out
#calculando variancia
var(MA$bread)
var(MA$veg.)
var(MA$fruits)
var(MA$meat)
var(MA$poultry)
var(MA$milk)
var(MA$wine)
var(total_MA)
#matriz de covariancia
cov(MA)
#calculando desvio padrao
sqrt(var(MA$bread))
sqrt(var(MA$veg.))
sqrt(var(MA$fruits))
sqrt(var(MA$meat))
sqrt(var(MA$poultry))
sqrt(var(MA$milk))
sqrt(var(MA$wine))
sqrt(var(total_MA))
#matriz de correlação
cor(MA)
#calculando medianas
median(MA$bread)
median(MA$veg.)
median(MA$fruits)
median(MA$meat)
median(MA$poultry)
median(MA$milk)
median(MA$wine)
median(total_MA)
#calculando Quartis
quantile(MA$bread)
quantile(MA$veg.)
quantile(MA$fruits)
quantile(MA$meat)
quantile(MA$poultry)
quantile(MA$milk)
quantile(MA$wine)
quantile(total_MA)




#Analise para employees
plot(EM)
#Calculando as medias
pao_EM = mean(EM$bread)
vegetais_EM = mean(EM$veg.)
fruta_EM = mean(EM$fruits)
carne_EM = mean(EM$meat)
aves_EM = mean(EM$poultry)
leite_EM = mean(EM$milk)
vinho_EM = mean(EM$wine)
total_EM = c(pao_EM,vegetais_EM,fruta_EM,carne_EM,aves_EM,leite_EM,vinho_EM)
mean(total_EM)
#fazendo histogramas
hist(EM$bread)
hist(EM$veg.)
hist(EM$fruits)
hist(EM$meat)
hist(EM$poultry)
hist(EM$milk)
hist(EM$wine)
hist(total_EM)
#fazendo boxplots
boxplot(EM$bread)
boxplot(EM$veg.)
boxplot(EM$fruits)
boxplot(EM$meat)
boxplot(EM$poultry)
boxplot(EM$milk)
boxplot(EM$wine)
boxplot(total_EM)
#verificando outliers
boxplot(EM$bread)$out
boxplot(EM$veg.)$out
boxplot(EM$fruits)$out
boxplot(EM$meat)$out
boxplot(EM$poultry)$out
boxplot(EM$milk)$out
boxplot(EM$wine)$out
boxplot(total_EM)$out
#calculando variancia
var(EM$bread)
var(EM$veg.)
var(EM$fruits)
var(EM$meat)
var(EM$poultry)
var(EM$milk)
var(EM$wine)
var(total_EM)
#matriz de covariancia
cov(EM)
#calculando desvio padrao
sqrt(var(EM$bread))
sqrt(var(EM$veg.))
sqrt(var(EM$fruits))
sqrt(var(EM$meat))
sqrt(var(EM$poultry))
sqrt(var(EM$milk))
sqrt(var(EM$wine))
sqrt(var(total_MA))
#matriz de correlação
cor(EM)
#calculando medianas
median(EM$bread)
median(EM$veg.)
median(EM$fruits)
median(EM$meat)
median(EM$poultry)
median(EM$milk)
median(EM$wine)
median(total_EM)
#calculando Quartis
quantile(EM$bread)
quantile(EM$veg.)
quantile(EM$fruits)
quantile(EM$meat)
quantile(EM$poultry)
quantile(EM$milk)
quantile(EM$wine)
quantile(total_EM)






#Analise para managers
plot(CA)
#Calculando as medias
pao_CA = mean(CA$bread)
vegetais_CA = mean(CA$veg.)
fruta_CA = mean(CA$fruits)
carne_CA = mean(CA$meat)
aves_CA = mean(CA$poultry)
leite_CA = mean(CA$milk)
vinho_CA = mean(CA$wine)
total_CA = c(pao_CA,vegetais_CA,fruta_CA,carne_CA,aves_CA,leite_CA,vinho_CA)
mean(total_CA)
#fazendo histogramas
hist(CA$bread)
hist(CA$veg.)
hist(CA$fruits)
hist(CA$meat)
hist(CA$poultry)
hist(CA$milk)
hist(CA$wine)
hist(total_CA)
#fazendo boxplots
boxplot(CA$bread)
boxplot(CA$veg.)
boxplot(CA$fruits)
boxplot(CA$meat)
boxplot(CA$poultry)
boxplot(CA$milk)
boxplot(CA$wine)
boxplot(total_CA)
#verificando outliers
boxplot(CA$bread)$out
boxplot(CA$veg.)$out
boxplot(CA$fruits)$out
boxplot(CA$meat)$out
boxplot(CA$poultry)$out
boxplot(CA$milk)$out
boxplot(CA$wine)$out
boxplot(total_CA)$out
#calculando variancia
var(CA$bread)
var(CA$veg.)
var(CA$fruits)
var(CA$meat)
var(CA$poultry)
var(CA$milk)
var(CA$wine)
var(total_CA)
#matriz de covariancia
cov(CA)
#calculando desvio padrao
sqrt(var(CA$bread))
sqrt(var(CA$veg.))
sqrt(var(CA$fruits))
sqrt(var(CA$meat))
sqrt(var(CA$poultry))
sqrt(var(CA$milk))
sqrt(var(CA$wine))
sqrt(var(total_CA))
#matriz de correlação
cor(CA)
#calculando medianas
median(CA$bread)
median(CA$veg.)
median(CA$fruits)
median(CA$meat)
median(CA$poultry)
median(CA$milk)
median(CA$wine)
median(total_CA)
#calculando Quartis
quantile(CA$bread)
quantile(CA$veg.)
quantile(CA$fruits)
quantile(CA$meat)
quantile(CA$poultry)
quantile(CA$milk)
quantile(CA$wine)
quantile(total_CA)