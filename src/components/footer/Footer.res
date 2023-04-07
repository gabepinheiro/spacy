open AncestorSpacy

@react.component
let make = () => {
  <Stack
    tag=#footer
    direction=[xs(#horizontal)]
    justifyContent=[xs(#"space-between")]
    borderTop=[(1->#px, #solid, #primary200)->xs]
    py=[xs(3.0)]>
    <Typography
      tag=#p m=[xs(0.0)] color=[xs(#primary300)] fontSize=[xs(1.8->#rem)] fontWeight=[xs(#600)]>
      {`Made with `->React.string}
      <Typography
        tag=#a
        href=`https://rescript-lang.org`
        target=`_blank`
        m=[xs(0.0)]
        color=[xs(#primary700)]
        fontWeight=[xs(#700)]>
        {`ReScript`->React.string}
      </Typography>
      {` and `->React.string}
      <Typography
        tag=#a
        href=`https://nextjs.org`
        target=`_blank`
        m=[xs(0.0)]
        color=[xs(#primary700)]
        fontWeight=[xs(#700)]>
        {`Next.js`->React.string}
      </Typography>
    </Typography>
    <Typography
      tag=#p m=[xs(0.0)] color=[xs(#primary300)] fontSize=[xs(1.8->#rem)] fontWeight=[xs(#600)]>
      {`© Copyright Spacy - All rights reserved`->React.string}
    </Typography>
  </Stack>
}
