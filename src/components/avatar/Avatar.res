open AncestorSpacy

module Styles = {
  let roundedBorder = Emotion.css({
    "borderRadius": "50%",
    "fontFamily": Theme.Constants.fontFamily,
  })
}

@react.component
let make = (~name, ~size as baseSize: float=1.0) => {
  let firstletter = name->String.substring(~start=0, ~end=1)

  let size = #pxFloat(36.0 *. baseSize)
  let fontSize = #rem(1.8 *. baseSize)

  <Box
    display=[xs(#flex)]
    alignItems=[xs(#center)]
    justifyContent=[xs(#center)]
    width=[xs(size)]
    height=[xs(size)]
    bgColor=[xs(#primary700)]
    color=[xs(#primary100)]
    fontSize=[xs(fontSize)]
    fontWeight=[xs(#700)]
    className=Styles.roundedBorder>
    {firstletter->React.string}
  </Box>
}
