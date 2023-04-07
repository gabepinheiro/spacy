open AncestorSpacy

let default = Storybook.make(
  ~title="Components/Layout",
  ~component=() => {
    <Box height=[xs(100.0->#vh)]>
      <Layout>
        <Box border=[(1->#px, #solid, #primary200)->xs] height=[xs(100.0->#pct)] px=[xs(1.0)]>
          <Typography tag=#h2 color=[xs(#primary700)]> {`Content`->React.string} </Typography>
        </Box>
      </Layout>
    </Box>
  },
  (),
)
