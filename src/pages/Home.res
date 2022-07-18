open AncestorSpacy

let default = () => {
  <Box p=[xs(4.0)] bgColor=[xs(#hex("#000"))]>
    <Typography
      color=[xs(#hex("#fafafa"))]
      fontSize=[xs(#px(24))]
    >
      {`Styling with Ancestor`->React.string}
    </Typography>
  </Box>
}
