local TweenService = game:GetService("TweenService")


if game.CoreGui:FindFirstChild("CodeHubLibrary") then
	game.CoreGui:FindFirstChild("CodeHubLibrary"):Destroy()
end

local CodeHubLibrary = Instance.new("ScreenGui")
local Main_1 = Instance.new("Frame")
local UICorner_1 = Instance.new("UICorner")
local TopBar_1 = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local Title_1 = Instance.new("TextLabel")
local UIPadding_1 = Instance.new("UIPadding")
local TopBarLine_1 = Instance.new("Frame")
local Close_1 = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")
local UIStroke_1 = Instance.new("UIStroke")
local CloseBtn_1 = Instance.new("TextButton")
local GetFrame_1 = Instance.new("Frame")
local UIStroke_2 = Instance.new("UIStroke")
local UICorner_4 = Instance.new("UICorner")
local GetBtn_1 = Instance.new("TextButton")
local UIPadding_2 = Instance.new("UIPadding")
local GetIcon_1 = Instance.new("ImageLabel")
local CheckFrame_1 = Instance.new("Frame")
local UIStroke_3 = Instance.new("UIStroke")
local UICorner_5 = Instance.new("UICorner")
local CheckBtn_1 = Instance.new("TextButton")
local UIPadding_3 = Instance.new("UIPadding")
local CheckIcon_1 = Instance.new("ImageLabel")
local EnterHolder_1 = Instance.new("Frame")
local UICorner_6 = Instance.new("UICorner")
local UIStroke_4 = Instance.new("UIStroke")
local TextBox_1 = Instance.new("TextBox")

local targetCloseOnColor = Color3.fromRGB(180,180,180)
local targetCloseOffColor = Color3.fromRGB(47,47,47)
local tweenInfoClose = TweenInfo.new(0.2)
local targetCloseOn = TweenService:Create(Close_1, tweenInfoClose, {BackgroundColor3 = targetCloseOnColor})
local targetCloseOff = TweenService:Create(Close_1, tweenInfoClose, {BackgroundColor3 = targetCloseOffColor})
local targetPositionClose = UDim2.new(0.5, 0, 1.5, 0)
local tweenInfoClose = TweenInfo.new(0.5, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out)
local tweenClose = TweenService:Create(Main_1, tweenInfoClose, { Position = targetPositionClose })

CodeHubLibrary.Name = "CodeHubLibrary"
CodeHubLibrary.Parent = game.CoreGui
CodeHubLibrary.Enabled = true

Main_1.Name = "Main"
Main_1.Parent = CodeHubLibrary
Main_1.AnchorPoint = Vector2.new(0.5, 0.5)
Main_1.BackgroundColor3 = Color3.fromRGB(36,36,36)
Main_1.BorderColor3 = Color3.fromRGB(0,0,0)
Main_1.BorderSizePixel = 0
Main_1.Position = UDim2.new(0.5, 0,0.5, 0)
Main_1.Size = UDim2.new(0, 267,0, 156)
Main_1.Active = true

UICorner_1.Parent = Main_1
UICorner_1.CornerRadius = UDim.new(0,9)

TopBar_1.Name = "TopBar"
TopBar_1.Parent = Main_1
TopBar_1.BackgroundColor3 = Color3.fromRGB(36,36,36)
TopBar_1.BorderColor3 = Color3.fromRGB(0,0,0)
TopBar_1.BorderSizePixel = 0
TopBar_1.Size = UDim2.new(0, 267,0, 38)

UICorner_2.Parent = TopBar_1
UICorner_2.CornerRadius = UDim.new(0,9)

Title_1.Name = "Title"
Title_1.Parent = TopBar_1
Title_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
Title_1.BackgroundTransparency = 1
Title_1.BorderColor3 = Color3.fromRGB(0,0,0)
Title_1.BorderSizePixel = 0
Title_1.Position = UDim2.new(0, 0,0.0789473653, 0)
Title_1.Size = UDim2.new(0, 304,0, 32)
Title_1.Font = Enum.Font.GothamBold
Title_1.Text = "Fake Orion Key"
Title_1.TextColor3 = Color3.fromRGB(255,255,255)
Title_1.TextSize = 14
Title_1.TextXAlignment = Enum.TextXAlignment.Left

UIPadding_1.Parent = Title_1
UIPadding_1.PaddingLeft = UDim.new(0,13)

TopBarLine_1.Name = "TopBarLine"
TopBarLine_1.Parent = TopBar_1
TopBarLine_1.BackgroundColor3 = Color3.fromRGB(81,81,81)
TopBarLine_1.BorderColor3 = Color3.fromRGB(0,0,0)
TopBarLine_1.BorderSizePixel = 0
TopBarLine_1.Position = UDim2.new(0, 0,0.973684192, 0)
TopBarLine_1.Size = UDim2.new(0, 267,0, 1)

Close_1.Name = "Close"
Close_1.Parent = TopBar_1
Close_1.BackgroundColor3 = Color3.fromRGB(47,47,47)
Close_1.BorderColor3 = Color3.fromRGB(0,0,0)
Close_1.BorderSizePixel = 0
Close_1.Position = UDim2.new(0.850703001, 0,0.184210524, 0)
Close_1.Size = UDim2.new(0, 28,0, 24)

