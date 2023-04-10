# Esploriamo come "spacchettare" gli argomenti dai puntini quando usi i puntini
# come argomento in una funzione. Di seguito abbiamo una funzione di esempio che
# dovrebbe aggiungere due argomenti esplicitamente chiamati chiamati Alpha e Beta.
# 
# add_alpha_and_beta <- function(...){
#   # Innanzitutto dobbiamo catturare i puntini all'interno di una lista
#   # e quindi assegnare la lista a una variabile. Chiamiamo questa
#   # variabile `args`.
#   
#   args <- list(...)
# 
# 
# # Ora supponiamo che ci siano due argomenti nominati all'interno di args
# # con i nomi `alpha` e `beta`. Possiamo estrarre gli argomenti nominati
# # dalla lista args usando il nome dell'argomento e le doppie parentesi. 
# # La variabile `args` è solo una normale lista dopo tutto!
# 
#   alpha <- args[["alpha"]]
#   beta  <- args[["beta"]]
#   
#                
# # Quindi otteniamo la somma di alpha e beta.
#                
#   alpha + beta
# }
# 
# Hai mai giocato a Mad Libs finora? (un gioco di parole inventato nel 1958 NdT) 
# La funzione seguente costruirà una frase da parti da parti del discorso che fornirai
# come argomenti. Scriveremo di più della funzione, ma dovrai spacchettare gli argomenti 
# appropriati dai puntini.

mad_libs <- function(...){
  # Spacchetta gli argomenti qui!
  
  # Non modificare nessun codice sotto questo commento.
  # Fai attenzione alle variabili che dovrai creare perché il codice qui sotto funzioni!
  paste("News from", place, "today where", adjective, "students took to the streets in protest of the new", noun, "being installed on campus.")
}
