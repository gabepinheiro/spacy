open AncestorSpacy

module FormFields = %lenses(
  type state = {
    email: string,
    password: string,
  }
)

module Form = ReForm.Make(FormFields)

let formSchema = {
  open Form.Validation

  schema([email(~error="Invalid email", Email), string(~min=8, Password)])
}

@react.component
let make = () => {
  let handleSubmit = (e: Form.onSubmitAPI) => {
    Console.log(e.state)

    None
  }

  let form = Form.use(
    ~initialState={email: "", password: ""},
    ~onSubmit=handleSubmit,
    ~validationStrategy=OnDemand,
    ~schema=formSchema,
    (),
  )

  let handleChange = fieldName => {
    ReForm.Helpers.handleChange(form.handleChange(fieldName))
  }

  let handleSubmitClick = e => {
    e->ReactEvent.Mouse.preventDefault
    form.submit()
  }

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
        <Input
          autoFocus=true
          placeholder="Email"
          onChange={handleChange(Email)}
          value={form.values.email}
          error=?{form.getFieldError(Field(Email))}
        />
        <Input
          type_="password"
          placeholder="Password"
          onChange={handleChange(Password)}
          value={form.values.password}
          error=?{form.getFieldError(Field(Password))}
        />
      </Stack>
      <Button label="Sign in" onClick={handleSubmitClick} />
    </Stack>
  </Modal.Content>
}