UICorner_3.Parent = Close_1

UIStroke_1.Parent = Close_1
UIStroke_1.Color = Color3.fromRGB(81,81,81)
UIStroke_1.Thickness = 1

CloseBtn_1.Name = "CloseBtn"
CloseBtn_1.Parent = Close_1
CloseBtn_1.Active = true
CloseBtn_1.AnchorPoint = Vector2.new(0.5, 0.5)
CloseBtn_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
CloseBtn_1.BackgroundTransparency = 1
CloseBtn_1.BorderColor3 = Color3.fromRGB(0,0,0)
CloseBtn_1.BorderSizePixel = 0
CloseBtn_1.Position = UDim2.new(0.5, 0,0.5, 0)
CloseBtn_1.Size = UDim2.new(0, 28,0, 24)
CloseBtn_1.Font = Enum.Font.Gotham
CloseBtn_1.Text = "X"
CloseBtn_1.TextColor3 = Color3.fromRGB(255,255,255)
CloseBtn_1.TextSize = 14
CloseBtn_1.MouseButton1Click:Connect(function()
	targetCloseOn:Play()
	wait(0.1)	
	targetCloseOff:Play()
	wait(0.1)	
	tweenClose:Play()
	wait(2)
	CodeHubLibrary.Enabled = false
end)

GetFrame_1.Name = "GetFrame"
GetFrame_1.Parent = Main_1
GetFrame_1.BackgroundColor3 = Color3.fromRGB(47,47,47)
GetFrame_1.BorderColor3 = Color3.fromRGB(0,0,0)
GetFrame_1.BorderSizePixel = 0
GetFrame_1.Position = UDim2.new(0.0486891381, 0,0.743589759, 0)
GetFrame_1.Size = UDim2.new(0, 241,0, 26)

UIStroke_2.Parent = GetFrame_1
UIStroke_2.Color = Color3.fromRGB(81,81,81)
UIStroke_2.Thickness = 1

UICorner_4.Parent = GetFrame_1
UICorner_4.CornerRadius = UDim.new(0,6)

local targetGetButtonColorOn = Color3.fromRGB(110, 110, 110)
local targetGetButtonColorOff = Color3.fromRGB(47, 47, 47)
local tweenInfo = TweenInfo.new(0.2)

GetBtn_1.Name = "GetBtn"
GetBtn_1.Parent = GetFrame_1
GetBtn_1.Active = true
GetBtn_1.AnchorPoint = Vector2.new(0.5, 0.5)
GetBtn_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
GetBtn_1.BackgroundTransparency = 1
GetBtn_1.BorderColor3 = Color3.fromRGB(0,0,0)
GetBtn_1.BorderSizePixel = 0
GetBtn_1.Position = UDim2.new(0.499777377, 0,0.5, 0)
GetBtn_1.Size = UDim2.new(0, 241,0, 26)
GetBtn_1.Font = Enum.Font.GothamBold
GetBtn_1.Text = "Get Key"
GetBtn_1.TextColor3 = Color3.fromRGB(255,255,255)
GetBtn_1.TextSize = 14
GetBtn_1.TextXAlignment = Enum.TextXAlignment.Left


local tweengbon = TweenService:Create(GetFrame_1, tweenInfo, {BackgroundColor3 = targetGetButtonColorOn})
local tweengboff = TweenService:Create(GetFrame_1, tweenInfo, {BackgroundColor3 = targetGetButtonColorOff})

GetBtn_1.MouseButton1Click:Connect(
	function()
		tweengbon:Play()
		wait(0.1)
		tweengboff:Play()
		GetBtn_1.Text = "Copied!"
		wait(1.2)
		GetBtn_1.Text = "Get Key"
	end
)

UIPadding_2.Parent = GetBtn_1
UIPadding_2.PaddingLeft = UDim.new(0,8)

GetIcon_1.Name = "GetIcon"
GetIcon_1.Parent = GetFrame_1
GetIcon_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
GetIcon_1.BackgroundTransparency = 1
GetIcon_1.BorderColor3 = Color3.fromRGB(0,0,0)
GetIcon_1.BorderSizePixel = 0
GetIcon_1.Position = UDim2.new(0.901818156, 0,0.166666672, 0)
GetIcon_1.Size = UDim2.new(0, 20,0, 20)
GetIcon_1.Image = "rbxassetid://14600110634"

CheckFrame_1.Name = "CheckFrame"
CheckFrame_1.Parent = Main_1
CheckFrame_1.BackgroundColor3 = Color3.fromRGB(47,47,47)
CheckFrame_1.BorderColor3 = Color3.fromRGB(0,0,0)
CheckFrame_1.BorderSizePixel = 0
CheckFrame_1.Position = UDim2.new(0.0486891381, 0,0.532051265, 0)
CheckFrame_1.Size = UDim2.new(0, 241,0, 26)

