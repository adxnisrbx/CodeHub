local CodeHub = loadstring(game:HttpGet(('https://raw.githubusercontent.com/codelordd/CodeHub/main/CodeHubLib.lua')))()

local Window = CodeHub:MakeWindow({Name = "CodeHub"})

local Tab = Window:MakeTab({
	Name = "LocalPlayer",
	Icon = "rbxassetid://14595162359"
})

local Section = Tab:AddSection({
	Name = "Section!"
})

Tab:AddButton({
	Name = "Button!",
	Callback = function()
		Library:MakeNotification({
			Name = "Title!",
			Content = "Notification content... what will it say??",
			Image = "4483345998",
			Time = 2
		})
	end
})

Tab:AddToggle({
	Name = "Toggle!",
	Default = false,
	Callback = function(state)

	end    
})

Tab:AddSlider({
	Name = "Slider!",
	Max = 100,
	ValueName = "Value!",
	Callback = function(value)

	end
})

Tab:AddLabel({
	Name = "Label!"
})

Tab:AddTextbox({
	Name = "Box!",
	Default = "Enter!",
	Callback = function(input)

	end	  
})

Tab:AddDropdown({
	Name = "Dropdown!",
	Default = "1",
	Options = {"1", "2", "3"},
	Callback = function(selected)
		
	end    
})
