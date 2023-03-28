def colors:
    {
   "black": "\u001b[30m",
   "red": "\u001b[31m",
   "green": "\u001b[32m",
   "yellow": "\u001b[33m",
   "blue": "\u001b[34m",
   "magenta": "\u001b[35m",
   "cyan": "\u001b[36m",
   "white": "\u001b[37m",
   "bold": "\u001b[1m",
   "underline": "\u001b[4m",
   "reset": "\u001b[0m",
   };

if .[].success == false then
        "success: " + (.[].success | tostring),
         "error: " + (.[].error | tostring)

    else
    if .[].didyoumeans != null then
        "inputstring:", "  " + (.[].inputstring | tostring),
        "didyoumeans:", "  " + (.[].didyoumeans[].val | tostring)
    else
        .[].pods[] | (
                if .subpods[].plaintext == "" then
                   empty
                else
                    "\(colors.bold)" + .title + ":\(colors.reset)",
                    "  " + .subpods[].plaintext
                end
                , ""
            )

    end
end
