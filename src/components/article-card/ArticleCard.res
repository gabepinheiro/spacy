open AncestorSpacy

module Styles = {
  open Emotion

  let card = css({
    "background": Theme.colors(#primary200)->Polished.transparentize(0.7, _),
    "padding": Theme.spacing(4.0),
    "borderRadius": 2,
    "transition": "200ms background-color",
    "willChange": "background-color",
    "&:hover": {
      "transition": "200ms background-color",
      "background": Theme.colors(#primary200)->Polished.transparentize(0.5, _),
    },
  })
}

module Metadata = {
  @react.component
  let make = (~children) => {
    <Typography fontSize=[xs(1.4->#rem)] fontWeight=[xs(#700)] color=[xs(#primary700)]>
      {children->React.string}
    </Typography>
  }
}

@react.component
let make = (~title, ~description, ~authorName, ~published, ~readingTime) => {
  <Stack className=Styles.card gap=[xs(#one(3.0))]>
    <Stack gap=[xs(#one(1.0))]>
      <Typography
        tag=#p
        fontSize=[xs(2.2->#rem)]
        fontWeight=[xs(#700)]
        letterSpacing=[xs(-0.04->#em)]
        color=[xs(#primary700)]
        m=[xs(0.0)]>
        {title->React.string}
      </Typography>
      <Typography
        tag=#p
        fontSize=[xs(1.4->#rem)]
        fontWeight=[xs(#400)]
        letterSpacing=[xs(-0.04->#em)]
        color=[xs(#primary300)]
        m=[xs(0.0)]>
        {description->React.string}
      </Typography>
    </Stack>
    <Stack
      direction=[xs(#horizontal)] alignItems=[xs(#center)] justifyContent=[xs(#"space-between")]>
      <ProfileName name=authorName size=#md />
      <Stack
        direction=[xs(#horizontal)]
        justifyContent=[xs(#"space-between")]
        alignItems=[xs(#center)]
        gap=[xs(#one(1.0))]>
        <Metadata> {`${readingTime->Belt.Int.toString}min`} </Metadata>
        <Typography
          tag=#span fontSize=[xs(1.4->#rem)] fontWeight=[xs(#700)] color=[xs(#primary200)]>
          {`//`->React.string}
        </Typography>
        <Metadata> {published} </Metadata>
      </Stack>
    </Stack>
  </Stack>
}
