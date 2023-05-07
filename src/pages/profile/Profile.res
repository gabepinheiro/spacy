open AncestorSpacy
open Render

let name = `Jeff Jarvis`

let default = () => {
  let fakeArticles = [1, 2, 3, 4, 5, 6]

  <Box mt=[xs(14.0)] display=[xs(#flex)] justifyContent=[xs(#center)] width=[xs(100.0->#pct)]>
    <Box maxW=[xs(992->#px)] width=[xs(100.0->#pct)] position=[xs(#relative)]>
      <Stack
        direction=[xs(#horizontal)]
        alignItems=[xs(#center)]
        gap=[xs(#one(3.0))]
        position=[xs(#absolute)]
        right=[xs(#zero)]
        top=[xs(80->#px)]>
        <Button label="New article" />
        <Typography fontSize=[xs(1.6->#rem)]> {`Edit profile`->s} </Typography>
      </Stack>
      <Stack alignItems=[xs(#center)]>
        <Avatar name size=2.5 />
        <Typography
          tag=#p
          m=[xs(0.0)]
          mt=[xs(3.0)]
          color=[xs(#primary300)]
          fontSize=[xs(1.8->#rem)]
          letterSpacing=[xs(-0.02->#em)]
          fontWeight=[xs(#700)]
          textAlign=[xs(#center)]>
          {`@jeffjarvis`->s}
        </Typography>
        <Typography
          tag=#h1
          m=[xs(0.0)]
          mt=[xs(1.0)]
          fontSize=[xs(2.8->#rem)]
          color=[xs(#primary700)]
          fontWeight=[xs(#700)]
          textAlign=[xs(#center)]>
          {name->s}
        </Typography>
        <Typography
          tag=#p
          maxW=[xs(452->#px)]
          width=[xs(100.0->#pct)]
          m=[xs(0.0)]
          mt=[xs(2.0)]
          fontSize=[xs(1.8->#rem)]
          lineHeight=[xs(2.8->#rem)]
          color=[xs(#primary300)]
          fontWeight=[xs(#400)]
          textAlign=[xs(#center)]>
          {`Frontend performance enthusiast and Fine-Grained Reactivity super fan. Author of the SolidJS UI library and MarkoJS Core Team Member`->s}
        </Typography>
      </Stack>
      <Stack gap=[xs(#one(8.0))] mt=[xs(14.0)] alignItems=[xs(#center)]>
        <Grid spacing=[xs(4.0)]>
          {fakeArticles->map((_, key) => {
            <Box columns=[xs(#6)] key>
              <ArticleCard
                title={`Toward a Journalistic Ethic of Citation`}
                description={`After The New York Times published its extensive report on the history of Haiti’s impoverishment at the hands.`}
                authorName={`Jeff Jarvis`}
                readingTime=3
                published={`May 26, 2022`}
              />
            </Box>
          })}
        </Grid>
        <Button label="Load more" />
      </Stack>
    </Box>
  </Box>
}
