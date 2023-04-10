# La sintassi per la creazione di nuovi operatori binari in R è diversa da qualsiasi altra cosa in
# R, ma ti consente di definire una nuova sintassi per la tua funzione. Il consiglio
# è di di creare il tuo operatore binario solo se hai intenzione di usarlo spesso!
#   
#   Gli operatori binari definiti dall'utente hanno la seguente sintassi:
#       %[Qualunque cosa]%
# dove [qualunque cosa] rappresenta qualsiasi nome variabile valido.
# 
# Supponiamo che io volessi definire un operatore binario che ha moltiplicasse due numeri e
# aggiungesse uno al prodotto. Un'implementazione di quell'operatore è questa di seguito:
# 
# "%mult_add_one%" <- function(left, right){ # Notare le virgolette!
#   left * right + 1
# }
# 
# Potrei quindi usare questo operatore binario come `4 %mult_add_one% 5` e darebbe 21.
# 
# Scrivi il tuo operatore binario di seguito da zero! Il tuo operatore binario deve 
# essere chiamato %p% in modo che l'espressione:
# 
#        "Buon" %p% "lavoro!"
# 
# Darà: "Buon lavoro!"

"%p%" <- function(left, right){ # Ricorda di aggiungere gli agomenti!
  paste(left, right)
}



