open AncestorSpacy

type size = [#md | #lg]

module Styles = {
  open Theme

  let button = (~size: size, ~block) => {
    let transition = `200ms background-color, 150ms box-shadow`
    Emotion.css({
      "minWidth": 124,
      "width": block ? "100%" : "auto",
      "height": switch size {
      | #md => "32px"
      | #lg => "42px"
      },
      "fontSize": switch size {
      | #md => "1.6rem"
      | #lg => "1.8rem"
      },
      "lineHeight": switch size {
      | #md => "2.1rem"
      | #lg => "2.3rem"
      },
      "padding": `0 ${Theme.spacing(1.5)}`,
      "borderRadius": Theme.radius(0.25),
      "letterSpacing": "-0.055em",
      "fontFamily": Theme.Constants.fontFamily,
      "fontWeight": 700,
      "border": 0,
      "color": #primary100->colors,
      "backgroundColor": #primary700->colors,
      "cursor": "pointer",
      "willChange": "background-color",
      "transition": transition,
      "outline": 0,
      "display": "flex",
      "alignItems": "center",
      "justifyContent": "center",
      "&:hover": {
        "transition": transition,
        "backgroundColor": #primary500->colors,
      },
      "&:disabled": {
        "opacity": 0.3,
        "cursor": "not-allowed",
      },
      "&:focus": {
        "boxShadow": `0px 0px 0px 2px #858585`,
        "transition": transition,
      },
    })
  }
}

@react.component
let make = React.forwardRef((
  ~label,
  ~loading=false,
  ~block=false,
  ~onClick=?,
  ~disabled=false,
  ~size: size=#lg,
  maybeRef,
) => {
  let spinnerSize = switch size {
  | #lg => #rem(2.0)
  | #md => #rem(1.6)
  }
  <Base
    className={Styles.button(~size, ~block)}
    ?onClick
    disabled
    tag=#button
    innerRef=?{maybeRef->Js.Nullable.toOption->Belt.Option.map(ReactDOM.Ref.domRef)}>
    {if loading {
      <Spinner size=spinnerSize color=#primary100 background=#primary100 />
    } else {
      label->React.string
    }}
  </Base>
})
