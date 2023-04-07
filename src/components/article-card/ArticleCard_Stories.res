open AncestorSpacy

let default = Storybook.make(
  ~title="Components/ArticleCard",
  ~component=() => {
    <Box>
      <Box maxW=[xs(600->#px)]>
        <ArticleCard
          title=`Toward a Journalistic Ethic of Citation`
          description=`After The New York Times published its extensive report on the history of Haiti’s impoverishment at the hands.`
          authorName=`Jeff Jarvis`
          published=`May 26, 2022`
          readingTime=3
        />
      </Box>
    </Box>
  },
  (),
)
