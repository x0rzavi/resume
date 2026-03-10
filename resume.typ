#let resume(
  name: "",
  phone: "",
  email: "",
  website: "",
  github: "",
  linkedin: "",
  info-pos: left,
  image-path: "",
  image-width: 0mm,
  font: "New Computer Modern",
  font-size: 10pt,
  accent: rgb("#023e7d"),
  doc,
) = {
  set document(author: name, title: name)

  set page(
    margin: 0.5in,
    paper: "a4",
  )

  set text(
    font: font,
    size: font-size,
    ligatures: false,
  )

  show heading: set text(
    fill: accent,
  )

  show heading.where(level: 1): set text(
    size: font-size * 2.2,
    weight: "medium",
  )
  show heading.where(level: 1): set align(info-pos)

  show heading.where(level: 2): set text(
    size: font-size * 1.4,
    weight: "medium",
  )
  show heading.where(level: 2): it => block(below: 0.6em, above: 1.2em)[
    #stack(
      spacing: 0.3em,
      smallcaps(it),
      line(
        length: 100%,
        stroke: 0.6pt,
      ),
    )
  ]

  show link: set text(
    fill: accent,
  )

  let info = {
    show link: underline

    let item(value, prefix: "") = {
      if value != "" {
        if prefix != "" {
          box(link(prefix + value)[#value])
        } else {
          value
        }
      }
    }
    let filtered = (
      item(phone),
      item(email, prefix: "mailto:"),
      item(website, prefix: "https://"),
      item(github, prefix: "https://"),
      item(linkedin, prefix: "https://"),
    ).filter(x => x != none)

    let offset = if info-pos == left { 30mm * 2 } else { 0mm }
    layout(size => context {
      let full-line = filtered.join(" | ")
      if measure(full-line).width + offset <= size.width {
        full-line
      } else {
        let mid = calc.ceil(filtered.len() / 2)
        stack(
          spacing: 0.8em,
          filtered.slice(0, mid).join(" | "),
          filtered.slice(mid).join(" | "),
        )
      }
    })
  }

  if info-pos == left {
    if image-path != "" {
      pad(top: 2.5em)[= #name]
      place(
        top + right,
        image(image-path, width: 30mm),
      )
    } else {
      [= #name]
    }
    pad(top: 0.6em, bottom: 1.5em)[
      #align(info-pos)[#info]
    ]
  } else if info-pos == center {
    [= #name]
    pad(top: 0.2em)[
      #align(info-pos)[#info]
    ]
  }

  set par(justify: true)

  doc
}

#let grid-2x2(
  top-left: "",
  top-right: "",
  bottom-left: "",
  bottom-right: "",
) = {
  [
    #top-left #h(1fr) #top-right \
    #bottom-left #h(1fr) #bottom-right
  ]
}

#let grid-1x2(
  left: "",
  right: "",
) = {
  [
    #left #h(1fr) #right
  ]
}

#let education(
  institution: "",
  location: "",
  degree: "",
  completion-date: "",
  gpa: "",
) = {
  block(inset: (left: 0.5em, right: 0.5em))[
    #grid-2x2(
      top-left: strong(institution),
      top-right: location,
      bottom-left: emph(degree),
      bottom-right: emph(completion-date),
    )
  ]
}

#let project(
  name: "",
  techstack: (),
  timeline: "",
  url: "",
  description: (),
) = {
  block(inset: (left: 0.5em, right: 0.5em))[
    #grid-1x2(
      left: link(url)[#strong(name)] + " | " + emph(techstack.join(", ")),
      right: timeline,
    )
    #list(..description)]
}

#let achievement(
  name: "",
  date: "",
  url: "",
  description: (),
) = {
  block(inset: (left: 0.5em, right: 0.5em))[
    #grid-1x2(
      left: link(url)[#strong(name)],
      right: date,
    )
    #list(..description)
  ]
}

#let skill(
  category: "",
  items: (),
) = {
  block(
    inset: (left: 0.5em, right: 0.5em),
    above: 0.6em,
    below: 0.6em,
  )[#strong(
      category + ":",
    ) #items.join(", ")]
}

#let format-date(start-date, end-date) = {
  start-date + " " + $dash.en$ + " " + end-date
}
