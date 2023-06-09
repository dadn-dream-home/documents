#import "../metadata.typ": meta

#stack(
  dir: ttb,
  {
    set align(center)
    show text: it => upper(it)
    stack(
      dir: ttb,
      spacing: 1.2em,
      [Đại học Quốc gia Thành phố Hồ Chí Minh],
      [Trường Đại học Bách Khoa],
      text(weight: "bold")[Khoa Khoa học và Kỹ thuật Máy tính]
    )
  },
  1.5cm,
  align(center, image("hcmut.png", height: 3cm)),
  1.5cm,
  stack(
    dir: ttb,
    text(weight: "bold", size: 15pt)[
      #meta.course-name - #meta.course-id
    ],
    1cm,
    block(width: 100%, inset: (y: 2em), stroke: (y: 1pt))[
      #set text(weight: "bold", size: 14pt)
      Báo cáo

      #set align(center)
      #set par(leading: 1em)
      #set text(size: 18pt)

      #upper(meta.title)
    ]
  ),
  1cm,
  grid(
    columns: (1fr, 1fr),
    rows: (2em, auto),
    column-gutter: .5cm,
    align(right, text(style: "italic")[Giảng viên hướng dẫn:]), meta.advisor,
    align(right, text(style: "italic")[Sinh viên thực hiện:]), stack(
      dir: ttb,
      spacing: 1em,
      ..meta.students.pairs().map((pair) => [#pair.at(0) - #pair.at(1)])
    ),
  ),
  1fr,
  align(center)[TP. Hồ Chí Minh, #meta.date]
)