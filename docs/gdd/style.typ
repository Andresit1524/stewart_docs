#let style(project) = {
  set text(font: "Lato", size: 11pt, lang: "es")

  // Títulos
  show heading: set block(above: 1.5em, below: 1em)
  show heading.where(level: 1): set text(1.3em)

  // Listas
  set enum(indent: 1em)
  set list(indent: 1em)

  project
}

// Modo oscuro
#let dark(project) = {
  set page(fill: rgb(31, 31, 31))
  set text(fill: rgb(204, 204, 204))

  project
}

/// Callout. recuadro redondeado y con relleno opcional para lo que contenga.
#let callout(color: rgb("#ffffff00"), body) = rect(
  width: 100%,
  fill: color,
  stroke: 1pt,
  radius: 1em,
  inset: 1em,
  body,
)
