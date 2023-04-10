# rinomina le lezioni aggiungendo un numero progressivo all'inizio
# se alcune sono già numerate vengono rinumerate in base all'ordine di MANIFEST

library(yaml)

# Imposta il percorso della directory principale del corso
corso_dir <- getwd()


# estrazione dei vecchi nomi contratti dal file MANIFEST
manifest_file <- file.path(corso_dir, "MANIFEST")
nuoviNomiC <- readLines(manifest_file)

# elimina i files temporanei dalle lezioni

for (lezione in nuoviNomiC) {
  file.remove(
            file.path(corso_dir, lezione, "lesson_old.yaml")
  )
  file.remove(
    file.path(corso_dir, lezione, "lesson_old2.yaml")
  )
  file.remove(
    file.path(corso_dir, lezione, "lesson_en.yaml")
  )

}

