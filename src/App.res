open Ancestor

@react.component
let make = () => {
  <Box
    p=[xs(4)]
    bgColor=[xs(#hex("#cecece")), md(#hex("#000"))]
    width=[xs(100.0->#pct)]
    height=[xs(100.0->#pct)]>
    <Typography fontSize=[xs(32->#px)] color=[xs(#hex("#fafafa")), md(#hex("#cecece"))]>
      {"ReScript + Tauri + Rust > Electrons"->React.string}
    </Typography>
  </Box>
}
