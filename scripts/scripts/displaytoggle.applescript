tell application "System Preferences"
	activate
	reveal anchor "displaysDisplayTab" of pane "com.apple.preference.displays"
end tell

tell application "System Events"
	tell application process "System Preferences"
		repeat until (exists group 1 of window "Displays")
			delay 0.1
		end repeat
		tell window "Displays"
			click button 1
			repeat until (exists sheet 1)
				delay 0.1
			end repeat
			set isScaled to value of radio button "Scaled" of radio group 1 of sheet 1
			if isScaled = 0 then
				click radio button "Scaled" of radio group 1 of sheet 1
				click button 2 of UI element 6 of sheet 1
				delay 0.5
				repeat until (exists button 2 of sheet 1)
					delay 0.1
				end repeat
				click button 2 of sheet 1
			else
				click radio button "Default for display" of radio group 1 of sheet 1
				delay 0.5
				repeat until (exists button 2 of sheet 1)
					delay 0.1
				end repeat
				click button 2 of sheet 1
			end if
		end tell

	end tell
end tell


tell application "System Preferences"
  activate
  delay 1
  quit
end tell
