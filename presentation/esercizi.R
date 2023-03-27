# Suggerimenti per gli esercizi:
# - uscire da swirl con bye()
# - creare uno script (e salvatelo!)
# - digitare il codice nello script
# - scaricare i files excel inviati via email da Livilla 
#      nella working direcotory
# - per vedere qual è la working directory usare getwd()
# - inserire opportuni commenti nello script per capire anche in futuro
#      il significato del codice (i commenti sono preceduti da #)
# esercizio 2 ----
pesi<- c(157, 148, 144, 136, 163, 158, 164, 174, 157, 170, 148, 147, 174, 
  154, 163, 162, 158, 183, 183, 175)
prov <- c(rep("PV", 5), rep("TO", 5), rep("CN", 5), rep("BI", 5))
tapply(pesi, prov, mean)
tapply(pesi, prov, sd)
tapply(pesi, prov, length)
table(prov)

boxplot(pesi~prov, col= c("blue", "green","red", "yellow"))
kruskal.test(pesi~prov)

# esercizio 3 -----
library(readxl) # carico la libreria  per importare gli excel
pesticidi <- read_excel("testing/pesticidi.xlsx") # importo i dati da excel
tabella <- table(pesticidi$sesso, pesticidi$pesticida) # tabella di contingenza
tabella # stampa tabelle di contingenza
chisq.test(tabella) # chi quadrato

# esercizio 4 ----
