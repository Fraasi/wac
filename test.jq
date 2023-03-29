def colors:
    {
        "underline": "\u001b[4m",
        "bold": "\u001b[1m",
        "reset": "\u001b[0m",
   };

if .[].success == false then
        "Wolfram|Alpha did not understand your input",
        .[].tips.text // "tips N/A" ,
        "use -t option to get tips on how to use",
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
                "  " + .subpods[].plaintext
            end
            , ""
        )
end
