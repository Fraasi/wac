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
  .[].pods[] | (
    if .subpods[].plaintext == "" then
      empty
    else
      "\(colors.bold)" + .title + ":\(colors.reset)",
      (.subpods[] | if .plaintext != "" then (" " + .plaintext | gsub("\n";"\n ")) else empty end), ""
    end
  )
end
