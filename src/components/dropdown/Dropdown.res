module Popover = Radix.Popover

module Styles = {
  let slideUpAndFade = Emotion.keyframes({
    "from": {
      "opacity": 0,
      "transform": "translateY(2px)",
    },
    "to": {
      "opacity": 1,
      "transform": "translateY(0)",
    },
  })

  let trigger = Emotion.css({
    "border": "none",
    "outline": 0,
    "background": "transparent",
    "cursor": "pointer",
    "borderRadius": Theme.radius(1.0),
    "padding": `${Theme.spacing(1.0)} ${Theme.spacing(1.25)}`,
    "transition": "200ms background, 150ms box-shadow",
    "willChange": "background, box-shadow",
    "&:focus": {
      "transition": "150ms box-shadow",
      "boxShadow": `0px 0px 0px 2px ${#primary200->Theme.colors}`,
    },
    "&:hover": {
      "transition": "200ms background",
      "background": #primary200->Theme.colors->Polished.transparentize(0.8, _),
    },
  })

  let content = Emotion.css({
    "padding": Theme.spacing(2.0),
    "border": `solid 1px ${#primary200->Theme.colors->Polished.transparentize(0.5, _)}`,
    "borderRadius": Theme.radius(1.0),
    "display": "flex",
    "flex-direction": "column",
    "alignItems": "center",
    "justifyContent": "center",
    "minWidth": 125,
    "willChange": "opacity, transform",
    "animationDuration": "300ms",
    "&[data-state='open']": {
      "&[data-side='bottom']": {
        "animationName": slideUpAndFade,
      },
    },
  })

  let item = Emotion.css({
    "width": "100%",
    "outline": 0,
    "textDecoration": "none",
    "color": #primary700->Theme.colors,
    "padding": Theme.spacing(1.0),
    "textAlign": "center",
    "display": "flex",
    "alignItems": "center",
    "justifyContent": "center",
    "fontSize": 16,
    "fontWeight": 700,
    "letterSpacing": `-0.02em`,
    "borderRadius": Theme.radius(0.5),
    "cursor": "pointer",
    "transition": "200ms background, 150ms box-shadow",
    "willChange": "background, box-shadow",
    "&:focus": {
      "transition": "150ms box-shadow",
      "boxShadow": `0px 0px 0px 2px ${#primary200->Theme.colors}`,
    },
    "&:hover": {
      "transition": "200ms background",
      "background": #primary200->Theme.colors->Polished.transparentize(0.8, _),
    },
  })
}

module Item = {
  @react.component
  let make = (~label) => <a href="#" className=Styles.item> {label->React.string} </a>
}

@react.component
let make = (~trigger, ~children) => {
  <Popover.Root>
    <Popover.Trigger asChild=true>
      <button className=Styles.trigger> {trigger} </button>
    </Popover.Trigger>
    <Popover.Portal>
      <Popover.Content className=Styles.content sideOffset=6> {children} </Popover.Content>
    </Popover.Portal>
  </Popover.Root>
}
