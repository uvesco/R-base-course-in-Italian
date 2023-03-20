# presentazione del corso --------

# ripetizione: una volta spieghiamo
# una volta spiegazione interattiva
# esercizi riassuntivi

# installiamo e presentazione di Livilla

# presentazione di Swirl


# 1 Elementi di base del linguaggio ----

# prima di tutto
# help
# calcolatrice
# assegnazione (notare in environment)


# 1.1 pausa 01 VETTORI ----
c()
# riciclo vettore
rep(1,10)

# 1.2 pausa 02 ----

#freccia in alto e in basso
#autocompletamento con tab


# 2 Spazio di lavoro e files -----
# prima:
getwd()
dir()
dir.create("temp")
file.create("temp/prova.txt")
file.rename()
file.copy()
file.remove("temp", recursive=T) 
unlink("temp", recursive = T) #anche per directory (se è piena)
file.choose()
file.path()
normalizePath()
setwd()

# 2.1 Spiegazione 1.3 ----

# Lo script rende completamente **ripetibile** l'analisi:
# 
# -   chiunque può comprendere e rieseguire tutti i passaggi
# 
# -   è possibile riutilizzare il codice per eseguire la stessa analisi con dati diversi
# 
# -   è possibile modificare solo un passaggio
# 
# E' possibile **automatizzare** operazioni ripetitive

# scriviamo dei comandi nello script

#osserviamo: riquadro environment
# prendersi il tempo per capire
nuovoFile <- "temp.txt"
nuovoFilePath <- file.path(getwd(), nuovoFile)
file.create(nuovoFilePath)
# osserviamo il file
messaggio <-"Ciao a tutti"
write(messaggio, nuovoFilePath)
# provare a farlo più volte ad aggiungere \n (new line)
file.edit(nuovoFilePath)
#guardiamo cosa c'è nel file
file.remove(nuovoFilePath)

# 3 Sequenze di numeri ----

1:24
seq(from =, to =, by=)
length()

# pausa 3.1----

#immaginate di dover aggiungere dei numeri progressivi ai vostri campioni: utilizzereste seq,
# immaginate di avere dati di 20 alveari appartenenti i primi 10 a una tesi e i secondi 10 a un'altra tesi
c(rep("formico60", 10), rep("formico85", 10))

# oppure che siano alternati
rep(c("formico60", "formico85"), 10)


# 4 vettori ----
# il vettore contiene solo un tipo di valore
#logici T, F, NA
# numerici 
# uso di maggiore, minore, minore o uguale per creare un vettore logico a partire da un vettore numerico


# spiegazione 4.1 operatori booleani
#OR
#AND
#NOT

# spiegazione 4.2 vettori di caratteri

# creiamone uno con c()
# nomi
# cognomi
# con paste nomi completi
# aggiungiamo un numero prima


# 5 Valori mancanti ----
# abbiamo già nominato NA come possibile valore logico, ma anche per altri tipi di
# dati numeri, stringhe di testo, date ecc. può essere indicato un numero mancante

#applichiama logica booleana
NA
vettore * NA

#sum(), max, min, range() con NA
is.na()
!is.na()
#somma di T e F (1) vero e falso sono 1 e 0

Inf #0-45
NaN # 0/0
NULL # oggetto vuoto

# 6 Subset di valori -----------
#vettore indice in 4 diversi tipi: vettori logici,
# vettori di interi positivi, vettori di interi negativi e vettori di stringhe di
#caratteri

#vettore logico ###
#maggiore o minore
#!na

# SPIEGAZIONE 6.1 ----

#vettore  DI INTERI POSITIVI
# posizione
order()
sort() #in questo caso fa la stessa cosa ma non c'entra

# SPIEGAZIONE 6.2 ----
# vettore di interi negativi

# SPIEGAZIONE 6.3 ----
# vettori denominati: crearli con il nome
# aggiungere il nome dopo
# richiamare il nome

# 7 Matrici e data frames ----
# qui entriamo nel vivo dei dati rettangolari (righe e colonne) che si usano normalmente

matrix(1:6,3,2) # guardare come lo riempie di default
dim()

#sappiate che ci sono anche gli array con più di 2 dimensioni

# Spiegazione 7.1
# nella tabella di excel non abbiamo un solo tipo di dato come in una matrice

data.frame()
cbind()

# 8 logica ----
# potete sperimentare aprendo R nel terminale? non in windows-> aprire a parte R

FALSE==FALSE

FALSE == TRUE
(FALSE == TRUE) == FALSE

5<6
# minore=
#   diverso
# AND
# OR
# NOT

which()
# somministriamo tutto e vediamo come se la cavano

# 9 Guardare_i_Dati ----
# prima cosa da fare è cercare di farsi un'idea dei dati
# importate i vostri dati con Excel oppure data(iris)

class()
#se è tibble converto in data.frame (famiglia as.*, vs is.*)
View()
dim()
nrow() #= dim()[1]
ncol() #= dim()[2]
head()
tail()
names()
summary()
order()
?sort()
#variabili carattere contro variabili categoriche factor
levels()
#primo livello (relevel)

# 10 Funzioni ---------

# usato funzioni incluse in R
# sono oggetti
# sintassi per creare funzioni

miaFunzione <- function(a){
  a+1
}
zeta <- miaFunzione(1)
#spiegare

?sum #spiegare argomenti
miaFunzione #vedere il sorgente della funzione

# 11 apply -------

#faccio vedere su iris

# 12 tapply ----------
unique()
table()
mean()
# sempre su iris

# 13 data e ora -------
Sys.Date()
format(Sys.Date(), "%Y")
?strptime

as.Date("2023-03-22")
POSIXct
POSIXlt
#operazioni tra le date
# valutare se usare o meno


# casi d'uso
#asl

# 14 grafici ----
#scatterplot
data(women)
plot(women)
#xlab ylab
#main
# xlim ylim
# colori
# tipi linee
# tipi punti
data("Nile")

# spiegazione 14.1 ----

plot(Nile)
barplot(GNP ~ Year, data = longley)
hline()
boxplot(iris) #o regine
par(mfrow=c(2,2))
par(mfrow=c(1,1))
# legende
# torte (regine per linea, con colori
# esportare i grafici


#ciclo for e png
#creare istogrammi per ogni tipo di iris

)

# esercizi

# presentazione con fonti per studiare
#roger peng coursera
# datacamp.com
# manuali: springer

