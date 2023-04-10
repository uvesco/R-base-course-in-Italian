### script per installare l'ultima versione del corso ###

# controlla se il pacchetto swirl è installato e se non lo è lo installa
if(!require(swirl)){
  install.packages("swirl")
}
# carica il pacchetto swirl dal repository CRAN
library(swirl)
# disinstalla il corso se già installato
uninstall_course("R-base-course-in-Italian")
# installa l'ultima versione del corso dal repository personale di U Vesco
install_course_github("uvesco", "R-base-course-in-Italian")
