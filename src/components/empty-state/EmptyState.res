open AncestorSpacy

@react.component
let make = (~title, ~description) => {
  <Stack
    direction=[xs(#horizontal)]
    alignItems=[xs(#center)]
    justifyContent=[xs(#center)]
    gap=[xs(#one(4.0))]>
    <Next.Image src="/images/empty-state.svg" width=132.0 height=124.0 layout=#fixed />
    <Stack direction=[xs(#horizontal)] gap=[xs(#one(1.0))]>
      <Typography
        tag=#h1
        m=[xs(0.0)]
        textAlign=[xs(#center)]
        color=[xs(#primary700)]
        fontSize=[xs(2.4->#rem)]
        fontWeight=[xs(#700)]
        letterSpacing=[xs(-0.03->#em)]
        lineHeight=[xs(3.2->#rem)]>
        {title->React.string}
      </Typography>
      <Typography
        tag=#p
        m=[xs(0.0)]
        textAlign=[xs(#center)]
        color=[xs(#primary200)]
        fontSize=[xs(1.8->#rem)]
        fontWeight=[xs(#500)]
        letterSpacing=[xs(-0.03->#em)]
        lineHeight=[xs(2.4->#rem)]>
        {description->React.string}
      </Typography>
    </Stack>
  </Stack>
}
