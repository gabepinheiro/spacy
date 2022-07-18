type pageProps

type prop = {
    @as("Component")
    component: React.component<pageProps>
    pageProps: pageProps
}

let default = props => {
    let {component, pageProps} = props

    <div>
        {React.createElement(component, pageProps)}
    </div>
}
