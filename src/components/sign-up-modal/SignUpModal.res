open AncestorSpacy

module FormFields = %lenses(
  type state = {
    username: string,
    email: string,
    password: string,
  }
)

module Form = ReForm.Make(FormFields)

let formSchema = {
  open Form.Validation

  schema([
    nonEmpty(~error="Username is required.", Username),
    email(~error="Invalid email", Email),
    string(~min=8, Password),
  ])
}

@react.component
let make = () => {
  let handleSubmit = (e: Form.onSubmitAPI) => {
    Console.log(e.state.values)

    None
  }

  let form = Form.use(
    ~initialState={username: "", email: "", password: ""},
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
    <Modal.Close />
    <Stack gap=[xs(#one(3.0))] minW=[xs(460->#px)] py=[xs(5.25)] px=[xs(4.0)]>
      <Typography
        tag=#p
        m=[xs(0.0)]
        fontSize=[xs(2.8->#rem)]
        fontWeight=[xs(#700)]
        color=[xs(#primary700)]
        letterSpacing=[xs(-0.02->#em)]>
        {`Sign up`->React.string}
      </Typography>
      <Stack gap=[xs(#one(2.0))]>
        <Input
          autoFocus=true
          placeholder="Username"
          onChange={handleChange(Username)}
          error=?{form.getFieldError(Field(Username))}
        />
        <Input
          type_="email"
          placeholder="Email"
          onChange={handleChange(Email)}
          error=?{form.getFieldError(Field(Email))}
        />
        <Input
          type_="password"
          placeholder="Password"
          onChange={handleChange(Password)}
          error=?{form.getFieldError(Field(Password))}
        />
      </Stack>
      <Button label="Sign up" onClick={handleSubmitClick} />
    </Stack>
  </Modal.Content>
}
