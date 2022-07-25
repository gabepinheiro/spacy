open AncestorSpacy

type size = [#sm | #md]

module Styles = {
  let button = (~size) => Emotion.css({
    "height": switch size {
    | #sm => "42px"
    | #md => "52px"
    },
    "fontSize": switch size {
    | #sm => "14px"
    | #md => "16px"
    },
    "border": 0,
    "backgroundColor": "#000",
    "color": "#fff"
  })
}

@react.component
let make = (~label="Click here", ~size: size=#sm) => {
  <Base
    tag=#button
    className=Styles.button(~size)
  >
    {label->React.string}
  </Base>
}
