#let cover(body) = {
  show heading.where(level: 1): set text(2em)
  show heading.where(level: 2): set text(1.5em)
  show heading.where(level: 3): set text(1.3em)
  show heading.where(level: 1): set block(above: 0pt, below: .5em)
  show heading.where(level: 2): set block(above: 0pt, below: 1.5em)
  show heading.where(level: 3): set block(above: 2em)

  v(1fr)

  body

  v(1fr)

  pagebreak()
}
