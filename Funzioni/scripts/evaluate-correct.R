# Puoi passare le funzioni come argomenti ad altre funzioni proprio come puoi passare
# dati come argomenti delle funzioni. Diciamo che definisci le seguenti funzioni:
#   
#   add_two_numbers <- function (num1, num2) {
#     Num1 + Num2
#   }
# 
# multiply_two_numbers <- function (num1, num2) {
#   Num1 * Num2
# }
# 
# Some_Function <- function (func) {
#   Func (2, 4)
# }
# 
# Come puoi vedere, usiamo il nome dell'argomento "func" come una funzione all'interno di
# "Some_function ()." Passando le funzioni come argomenti
# Some_Function (add_two_numbers) darà 6, mentre
# Some_Function (multiply_two_numbers) darà 8.
# 
# Finisci la definizione della funzione di seguito in modo che se funzione viene passata 
# nell'argomento "func" e alcuni dati (come un vettore) vengono passati nell'argomento DAT
# La funzione evaluate() restituirà il risultato di dat passato come un
# argomento di func.
# 
# Suggerimenti: questo esercizio è un po 'complicato, quindi fornirò qualche esempio di come
# evaluate() dovrebbe funzionare:
#    1. evaluate(sum, c(2, 4, 6)) dà 12
#    2. evaluate(median, c(7, 40, 9)) dà 9
#    3. evaluate(floor, 11.1) dà 11

evaluate <- function(func, dat){
  # Scrivi qui il tuo codice!
  # Ricorda: sarà restituita l'ultima espressione elaborata 
  func(dat)
}
