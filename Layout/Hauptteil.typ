#let hauptteil(body) = {

  set heading(numbering: "1.1")

  counter(page).update(0)
  set page(
    numbering: "1",
    number-align: right,
    header: [
      #context {
        let selector = heading.where(level:1).before(here())
        let level = counter(selector)
        let headings = query(selector)

        if headings.len() == 0 {
          return
        }

        let next-heading = query(heading.where(level:1).after(here())).first()
        let current-heading = headings.last()

        if current-heading.numbering == none {
          return
        }

        if counter(page).at(next-heading.location()) == counter(page).get() {
          return
        }

        
        align(right)[
          #level.display(current-heading.numbering)
          #h(0.3em)
          #current-heading.body
        ]
    
        line(length: 100%)
      }
    ],
  )

  body
}