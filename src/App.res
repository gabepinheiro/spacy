type pageProps

type prop = {
  @as("Component")
  component: React.component<pageProps>,
  pageProps: pageProps,
}

let default = props => {
  let {component, pageProps} = props

  <Layout> {React.createElement(component, pageProps)} </Layout>
}
