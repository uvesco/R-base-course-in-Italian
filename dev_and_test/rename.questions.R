# rinomina le domande di ciascuna lezione aggiungendo un numero progressivo all'inizio

library(yaml)
versionNum <- "3.0.1"

# Imposta il percorso della directory principale del corso
corso_dir <- getwd()
versionNum <- "3.0.0"

# estrazione dei nomi contratti dal file MANIFEST
manifest_file <- file.path(corso_dir, "MANIFEST")
nuoviNomiC <- readLines(manifest_file)

for (j in seq_along(nuoviNomiC)) {
  yaml_file <- file.path(corso_dir, nuoviNomiC[j], "lesson.yaml")
  file.copy(yaml_file,
            file.path(corso_dir, nuoviNomiC[j], "lesson_old2.yaml")
  )
  #numero di lezione
  numLess <- as.numeric(gsub("(.+?)(\\-.*)", "\\1", nuoviNomiC[j]))
  yaml <- read_yaml(yaml_file)
  yaml[[1]]$Version <- versionNum
  prog <- paste0(numLess, ".", 1:(length(yaml)-1)) # numero progressivo
  for(i in 2:length(yaml)){
      if(# se c'è un numero prima della prima occorrenza del trattino
        !is.na(as.numeric(gsub("(.+?)(\\-.*)", "\\1", yaml[[i]]$Output)))){
        # elimina la parte prima del primo - se è un numero
        yaml[[i]]$Output <- sub(".*?-", '', yaml[[i]]$Output)
      }
    yaml[[i]]$Output <- paste0(prog[i-1], "-", yaml[[i]]$Output)
  }
  
  write_yaml(yaml, yaml_file)
}
# 
# 
# # elimina eventuali numeri progressivi
# nuoviNomiC <- vecchiNomiC
# for(i in seq_along(nuoviNomiC)){
#   if(# se c'è un numero prima della prima occorrenza del trattino
#     !is.na(as.numeric(gsub("(.+?)(\\-.*)", "\\1", nuoviNomiC[i])))){
#     # elimina la parte prima del primo
#     nuoviNomiC[i] <- sub(".*?-", '', nuoviNomiC[i])
#   }
# }
# 
# #aggiunge nuovi progressivi con abbastanza 0 davanti per restare in ordine alfabetico
# lunghezzaNum <- floor(log10(length(nuoviNomiC))) + 1
# prog <- formatC(seq_along(nuoviNomiC), width = lunghezzaNum, format = "d", flag = "0")
# nuoviNomiC <- paste0(prog, "-", nuoviNomiC)