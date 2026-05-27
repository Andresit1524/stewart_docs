#import "@preview/cmarker:0.1.1"
#set text(font: "Lato")

= Ejemplo de PDF
Este es un ejemplo de PDF, generado con typst. ¿Funciona? ¿Lo puedes leer en el navegador? Enhorabuena.

Por cierto, esta es la licencia de la documentación. Leido directo desde el archivo en este repositorio.

#rect(width: 100%, radius: 1em, inset: 1em)[
  #raw(read("../LICENSE"))
]
