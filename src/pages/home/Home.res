open AncestorSpacy
open Render

module Hero = Home_Hero

let fakeArticles = [1, 2, 3, 4, 5, 6]

let default = () => {
  <Box p=[xs(4.0)]>
    <Box mt=[xs(14.0)]>
      <Hero>
        <Hero.Title />
        <Box maxW=[xs(508->#px)] width=[xs(100.0->#pct)]>
          <Hero.Text />
        </Box>
        <Box maxW=[xs(178->#px)] width=[xs(100.0->#pct)] mt=[xs(1.0)]>
          <Button label={`Create account`} block=true />
        </Box>
      </Hero>
    </Box>
    <Stack gap=[xs(#one(8.0))] mt=[xs(14.0)] alignItems=[xs(#center)]>
      <Grid spacing=[xs(4.0)]>
        {fakeArticles->map((_, key) => {
          <Box columns=[xs(#6)]>
            <ArticleCard
              key
              title={`Toward a Journalistic Ethic of Citation`}
              description={`After The New York Times published its extensive report on the history of Haiti’s impoverishment at the hands.`}
              authorName={`Jeff Jarvis`}
              published={`May 26, 2022`}
              readingTime=3
            />
          </Box>
        })}
      </Grid>
      <Button label={`Load more`} />
    </Stack>
  </Box>
}
