// use this inside page.header
#import "../metadata.typ": meta

#locate(loc => {
  set text(font: "Latin Modern Mono", size: 10pt)
  show: block.with(
    stroke: (bottom: 1pt),
    inset: (bottom: 0.5em),
  )

  // skip first page header
  if loc.page() == 1 {
    return
  }

  stack(
    dir: ltr,
    image("hcmut.png", height: 2.5em),
    0.5cm,
    align(
      horizon,
      stack(
        dir: ttb,
        upper("Trường Đại học Bách Khoa - ĐHQG-HCM"),
        0.75em,
        upper("Khoa Khoa học và Kỹ thuật Máy tính"),
      )
    ),
    1fr,
  )
})