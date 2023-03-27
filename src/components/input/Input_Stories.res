type props = {
  placeholder: Storybook.argTypes<string>,
  type_: Storybook.argTypes<string>,
  disabled: Storybook.argTypes<bool>,
  error: Storybook.argTypes<string>,
}

let default = Storybook.make(
  ~title="Components/Input",
  ~component=Input.make,
  ~argTypes={
    type_: Storybook.argType(
      ~control=Radio,
      ~options=["text", "password", "email"],
      ~defaultValue="text",
      (),
    ),
    disabled: Storybook.argType(~control=Boolean, ()),
    error: Storybook.argType(~control=Text, ()),
    placeholder: Storybook.argType(~control=Text, ()),
  },
  (),
)
