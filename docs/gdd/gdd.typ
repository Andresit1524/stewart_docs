#import "style.typ": *
#import "snippets.typ": *
#show: style
// #show: dark


#cover([
  = Stewart
  == GDD del proyecto

  === Desarrollado por Stewart DevTeam
  - Hayran Andrés López
  - Alex Chinome Quemba (Alexia Hyena)
  - Luna Isabel Maldonado
  - Becker Tomala
  - Daniel Alejandro Durán (Wolfy Élite)

  === Otros contribuidores (retirados)
  - Carlos Samuel Ariza
  - Thomas Gómez González
  - Santiago Manjarres Vargas

  #v(1fr)
])

#outline(title: "Tabla de contenidos")

// Temporal: le pone saltos de línea a los títulos
#show heading.where(level: 1): it => {
  pagebreak(weak: true)

  align(center)[#it]
}

= Datos generales
Stewart es un RPG de aventura, fantasía ligera y comedia que busca combinar estética medieval, furry y elementos de la cultura colombiana. Está dirigido a un público adolescente y adulto (+13), especialmente a quienes tienen afinidad hacia la subcultura furry, aunque no aliena a los demás. Para las personas que conocen y aman Undertale y/o Deltarune, también les parecerá una experiencia muy familiar.

Se encuentra actualmente en una etapa temprana de desarrollo. Plantea tener 7 capítulos, pero *solo desarrollaremos el primero por ahora*. La cantidad final de capítulos podría variar en el futuro.

== Plataformas
Planeamos que Stewart esté disponible principalmente para Windows, Linux (con Steam o de forma nativa), y si es posible en el futuro, consolas y probablemente dispositivos móviles.

Para ello, lo distribuiremos principalmente en Steam e itch.io, o en más sitios según el alcance que logremos.

== Herramientas
Para el desarrollo de Stewart usamos generalmente los siguientes programas

+ Godot como motor de videojuegos
+ Visual Studio Code para edición de código
+ GitHub para almacenar el proyecto
+ Notion para la gestión del proyecto
+ Pixieditor 2.x y Aseprite para pixel art
+ Ibispaint X, Sketchbook,  o Clip Studio Paint para el arte
+ FL Studio para la música y SFX

Por supuesto, el grupo está abierto al uso de otros programas, siempre y cuando no afecte de forma radical el flujo de trabajo actual. Además, optamos por el uso de software libre o gratuito y minimizar o *erradicar* el uso de IA.

= Diseño General
El diseño de Stewart gira en torno a la conexión con los personajes, la historia, así como la diversión como las mecánicas que ofrece. El objetivo es involucrar al jugador con la aventura, hacer que conozca sus personajes y conflictos y la pase bien en el proceso. Cada decisión y desenlace contribuye a una experiencia algo diferente, donde la pregunta central de la trama, _qué significa ser un verdadero caballero_, guía el viaje del jugador.

== Pilares de diseño
Stewart y su desarrollo se rigen por los siguientes pilares de diseño:

+ Una historia interesante, que sumerge al jugador en la aventura, los misterios y sus implicaciones.
+ Personajes entrañables y simpáticos en su mayoría, con los cuáles puedes llegar a empatizar y a conectarte, sentir que eres cercano con ellos.
+ Sus mecánicas de exploración y batalla y las dos vistas dedicadas a cada acción.

== Puntos de venta únicos (USPs)
Un USP que el juego posee es el sistema de *empatía*. Este sistema es una forma de recompensar la bondad y... batalla, en las acciones del jugador. Cuando el jugador da un golpe, lo recibe o espera en una batalla, la *empatía* sube en una barra en pantalla. Cuando llega a un umbral, se puede detener la batalla para actuar y poder darle fin a la misma, si se puede. Si no, continúa y sigue intentando. Es la forma pacífica de dar batalla, pero aún hay que pelear para llegar a este punto, o al menos moverse.

Otro es el *cambio de vista*. El modo top-down para exploración y el estilo horizontal para las batallas crean dos dinámicas que combinan bien, son divertidas y se prestan a los objetivos del juego, además de mantener el alcance del proyecto manejable.


= Diseño detallado

== Mecánicas
Las mecánicas de Stewart incluyen, entre otras y con el riesgo de ser inexactos:

+ Exploración del mundo a lo largo de un mapa y la historia que lo envuelve.
+ Batallas con otros personajes, con la posibilidad de una resolución pacífica que altera la forma de la historia.
+ Interacción con personajes,  ninguno más jugable por ahora.
+ Un único final con variaciones dependientes de las acciones del jugador.
+ Retos fuera de la batalla (puzzles, minijuegos y misiones secundarias).
+ Sistema de progresión basado en la exploración, la obtención de objetos, cumplimiento de misiones y la empatía.
+ Dos formas de vista: top-down y vista horizontal o de plataforma.
  + La vista top-down está orientada a explorar e interactuar con el mundo
  + En la vista horizontal se realizan las batallas

#figure(caption: "Boceto de las vistas")[
  #image("images/vistas.png", width: 75%)
]

