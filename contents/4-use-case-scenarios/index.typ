= Use-case scenarios

#let use-cases = {
    // manually update this
    let number-of-use-cases = 8
    let i = 1
    let use-cases = (:)
    while (i <= number-of-use-cases) {
        // pad left i with 0
        let file-name = str(i)
        if (i < 10) {
            file-name = "0" + file-name
        }
        if (i < 100) {
            file-name = "0" + file-name
        }
        i = i + 1
        let use-case = yaml("../../use-cases/" + file-name + ".yml")
        use-cases.insert(file-name, use-case)
    }
    use-cases
}

Danh sách use case:

#for (filename, use-case) in use-cases [
    - UC#filename #sym.dot #use-case.name (#ref(label("fig:UC" + filename)))
]

#for (filename, use-case) in use-cases [
    == UC#filename #sym.dot #use-case.name
    #let eval-content = s => eval("[" + s + "]")

    #figure(
        align(left, table(
            columns: (auto, 1fr),
            inset: 8pt,
            stroke: gray + .5pt,
            // [*Use case*], [*#eval-content(use-case.name)*],
            [*Author*], eval-content(use-case.author),
            [*Date*], eval-content(use-case.date),
            [*Description*], eval-content(use-case.description),
            [*Actor*], eval-content(use-case.actor),
            [*Trigger*], eval-content(use-case.trigger),
            [*Pre-condition*], eval-content(use-case.precondition),
            [*Post-condition*], eval-content(use-case.postcondition),
            [*Normal flow*], eval-content(use-case.normal-flow),
            [*Alternative flow*], eval-content(use-case.alternative-flow),
            [*Exception flow*], eval-content(use-case.exception-flow),
        )),
        caption: [UC#filename #sym.dot #use-case.name],
    ) #label("fig:UC" + filename)
]