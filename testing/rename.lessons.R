# rinomina le lezioni aggiungendo un numero progressivo all'inizio
# se alcune sono già numerate vengono rinumerate in base all'ordine di MANIFEST

library(yaml)

# Imposta il percorso della directory principale del corso
corso_dir <- getwd()
versionNum <- "3.0.0"

# estrazione dei vecchi nomi contratti dal fine MANIFEST
manifest_file <- file.path(corso_dir, "MANIFEST")
vecchiNomiC <- readLines(manifest_file)


# elimina eventuali numeri progressivi
nuoviNomiC <- vecchiNomiC
for(i in seq_along(nuoviNomiC)){
  if(# se c'è un numero prima della prima occorrenza del trattino
    !is.na(as.numeric(gsub("(.+?)(\\-.*)", "\\1", nuoviNomiC[i])))){
    # elimina la parte prima del primo
    nuoviNomiC[i] <- sub(".*?-", '', nuoviNomiC[i])
  }
}

#aggiunge nuovi progressivi con abbastanza 0 davanti per restare in ordine alfabetico
lunghezzaNum <- floor(log10(length(nuoviNomiC))) + 1
prog <- formatC(seq_along(nuoviNomiC), width = lunghezzaNum, format = "d", flag = "0")
nuoviNomiC <- paste0(prog, "-", nuoviNomiC)

# Rinomina le directory delle lezioni
for (i in seq_along(nuoviNomiC)) {
  file.rename(from = file.path(corso_dir, vecchiNomiC[i]), 
              to = file.path(corso_dir, nuoviNomiC[i]))
}

# Modifica i titoli nel file YAML di ogni lezione
# modifica il nome del corso
nomeCorso <- basename(corso_dir)
for (lezione in nuoviNomiC) {
  yaml_file <- file.path(corso_dir, lezione, "lesson.yaml")
  file.copy(yaml_file,
            file.path(corso_dir, lezione, "lesson_old.yaml")
            )
  yaml <- read_yaml(yaml_file)
  yaml[[1]]$Lesson <- gsub("_", " ", lezione) # sostituisce gli underscore con spazi
  yaml[[1]]$Course <- gsub("-", " ", basename(corso_dir)) # sostituisce gli hyphen con spazi
  yaml[[1]]$Organization <- "Unaapi"
  yaml[[1]]$Version <- versionNum
  write_yaml(yaml, yaml_file)
}

# Modifica il file MANIFEST
writeLines(nuoviNomiC, manifest_file)
