# Lascia che ti mostri un esempio di una funzione che mi inventerò chiamato
# incremento(). Il più delle volte voglio usare questa funzione per aumentare il
# valore di un numero per uno. Questa funzione richiederà due argomenti: "numero" e
# "per" dove "il numero" è la cifra che voglio incrementare e "per" è l'importo i
# vuoi incrementare il "numero" di. Ho scritto la funzione di seguito.
# 
# incremento <- function(numero, di = 1) {
#      numero + di
# }
# 
# Se dai un'occhiata tra le parentesi puoi vedere che ho impostato
# "di" uguale a 1. Ciò significa che l'argomento "per" avrà di default
# il valore di 1.
# 
# Ora posso usare la funzione di incremento senza fornire un valore per "di":
# incremento(5) restituirà 6.
# 
# Tuttavia, se voglio fornire un valore per l'argomento "di" che posso ancora! 
# L'espressione: incremento(5, 2) restituirà 7.
# 
# Scrivi una funzione chiamata "remainder" (resto in inglese). remainder() chiederà
# due argomenti: "num" (numero) e "divisor" (divisore) in cui "num" è diviso per "divisor" e
# il resto viene restituito. Immagina di voler di solito conoscere il resto
# Quando si dividi per 2, quindi imposta il valore predefinito di "divisor" su 2.
# Assicurati che "num" sia il primo argomento e "divisor" il secondo argomento.
# 
# Suggerimento n. 1: è possibile utilizzare l'operatore del modulo %% per trovare il resto.
# Es: 7 %% 4 restituisce 3.
# 
# Ricorda di impostare valori predefiniti appropriati! Assicurati di salvare lo
# script e digita submit() nella console dopo aver scritto la funzione.

remainder <- function(num, divisor = 2) {
  # Scrivi qui il tuo codice!
  # Ricorda: sarà restituita l'ultima espressione elaborata 
  num %% divisor
}
