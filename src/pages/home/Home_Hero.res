open AncestorSpacy

@react.component
let make = (~children) => {
  <Stack alignItems=[xs(#center)] gap=[xs(#one(2.0))]> children </Stack>
}

module Title = {
  @react.component
  let make = () => {
    <Typography
      tag=#h1
      m=[xs(0.0)]
      fontSize=[xs(4.2->#rem)]
      fontWeight=[xs(#700)]
      color=[xs(#primary700)]
      letterSpacing=[xs(-0.055->#em)]
      textAlign=[xs(#center)]>
      {`Stay curious.`->React.string}
    </Typography>
  }
}

module Text = {
  @react.component
  let make = () => {
    <Typography
      tag=#p
      m=[xs(0.0)]
      textAlign=[xs(#center)]
      color=[xs(#primary300)]
      fontSize=[xs(2.4->#rem)]
      fontWeight=[xs(#400)]
      letterSpacing=[xs(-0.035->#em)]
      lineHeight=[xs(3.4->#rem)]>
      {`Discover stories, thinking, and expertise from writers on any topic.`->React.string}
    </Typography>
  }
}
