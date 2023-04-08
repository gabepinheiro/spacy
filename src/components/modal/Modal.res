module Styles = {
  open Emotion

  let overlayFadeIn = keyframes({
    "from": {
      "opacity": 0,
    },
    "to": {
      "opacity": 1,
    },
  })

  let contentFadeIn = keyframes({
    "from": {
      "opacity": 0,
      "transform": "translate(-50%, -48%) scale(.95)",
    },
    "to": {
      "opacity": 1,
      "transform": "translate(-50%, -50%) scale(1)",
    },
  })

  let overlay = css({
    "position": "fixed",
    "inset": 0,
    "zIndex": Theme.zIndex(#above),
    "background": Theme.colors(#primary700)->Polished.transparentize(0.4, _),
    "animation": `${overlayFadeIn} 250ms cubic-bezier(0.16, 1, 0.3, 1)`,
  })

  let content = css({
    "position": "fixed",
    "top": "50%",
    "left": "50%",
    "transform": "translate(-50%, -50%)",
    "zIndex": Theme.zIndex(#above),
    "minWidth": 300,
    "minHeight": 300,
    "background": Theme.colors(#primary100),
    "borderRadius": Theme.radius(0.5),
    "animation": `${contentFadeIn} 250ms cubic-bezier(0.16, 1, 0.3, 1)`,
  })

  let close = css({
    "position": "absolute",
    "top": 16,
    "right": 16,
    "border": 0,
    "outline": 0,
    "cursor": "pointer",
    "display": "flex",
    "alignItems": "center",
    "justifyContent": "center",
    "background": "transparent",
    "padding": 8,
    "borderRadius": "50%",
    "transition": "200ms background, 200ms box-shadow",
    "willChange": "background, box-shadow",
    "&:hover": {
      "transition": "200ms background",
      "background": Theme.colors(#primary200)->Polished.transparentize(0.8, _),
    },
    "&:focus": {
      "boxShadow": `0px 0px 0px 2px #858585`,
      "transition": "200ms box-shadow",
    },
  })
}

module CloseIcon = {
  @react.component
  let make = () => {
    <svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
      <path
        d="M9.80527 10.7755L4.95534 15.6254C4.81677 15.764 4.6551 15.8333 4.47034 15.8333C4.28558 15.8333 4.12392 15.764 3.98535 15.6254C3.84678 15.4868 3.7775 15.3252 3.7775 15.1404C3.7775 14.9557 3.84678 14.794 3.98535 14.6554L8.83529 9.80549L3.98535 4.95555C3.84678 4.81698 3.7775 4.65532 3.7775 4.47056C3.7775 4.2858 3.84678 4.12413 3.98535 3.98556C4.12392 3.84699 4.28558 3.77771 4.47034 3.77771C4.6551 3.77771 4.81677 3.84699 4.95534 3.98556L9.80527 8.8355L14.6552 3.98556C14.7938 3.84699 14.9554 3.77771 15.1402 3.77771C15.325 3.77771 15.4866 3.84699 15.6252 3.98556C15.7638 4.12413 15.8331 4.2858 15.8331 4.47056C15.8331 4.65532 15.7638 4.81698 15.6252 4.95555L10.7753 9.80549L15.6252 14.6554C15.7638 14.794 15.8331 14.9557 15.8331 15.1404C15.8331 15.3252 15.7638 15.4868 15.6252 15.6254C15.4866 15.764 15.325 15.8333 15.1402 15.8333C14.9554 15.8333 14.7938 15.764 14.6552 15.6254L9.80527 10.7755Z"
        fill="black"
      />
    </svg>
  }
}

module Close = {
  @react.component
  let make = () => {
    <Radix.Dialog.Close asChild=true>
      <button className=Styles.close>
        <CloseIcon />
      </button>
    </Radix.Dialog.Close>
  }
}

module Root = Radix.Dialog.Root
module Trigger = Radix.Dialog.Trigger

module Overlay = {
  @react.component
  let make = () => {
    <Radix.Dialog.Overlay className=Styles.overlay />
  }
}

module Content = {
  @react.component
  let make = (~children) => {
    <Radix.Dialog.Content className=Styles.content> children </Radix.Dialog.Content>
  }
}
