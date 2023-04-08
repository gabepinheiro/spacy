open AncestorSpacy

@react.component
let make = () => {
  <Stack
    tag=#header
    width=[xs(100.0->#pct)]
    direction=[xs(#horizontal)]
    justifyContent=[xs(#"space-between")]>
    <Logo />
    <Modal.Root>
      <Modal.Trigger asChild=true>
        <Button label="Sign in" />
      </Modal.Trigger>
      <Modal.Overlay />
      <SignInModal />
    </Modal.Root>
  </Stack>
}
