def colors:
  {
    "bold": "\u001b[1m",
    "reset": "\u001b[0m",
  };

if .[].success == false then
  if (.[] | has("error")) and (.[].error | type != "boolean") then
    "Error:",
    "  code: " + (.[].error.code | tostring),
    "  msg:  " + (.[].error.msg | tostring),
    halt_error(1)
  else
    "Wolfram|Alpha did not understand your input",
    .[].tips.text // empty
  end,
  if .[] | has("didyoumeans") then
    "inputstring:", "  " + (.[].inputstring | tostring),
    "didyoumeans:", "  " + (.[].didyoumeans[].val | tostring)
  else empty
  end
else
  .[].pods[] |
  {title: .title, text: [.subpods[].plaintext]} |
  if .text[0] == "" then empty else . end |
  (colors.bold + .title + ":" + colors.reset) ,
  (.text | "  " + join("\n")| gsub("\n";"\n  ")) ,
  ""
end
