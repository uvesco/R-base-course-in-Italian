library(yaml)
#library(deeplr)
library(googleLanguageR)
gl_auth("testing/lunar-tube-209113-5a6565e665e7.json")

#deeplapi <- "f26a043b-93a3-cc4f-7dc7-e85638d86cbb:fx"

dirLesson <- rstudioapi::selectDirectory(caption = "Select Directory",
                                         label = "Select")

ylist <- yaml.load_file(file.path(dirLesson, "lesson.yaml"))

file.rename(file.path(dirLesson, "lesson.yaml"), file.path(dirLesson, "lesson_en.yaml"))



yvec_output <- as.vector(rep(NA, length(ylist)))

for(i in 1:length(ylist)){
  if(!is.null(ylist[[i]]$Output)){
    yvec_output[i] <- ylist[[i]]$Output
  }
}

yvec_hint <- as.vector(rep(NA, length(ylist)))
for(i in 1:length(ylist)){
  if(!is.null(ylist[[i]]$Hint)){
    yvec_hint[i] <- ylist[[i]]$Hint
  }
}

output_it <- gl_translate(
  yvec_output,
  target = "it",
  format = "text",
  source = "",
  model = c("nmt", "base")
)

hint_it <- gl_translate(
  yvec_hint,
  target = "it",
  format = "text",
  source = "",
  model = c("nmt", "base")
)

ylist2 <-ylist
for(i in 1:length(ylist)){
  if(!is.na(hint_it$text[i])){
    ylist2[[i]]$Hint <- hint_it$translatedText[i]
  }
}

for(i in 1:length(ylist)){
  if(!is.na(output_it$text[i])){
    ylist2[[i]]$Output <- output_it$translatedText[i]
  }
}

write_yaml(ylist2, file.path(dirLesson, "lesson.yaml"))
