switch ReactDOM.querySelector("#root") {
| None => Js.log("Root element not found.")
| Some(root) => ReactDOM.render(<App />, root)
}
