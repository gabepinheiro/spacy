open AncestorSpacy

@react.component
let make = (~children) => {
  <Box
    display=[xs(#flex)]
    justifyContent=[xs(#center)]
    height=[xs(100.0->#pct)]
    py=[xs(9.0)]
    px=[xs(12.0)]>
    <Stack
      maxW=[xs(1200->#px)] width=[xs(100.0->#pct)] height=[xs(100.0->#pct)] gap=[xs(#one(4.0))]>
      <Header />
      <Box display=[xs(#flex)] justifyContent=[xs(#center)] flexGrow=[xs(3.0->#num)]>
        children
      </Box>
      <Footer />
    </Stack>
  </Box>
}
