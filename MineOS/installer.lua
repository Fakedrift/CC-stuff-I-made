local sel = "term"
term.clear()
term.setCursorPos(1,1)
print("MineOS")
term.setCursorPos(1,2)
print("    graphical")
term.setCursorPos(1,3)
print("--> terminal")
term.setCursorPos(0,0)
while true do
    local event, key = os.pullEvent("key")
    if key == keys.s then
        if sel == "graph" then
            sel = "term"
        end
    end
    if key == keys.w then
        if sel == "term" then
            sel = "graph"
        end
    end
    if sel == "term" then
        term.setCursorPos(1,2)
        print("    graphical")
        term.setCursorPos(1,3)
        print("--> terminal")
        term.setCursorPos(0,0)
	if key == keys.enter then
		term.setCursorPos(1,5)
		print("terminal selected")
	end
    end
    if sel == "graph" then
        term.setCursorPos(1,2)
        print("--> graphical")
        term.setCursorPos(1,3)
        print("    terminal")
        term.setCursorPos(0,0)
	if key == keys.enter then
		term.setCursorPos(1,5)
		print("graphical selected")
		os.sleep(2)
		term.clear()
		local graphDIR = "https://raw.githubusercontent.com/Faked2378/CC-stuff-I-made/main/MineOS/1-0/graphic/installerG.lua"
		shell.run("wget", "run", graphDIR)
	end
    end
end
