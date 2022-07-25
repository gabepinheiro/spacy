open AncestorSpacy

type size = [#sm | #md]

module Styles = {
  open Theme

  let button = (~size) => Emotion.css({
    "height": switch size {
    | #sm => "42px"
    | #md => "52px"
    },
    "fontSize": switch size {
    | #sm => "14px"
    | #md => "16px"
    },
    "fontFamily": Theme.Constants.fontFamily,
    "border": 0,
    "backgroundColor": Colors.primary700->Colors.toString,
    "color": Colors.primary100->Colors.toString,
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
