#import "@preview/ctheorems:1.1.3": *

#let sprout_colors = (
  orange: orange,
  yellow: rgb("#ffc000"),
  green: rgb("#385623"),
  light_gray: rgb("#e7e6e6"),
  dark_blue: rgb("#1f3864"),
  light_blue: rgb("#5b9bd5")
)

#let title_page(title: "Title", lecturer: "Lecturer", credit: none) = {
  set page(background: image("background_title.png"))
  set align(center + horizon)
  text([#title], size: 48pt, fill: sprout_colors.orange)
  parbreak()

  text([#lecturer], size: 24pt, fill: sprout_colors.yellow)
  linebreak()
  text([#credit], size: 24pt, fill: sprout_colors.yellow)
}

#let lemma = thmbox("lemma", "引理", fill: green.lighten(80%), inset: 1em).with(numbering: "1", base_level: 0)
#let definition = thmbox("definition", "定義", fill: yellow.lighten(80%), inset: 1em).with(numbering: "1", base_level: 0)
#let theorem = thmbox("theorem", "定理", fill: blue.lighten(80%), inset: 1em).with(numbering: "1", base_level: 0)
#let observation = thmbox("observation", "觀察", fill: orange.lighten(80%), inset: 1em).with(numbering: "1", base_level: 0)
#let corollary = thmbox("corollary", "推論", fill: gray.lighten(80%), inset: 1em).with(numbering: "1", base_level: 0)
#let proof = thmproof("proof", "證明").with(numbering: none, inset: 0em)

#let problem(title: none, source: none, body) = {
  block(
    width: 100%,
    fill: blue.lighten(80%),
    inset: 0.5cm,
    [
      *例題* #title #h(1fr) #source

      #body
    ]
  )
}
#let exercise(title: none, source: none, body) = {
  block(
    width: 100%,
    fill: orange.lighten(80%),
    inset: 0.5cm,
    [
      *習題* #title #h(1fr) #source

      #body
    ]
  )
}

#let sprout_slides(
  doc
) = {
  set text(size: 20pt, font: ("Noto Sans CJK TC"))
  show raw: set text(font: "Noto Mono")
  set page(paper: "presentation-16-9", margin: (bottom: 1cm))
  set par(leading: 1.0 * 0.65em)
  show link: it => text(it, fill: sprout_colors.light_blue)

  let slidepage(title) = {
    pagebreak()
    place(top + left, dx: 2.2cm, dy: -1cm, {
      block(
        fill: sprout_colors.light_gray.transparentize(60%), 
        width: 15cm, 
        height: 2.2cm, 
        inset: 8pt, 
        [
          #set align(horizon + center)
          #set text(size: 28pt, fill: sprout_colors.dark_blue)
          #title
        ]
      )
    })
    v(2cm)
  }
  show heading.where(level: 2): it => {
    slidepage(it)
    v(0.3em)
  }
  let section_title(title) = {
    pagebreak()
    set align(center + horizon)
    set text(size: 30pt, weight: "bold", fill: sprout_colors.orange)
    [#title]
  }
  show heading.where(level: 1): it => {
    section_title(it)
  }

  let text_color = sprout_colors.green
  set page(background: image("background_normal.png"))
  set text(fill: text_color)
  show: thmrules

  doc
}