UIStroke_3.Parent = CheckFrame_1
UIStroke_3.Color = Color3.fromRGB(81,81,81)
UIStroke_3.Thickness = 1

UICorner_5.Parent = CheckFrame_1
UICorner_5.CornerRadius = UDim.new(0,6)

local targetCheckButtonColorOn = Color3.fromRGB(110, 110, 110)
local targetCheckButtonColorOff = Color3.fromRGB(47, 47, 47)
local tweenInfo = TweenInfo.new(0.2)

CheckBtn_1.Name = "CheckBtn"
CheckBtn_1.Parent = CheckFrame_1
CheckBtn_1.Active = true
CheckBtn_1.AnchorPoint = Vector2.new(0.5, 0.5)
CheckBtn_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
CheckBtn_1.BackgroundTransparency = 1
CheckBtn_1.BorderColor3 = Color3.fromRGB(0,0,0)
CheckBtn_1.BorderSizePixel = 0
CheckBtn_1.Position = UDim2.new(0.503926754, 0,0.538461566, 0)
CheckBtn_1.Size = UDim2.new(0, 241,0, 26)
CheckBtn_1.Font = Enum.Font.GothamBold
CheckBtn_1.Text = "Check Key"
CheckBtn_1.TextColor3 = Color3.fromRGB(255,255,255)
CheckBtn_1.TextSize = 14
CheckBtn_1.TextXAlignment = Enum.TextXAlignment.Left

local tweencbon = TweenService:Create(CheckFrame_1, tweenInfo, {BackgroundColor3 = targetCheckButtonColorOn})
local tweencboff = TweenService:Create(CheckFrame_1, tweenInfo, {BackgroundColor3 = targetCheckButtonColorOff})

CheckBtn_1.MouseButton1Click:Connect(function()
	tweencbon:Play()
	wait(0.1)
	tweencboff:Play()
	if _G.Key == TextBox_1.Text then
		CheckBtn_1.Text = "Valid Key!"
		writefile("CodeHub", _G.Key)
		wait(1.2)
		game.CoreGui:FindFirstChild("CodeHubLibrary"):Destroy()
		print("Passed Key System!")
	else
		CheckBtn_1.Text = "Invalid Key!"
		wait(1.2)
		CheckBtn_1.Text = "Check Key"
	end
end)

UIPadding_3.Parent = CheckBtn_1
UIPadding_3.PaddingLeft = UDim.new(0,8)

CheckIcon_1.Name = "CheckIcon"
CheckIcon_1.Parent = CheckFrame_1
CheckIcon_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
CheckIcon_1.BackgroundTransparency = 1
CheckIcon_1.BorderColor3 = Color3.fromRGB(0,0,0)
CheckIcon_1.BorderSizePixel = 0
CheckIcon_1.Position = UDim2.new(0.901818156, 0,0.166666672, 0)
CheckIcon_1.Size = UDim2.new(0, 20,0, 20)
CheckIcon_1.Image = "rbxassetid://14600119670"

EnterHolder_1.Name = "EnterHolder"
EnterHolder_1.Parent = Main_1
EnterHolder_1.BackgroundColor3 = Color3.fromRGB(47,47,47)
EnterHolder_1.BorderColor3 = Color3.fromRGB(0,0,0)
EnterHolder_1.BorderSizePixel = 0
EnterHolder_1.Position = UDim2.new(0.172284648, 0,0.288461536, 0)
EnterHolder_1.Size = UDim2.new(0, 173,0, 29)

UICorner_6.Parent = EnterHolder_1
UICorner_6.CornerRadius = UDim.new(0,6)

UIStroke_4.Parent = EnterHolder_1
UIStroke_4.Color = Color3.fromRGB(81,81,81)
UIStroke_4.Thickness = 1

TextBox_1.Parent = EnterHolder_1
TextBox_1.Active = true
TextBox_1.AnchorPoint = Vector2.new(0.5, 0.5)
TextBox_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
TextBox_1.BackgroundTransparency = 1
TextBox_1.BorderColor3 = Color3.fromRGB(0,0,0)
TextBox_1.BorderSizePixel = 0
TextBox_1.CursorPosition = -1
TextBox_1.Position = UDim2.new(0.5, 0,0.5, 0)
TextBox_1.Size = UDim2.new(0, 173,0, 29)
TextBox_1.Font = Enum.Font.GothamBold
TextBox_1.PlaceholderColor3 = Color3.fromRGB(255,255,255)
TextBox_1.PlaceholderText = "Enter Key"
TextBox_1.Text = ""
TextBox_1.TextColor3 = Color3.fromRGB(255,255,255)
TextBox_1.TextSize = 14

if isfile("CodeHub") then
	local savedKey = readfile("CodeHub")
	if _G.Key == savedKey then
		wait(0.4)
		TextBox_1.PlaceholderText = "Saved Key Found!"
		wait(1.2)
		game.CoreGui:FindFirstChild("CodeHubLibrary"):Destroy()
		print("Saved Key Found")
	else
		TextBox_1.PlaceholderText = "Invalid Key!"
		wait(1.2)
		TextBox_1.PlaceholderText = "Enter Key"
	end
end
