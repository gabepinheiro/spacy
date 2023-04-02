open AncestorSpacy

@react.component
let make = () => {
  <Stack
    tag=#header
    width=[xs(100.0->#pct)]
    direction=[xs(#horizontal)]
    justifyContent=[xs(#"space-between")]>
    <Logo /> <Button label="Sign in" />
  </Stack>
}
