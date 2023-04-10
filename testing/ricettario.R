# 2do ricettario

# crea un data.frame di esempio
mydata <- data.frame(col1 = c(4, 2, 1, 3), col2 = c("A", "B", "C", "D"))

# ordina la colonna "col1"
mydata$col1 <- sort(mydata$col1)

# visualizza il data.frame ordinato
mydata


# crea un data.frame di esempio
mydata <- data.frame(col1 = c(4, 2, 1, 3), col2 = c("A", "B", "C", "D"))

# ordina il data.frame in base alla colonna "col1"
mydata <- mydata[order(mydata$col1),]