#columns(2, gutter: 2em)[
  #figure(caption: "Vista top-down")[
    #image("images/vista_lateral.png")
  ]

  #colbreak()

  #figure(caption: "Vista horizontal")[
    #image("images/vista_top_down.png")
  ]
]

== Estilo artístico
El juego utiliza un estilo *pixel art*, plenamente en 2D y con el posible uso de técnicas como el *parallax*. También se evalúa la combinación de este estilo con ilustraciones, dependiendo del contexto y escenario.

== Escenario - mundo
El mundo en el que se desarrolla Stewart es un mundo con características medievales, conformado por 7 reinos. Cada uno simboliza un obstáculo, una lucha, una pregunta que le da sentido al viaje de Stewart y sus amigos, y además cada uno conforma cada capítulo.

Cada reino se inspira y se moldea con facetas de la naturaleza y sociedad colombianas, como se explica:.

+ *Candelaria:* el reino de la gran sabana y el lago. Es el reino donde viven los protagonistas y donde comienza la historia. Está inspirado en la Bogotá de los siglos XIX y XX.
+ *Rionegro:* el reino del valle, fértil, verde, pero conservador y rígido. Inspirado en la región andina.
+ *Bosque Sagrado:* una tierra selvática, profunda, llena de vida, tepuyes… y misticismo absurdo. Inspirado en la amazonía.
+ *Gazauta:* un reino flotante en la costa, plagado de cultura marina. Inspirado en la región Caribe.
+ *Tiberio:* es un reino desértico, árido, donde nada, ni nadie se desperdicia. Inspirado en la región caribe también..
+ *Altillo:* es el reino de las alturas, una zona montañosa, fría, donde sus habitantes se sienten superiores. Inspirado en los picos y nevados del país.
+ *Zipa:* es el reino subterráneo del Zipa, lleno de túneles y cuevas oscuras. Es el reino final de la aventura. En su superficie, es un páramo. Inspirado en la catedral de sal de Zipaquirá, y las cordilleras y páramos de Cundinamarca.

No todos los reinos están conectados de forma directa, y la forma en la que se recorren sigue en discusión. La dinámica de progresión busca repetir reinos y cambiar la experiencia a medida que avanza la historia.

== Historia

=== Capítulo 1
Tras una pesadilla confusa, Stewart, un sujeto de Candelaria y Zarah, una joven alquimista decidida a convertirse en la científica real del reino, terminan conociéndose por casualidad, y en medio de ello, descubren que Candelaria está acechada por la autoridad del sacerdote mayor, uno que amenaza con dominar al reino y sumirlo en el caos y la discordia.

En esta situación, Stewart decide hacer el rol de héroe para salvar a todos, y Zarah solo decide seguirlo. En el camino, no solo se conocerán mejor, sino que terminarán en una lucha para derrocar al sacerdote antes de que sea tarde.

Para cuando lo logren… terminarán expulsados del reino.

=== El resto
Pero nuestro grupo no se queda atrás. Ahora con Gabi en él, explorarán otros reinos en busca de las mismas aventuras que los unieron. Todo esto los termina llevando a la pregunta:

#quote(block: true)[
  *¿Qué significa ser un verdadero caballero?*
]

Zarah, Gabi y Stewart deciden embarcarse ahora en búsqueda de la respuesta. Sin embargo, su gesta se torna oscura: el Zipa, padre de Zarah y rey del reino subterráneo, ha estado orquestando todos los hechos, como una forma de traer a Zarah hacia él y hundirla en la oscuridad junto con él, para siempre.

Cuando los tres descubren esta verdad, es demasiado tarde. Ahora Zarah, sola, en la recta final de la historia, debe elegir entre la vida que vivió con Stewart o seguir a su padre hacia la oscuridad… El resto depende de eso.

== Interfaz
La interfaz es minimalista: No supone tener ninguna visible la mayoría del tiempo. Fuera de eso, la mayoría se basan en las interfaces de los diálogos y las de interacción. La interfaz puede incluir inventario, barras de vida o ítems. Pero estos no están en pantalla todo el tiempo. Las batallas también adoptan una interfaz diferente.

Respecto a controles, se busca usar flechas + botones varios, los menores posibles para concretar las acciones del juego. Si es juego es móvil, deben estar en pantalla. La idea es minimizar la interfaz y mantener al jugador enfocado en las acciones del juego y menos en componentes, estadísticas, etc.

== Música - sonido
La música va a ser situacional, transmitiendo el momento en el que nos encontramos. Además, la música va a ir tomando un tono cada vez más grave entre más avancemos. De modo que al inicio suene alegre, para que cuando nos acerquemos al final comience a sonar lúgubre, anunciando un mal presagio del desenlace de la historia.

== Ciclo del Juego (Game loop)
El ciclo general del juego es el siguiente.

#figure(caption: "Ciclo de juego")[
  #image("images/game_loop.png", width: 75%)
]

Mientras que el de las batallas es:

#figure(caption: "Ciclo de juego de las batallas")[
  #image("images/battle_loop.png", width: 75%)
]

