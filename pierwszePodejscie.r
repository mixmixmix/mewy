mewy <- read.csv(file="mewy.csv", header=TRUE, sep=",")


for (numerWierszyka in 1:nrow(mewy)){#for every row
    imie <- mewy[c(1)][numerWierszyka,]
    rok <- mewy[c(2)][numerWierszyka,]

    resultat <- sum(mewy[c(3:ncol(mewy))][numerWierszyka,], na.rm=T)
    
    for (mojaWartosc in mewy[c(3:ncol(mewy))][numerWierszyka,]){
        if (is.na(mojaWartosc)==FALSE) {
            pierwszaInkubacja = mojaWartosc
            break
        }
    }
    procencik = pierwszaInkubacja/resultat
    print(sprintf("%s,%s,%d,%d,%f", imie,rok,pierwszaInkubacja,resultat,procencik))
    #TODO: instead of printing to screen write into a new dataframe
}

