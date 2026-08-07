hl.on("hyprland.start", function()
	hl.exec_cmd("nm-applet")
	hl.exec_cmd("awww-daemon")
	hl.exec_cmd("awww restore")
--	hl.exec_cmd("qs -c noctalia-shell")
        hl.exec_cmd("noctalia")
end)