== Progresión
La progresión de Stewart se basa en objetos y objetivos que desbloquean el mapa, así como subtramas. Cada reino es una subtrama o capítulo, con sus propios objetivos, jefes, dilemas e incluso historias. El juego se basa en conseguir objetos, seguir el camino y descubrir esos detalles que dan paso a lo venidero.

== Sistemas
El juego contiene los siguientes sistemas:

+ *Sistema de empatía:* a lo largo de una batalla, cuando recibes un golpe, lo asestas o simplemente aguantas, puedes esperar a que la empatía, un stat exclusivo de batalla, aumente. cuando pase de un umbral, puedes detener la batalla y hacer una acción (hablar, halagar, etc.) y ver si eso manda a buen término la pelea, como si fuera por turnos. Si no funciona, continúa la pelea.
+ *Obtención de objetos:* las batallas e interacciones proporcionan principalmente objetos. Estos pueden ser armaduras, comida o artículos, los cuales son herramientas para después. Los objetos los puedes gestionar en tu inventario.
+ *Progresión:* la progresión del juego valora los objetos clave y los objetivos alcanzados para decidir cómo se desbloquea el mapa y cómo reacciona el mundo.
+ *No hay sistemas de puntaje explícitos*, como rankings o niveles de poder. Estos no aportan a las dinámicas del juego y son algo “genéricas” en la mayoría de casos. La empatía, la salud de los personajes y el sistema de monetario que pueda haber son excepciones a esto

= Referencias
Las principales influencias de Stewart en su desarrollo, ordenadas por mayor influencia, son:

== Deltarune
#columns(2)[
  #figure(caption: "Deltarune (Capítulo 4)")[
    #image("images/deltarune.png")
  ]

  Es referente en cuanto a diseño visual (pixel art), música, uso de la misma como forma de la narrativa y estilo general. También es inspiración para algunos personajes, componentes de la trama, entre otros. Es nuestro principal referente actual, especialmente porque es un videojuego también.

  #colbreak()

  + El estilo pixel art de Stewart planea ser similar al de Deltarune.
  + Las mecánicas de batalla de Deltarune pueden ser aplicables a Stewart. Mira el sistema de empatía.
  + El diseño por capítulos y las subtramas por cada uno también son aplicables a la narrativa del juego.
]

== Las heroicas aventuras del valiente príncipe Ivandoe
#columns(2)[

  #figure(caption: "Ivandoe (arte externo a la serie)")[
    #image("images/ivandoe.jpg")
  ]

  The Heroic Quest of The Valiant Prince Ivandoe es una serie animada infantil desarrollada por Cartoon Network entre 2018 y 2024, que muestra las aventuras de Ivandoe y Bert, quienes van en busca de la pluma dorada como parte de una leyenda. La puedes ver en *HBO Max*.

  #colbreak()

  Fue la inspiración inicial del proyecto, y una de las más importantes. De aquí provienen algunos personajes, componentes de la trama y dinámicas.
]

#pagebreak()

== Hollow Knight: Silksong
#columns(2)[
  #figure(caption: "Gran madre seda, en el Acto 2")[
    #image("images/silksong.png")
  ]

  #colbreak()

  La atmósfera inmersiva, el estilo visual, la música y las dinámicas de batalla son los principales componentes que nos inspiran de este juego. El integrar las batallas como son comunes en los juegos plataformeros, es principalmente nuestra causa de inspiración.
]

== Billie Bust Up!
#columns(2)[

  #figure(caption: "Billie Bust Up! (arte promocional)")[
    #image("images/bbu.jpg")
  ]

  Billie Bust Up! es un juego de plataformas 3D inspirado en los musicales de Disney, que contrasta su profundidad y tono oscuro con su estética tierna y dinámica al ritmo de la música. Es desarrollado por Giddy Goat Games y está en fase beta actualmente.

  #colbreak()

  Es parte de nuestra  inspiración especialmente por el contraste entre trama y estética, su estilo de juego y batalla, y por su diseño visual. Si bien Stewart no es un juego musical ni en 3D, puede beneficiarse de estos aspectos.
]

= Anexos y adicionales
Imágenes y concept art
Imágenes ya diseñadas del juego, que son mejor referencia de lo que va a contener y ya contiene ahora.

#figure(caption: "Boceto de los 9 reinos (ahora son 7)")[
  #image("images/mapa.png", width: 50%)
]




#figure(caption: "Concept art de Stewart, Gabi y Zarah respectivamente. Al final se pretende que todos sean pixel art")[
  #columns(3)[
    #image("images/stewart.png", width: 80%)
    #colbreak()
    #image("images/gabi.png", width: 80%)
    #colbreak()
    #image("images/zarah.png", width: 80%)
  ]
]

== Notas
1. Al ser un GDD en constante cambio, hay muchos componentes que no están claros o pueden cambiar fácilmente. Por ejemplo diseños de personaje, adición de referentes o mecánicas nuevas.
2. El uso de IA no nos parece muy adecuado para los componentes creativos del juego, aunque no lo consideramos inherentemente malo o prohibitivo. Aún así ha sido parte significativa del proceso técnico y de desarrollo del juego… hasta ahora.
