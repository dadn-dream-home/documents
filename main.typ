#import "metadata.typ": meta

#set document(author: meta.students.values(), title: meta.title)
#set page(
  header: include "template/header.typ",
  footer: include "template/footer.typ",
  margin: (
    top: 30mm,
    bottom: 20mm,
    left: 30mm,
    right: 20mm,
  )
)
#set text(font: "LM Roman 10", lang: "vi", region: "VN")
#set heading(numbering: "1.1")
#show heading: it => block(inset: (top: 1em, bottom: .5em), it)
#set par(leading: 1.1em)

#include "template/cover.typ"

#pagebreak()

#outline(
  title: "Mục lục",
  depth: 3,
  indent: true
)

#pagebreak()

#set par(justify: true)
#show par: set block(spacing: 2em)

#include "contents/index.typ"
