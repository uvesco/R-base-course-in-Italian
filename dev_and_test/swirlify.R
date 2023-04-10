# comandi utili
library(swirlify)
pack_course(getwd())

# source("testing/automated_translate.R")

set_lesson()
test_lesson()
add_to_manifest()
demo_lesson()






find_questions("base")
demo_lesson(from = 6)
find_questions("") # trovare il numero di domanda di una particolare cercando nel testo
