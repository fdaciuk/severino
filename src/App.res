open Ancestor

module Tauri = {
  @module("@tauri-apps/api")
  external invoke: string => Promise.t<string> = "invoke"
}

@react.component
let make = () => {
  React.useEffect0(() => {
    Tauri.invoke("ping")->Promise.thenResolve(response => Js.log(response))->ignore
    None
  })

  <Box p=[xs(4)] bgColor=[xs(#hex("#333"))] width=[xs(100.0->#pct)] height=[xs(100.0->#pct)]>
    <Typography fontSize=[xs(32->#px)] color=[xs(#hex("#fafafa"))]>
      {"ReScript + Tauri + Rust > Electrons"->React.string}
    </Typography>
  </Box>
}
