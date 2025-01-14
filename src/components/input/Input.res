open AncestorSpacy

module Styles = {
  open Emotion
  open Theme

  let input = (~error) =>
    css({
      "height": 42,
      "padding": `0 ${Theme.spacing(2.0)}`,
      "fontFamily": Theme.Constants.fontFamily,
      "fontSize": `1.8rem`,
      "letterSpacing": "-0.02em",
      "fontWeight": 500,
      "backgroundColor": Polished.transparentize(0.92, #primary600->colors),
      "border": 0,
      "outline": 0,
      "borderRadius": radius(0.5),
      "color": switch error {
      | None => #primary600->colors
      | Some(_) => #red->colors
      },
      "&::placeholder": {
        "color": #primary300->colors,
      },
      "&:disabled": {
        "opacity": 0.7,
        "cursor": "not-allowed",
      },
    })

  let error = css({
    "color": #red->colors,
    "fontSize": `1.2rem`,
    "fontFamily": Constants.fontFamily,
    "fontWeight": 500,
    "letterSpacing": `-0.02em`,
  })
}

@react.component
let make = (
  ~value=?,
  ~autoFocus=?,
  ~placeholder=?,
  ~onChange=?,
  ~type_=?,
  ~disabled=false,
  ~error: option<string>=?,
) => {
  <Stack gap=[xs(#one(1.0))]>
    <Base
      className={Styles.input(~error)}
      tag=#input
      ?autoFocus
      ?value
      ?placeholder
      ?onChange
      ?type_
      disabled
    />
    {switch error {
    | None => React.null
    | Some(message) => <Base tag=#span className=Styles.error> {message->React.string} </Base>
    }}
  </Stack>
}
