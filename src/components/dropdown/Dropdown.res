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
    "borderRadius": Theme.Radius.make(1.0),
    "padding": `${Theme.Spacing.make(1.0)} ${Theme.Spacing.make(1.25)}`,
    "transition": "200ms background, 150ms box-shadow",
    "willChange": "background, box-shadow",
    "&:focus": {
      "transition": "150ms box-shadow",
      "boxShadow": `0px 0px 0px 2px ${Theme.Colors.make(#primary200)}`,
    },
    "&:hover": {
      "transition": "200ms background",
      "background": Theme.Colors.make(#primary200)->Polished.transparentize(0.8, _),
    },
  })

  let content = Emotion.css({
    "padding": Theme.Spacing.make(2.0),
    "border": `solid 1px ${Theme.Colors.make(#primary200)->Polished.transparentize(0.5, _)}`,
    "borderRadius": Theme.Radius.make(1.0),
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
    "color": Theme.Colors.make(#primary700),
    "padding": Theme.Spacing.make(1.0),
    "textAlign": "center",
    "display": "flex",
    "alignItems": "center",
    "justifyContent": "center",
    "fontSize": 16,
    "fontWeight": 700,
    "letterSpacing": `-0.02em`,
    "borderRadius": Theme.Radius.make(0.5),
    "cursor": "pointer",
    "transition": "200ms background, 150ms box-shadow",
    "willChange": "background, box-shadow",
    "&:focus": {
      "transition": "150ms box-shadow",
      "boxShadow": `0px 0px 0px 2px ${Theme.Colors.make(#primary200)}`,
    },
    "&:hover": {
      "transition": "200ms background",
      "background": Theme.Colors.make(#primary200)->Polished.transparentize(0.8, _),
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
    <Popover.Trigger className=Styles.trigger asChildren=true> {trigger} </Popover.Trigger>
    <Popover.Portal>
      <Popover.Content className=Styles.content sideOffset=6> {children} </Popover.Content>
    </Popover.Portal>
  </Popover.Root>
}
