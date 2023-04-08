open AncestorSpacy

let default = Storybook.make(
  ~title="Components/Modal",
  ~component=() => {
    <Modal.Root>
      <Modal.Overlay />
      <Modal.Trigger asChild=true>
        <Button label="Open modal" />
      </Modal.Trigger>
      <Modal.Content>
        <Box minW=[xs(400->#px)] minH=[xs(350->#px)] />
        <Modal.Close />
      </Modal.Content>
    </Modal.Root>
  },
  (),
)
