let container = Emotion.css({
  "border": "1px solid blue",
  "fontSize": 42
})

let default = () => <div className=container>{`Hello from ReScript and Next.js`->React.string}</div>
