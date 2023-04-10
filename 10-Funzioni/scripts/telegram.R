# I punti di sospensione (in inglese ellipses) possono essere utilizzati per trasmettere argomenti ad altre funzioni che sono
# usato all'interno della funzione che stai scrivendo. Di solito una funzione che ha i
# punti di sospensione come argomento ha i
# punti di sospensione come ultimo argomento. L'uso di
# Una tale funzione sarebbe come:
#   
#   ellipses_func(arg1, arg2 = true, ...)
# 
# Nell'esempio sopra, arg1 non ha alcun valore predefinito, quindi deve sempre essere fornito un valore
# per arg1, arg2 ha un valore predefinito e altri argomenti possono arrivare dopo arg2
# a seconda di come sono definiti nella documentazione ellipses_func().
# È interessante notare che l'uso della funzione di paste è il seguente:
#   
#   paste (..., sep = " ", collapse = NULL)
# 
# Si noti che i puntini i sono il primo argomento e tutti gli altri argomenti dopo
# i puntini hanno valori predefiniti. Questa è una regola rigorosa nella programmazione R: tutti
# gli argomenti dopo i puntini devono avere valori predefiniti. Dai un'occhiata alla
# seguente funzione simon_says:
# 
# simon_says <- function(...){
#   paste("Simon says:", ...)
# }
# 
# La funzione simon_says funziona proprio come la funzione paste, tranne che 
# l'inizio di ogni stringa è preceduto dalla stringa "Simon dice:"
# 
# I telegrammi erano costellati dalle parole START e STOP per 
# demarcare l'inizio e la fine delle frasi. Scrivi una funzione di seguito chiamata
# telegramma che forma frasi per telegrammi.
# Ad esempio l'espressione `telegram("Buon","giorno")` dovrebbe dare:
#   "START Buon giorno STOP"

telegram <- function(...){
  
}