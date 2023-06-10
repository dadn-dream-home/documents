// manually update this
#let number-of-use-cases = 8

#let i = 1
#while (i <= number-of-use-cases) [
    // pad left i with 0
    #let file-name = str(i)
    #if (i < 10) {
        file-name = "0" + file-name
    }
    #if (i < 100) {
        file-name = "0" + file-name
    }
    #{ i = i + 1 }


]