open AncestorSpacy

@react.component
let make = () => {
  <Modal.Content>
    <Stack
      gap=[xs(#one(4.0))] minW=[xs(370->#px)] width=[xs(100.0->#pct)] py=[xs(5.0)] px=[xs(4.0)]>
      <Modal.Close />
      <Typography
        fontSize=[xs(2.8->#rem)]
        fontWeight=[xs(#700)]
        letterSpacing=[xs(-0.02->#em)]
        color=[xs(#primary700)]>
        {`Sign in`->React.string}
      </Typography>
      <Stack gap=[xs(#one(2.0))]>
        <Input placeholder="Email" />
        <Input placeholder="Password" />
      </Stack>
      <Button label="Sign in" />
    </Stack>
  </Modal.Content>
}
