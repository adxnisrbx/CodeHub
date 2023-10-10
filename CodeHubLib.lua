local UserInputService = game:GetService("UserInputService")
local player = game.Players.LocalPlayer
local userId = player.UserId

local Open = true

local profilePictureUrl = string.format("https://www.roblox.com/headshot-thumbnail/image?userId=%d&width=420&height=420", userId)

local TweenService = game:GetService("TweenService")


local Library = {}
function Library:MakeWindow(windowData)
	if game.CoreGui:FindFirstChild("FakeOrion") then
		game.CoreGui:FindFirstChild("FakeOrion"):Destroy()
	end
	local FakeOrion = Instance.new("ScreenGui")
	local Main_1 = Instance.new("Frame")
	local UICorner_1 = Instance.new("UICorner")
	local TopBar_1 = Instance.new("Frame")
	local UICorner_2 = Instance.new("UICorner")
	local Title_1 = Instance.new("TextLabel")
	local UIPadding_1 = Instance.new("UIPadding")
	local TopBarLine_1 = Instance.new("Frame")
	local CloseMinimize_1 = Instance.new("Frame")
	local UICorner_3 = Instance.new("UICorner")
	local UIStroke_1 = Instance.new("UIStroke")
	local CloseBtn_1 = Instance.new("TextButton")
	local MinimizeBtn_1 = Instance.new("TextButton")
	local ActionSplitter_1 = Instance.new("Frame")
	local TabsHolder_1 = Instance.new("Frame")
	local ProfileHolder_1 = Instance.new("Frame")
	local ProfileHolderCorner_1 = Instance.new("Frame")
	local ProfileHolderCorner_2 = Instance.new("Frame")
	local ProfileHolderLine_1 = Instance.new("Frame")
	local UICorner_4 = Instance.new("UICorner")
	local PictureHolder_1 = Instance.new("Frame")
	local UICorner_5 = Instance.new("UICorner")
	local UIStroke_2 = Instance.new("UIStroke")
	local ImageLabel_1 = Instance.new("ImageLabel")
	local TextLabel_1 = Instance.new("TextLabel")
	local UIPadding_4 = Instance.new("UIPadding")
	local MainLine_1 = Instance.new("Frame")
	local ElementsHolder_1 = Instance.new("Frame")
	local Tabs_1 = Instance.new("ScrollingFrame")
	local UIListLayout_1 = Instance.new("UIListLayout")
	local UIPadding_3 = Instance.new("UIPadding")
	local ProfileCorner_1 = Instance.new("UICorner")

	local targetPositionClose = UDim2.new(0.5, 0, 1.5, 0)
	local tweenInfoClose = TweenInfo.new(0.5, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out)
	local tweenClose = TweenService:Create(Main_1, tweenInfoClose, { Position = targetPositionClose })

	FakeOrion.Name = "FakeOrion"
	FakeOrion.Parent = game.CoreGui
	FakeOrion.Enabled = true

	Main_1.Name = "Main"
	Main_1.Parent = FakeOrion
	Main_1.AnchorPoint = Vector2.new(0.5,0.5)
	Main_1.BackgroundColor3 = Color3.fromRGB(36,36,36)
	Main_1.BorderColor3 = Color3.fromRGB(0,0,0)
	Main_1.BorderSizePixel = 0
	Main_1.Position = UDim2.new(0.5,0,0.5,0)
	Main_1.Size = UDim2.new(0, 414,0, 245)
	Main_1.Active = true

	local gui = Main_1

	local dragging
	local dragInput
	local dragStart
	local startPos

	local function update(input)
		local delta = input.Position - dragStart
		gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end

	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position

			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)

	gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)

	UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)



	UICorner_1.Parent = Main_1
	UICorner_1.CornerRadius = UDim.new(0,9)

	TopBar_1.Name = "TopBar"
	TopBar_1.Parent = Main_1
	TopBar_1.BackgroundColor3 = Color3.fromRGB(36,36,36)
	TopBar_1.BorderColor3 = Color3.fromRGB(0,0,0)
	TopBar_1.BorderSizePixel = 0
	TopBar_1.Size = UDim2.new(0, 414,0, 38)

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
	Title_1.Text = windowData.Name or "Fake Orion Library"
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
	TopBarLine_1.Size = UDim2.new(0, 414,0, 1)

	CloseMinimize_1.Name = "CloseMinimize"
	CloseMinimize_1.Parent = TopBar_1
	CloseMinimize_1.BackgroundColor3 = Color3.fromRGB(47,47,47)
	CloseMinimize_1.BorderColor3 = Color3.fromRGB(0,0,0)
	CloseMinimize_1.BorderSizePixel = 0
	CloseMinimize_1.Position = UDim2.new(0.847826064, 0,0.184210524, 0)
	CloseMinimize_1.Size = UDim2.new(0, 54,0, 24)

	UICorner_3.Parent = CloseMinimize_1
	UICorner_3.CornerRadius = UDim.new(0,6)

	UIStroke_1.Parent = CloseMinimize_1
	UIStroke_1.Color = Color3.fromRGB(81,81,81)
	UIStroke_1.Thickness = 1

	CloseBtn_1.Name = "CloseBtn"
	CloseBtn_1.Parent = CloseMinimize_1
	CloseBtn_1.Active = true
	CloseBtn_1.AnchorPoint = Vector2.new(0.5, 0.5)
	CloseBtn_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	CloseBtn_1.BackgroundTransparency = 1
	CloseBtn_1.BorderColor3 = Color3.fromRGB(0,0,0)
	CloseBtn_1.BorderSizePixel = 0
	CloseBtn_1.Position = UDim2.new(0.759259284, 0,0.5, 0)
	CloseBtn_1.Size = UDim2.new(0, 28,0, 24)
	CloseBtn_1.Font = Enum.Font.Gotham
	CloseBtn_1.Text = "X"
	CloseBtn_1.TextColor3 = Color3.fromRGB(255,255,255)
	CloseBtn_1.TextSize = 14
	CloseBtn_1.MouseButton1Click:Connect(function()
		tweenClose:Play()
		wait(2)
		FakeOrion.Enabled = false
	end)


	MinimizeBtn_1.Name = "MinimizeBtn"
	MinimizeBtn_1.Parent = CloseMinimize_1
	MinimizeBtn_1.Active = true
	MinimizeBtn_1.AnchorPoint = Vector2.new(0.5, 0.5)
	MinimizeBtn_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	MinimizeBtn_1.BackgroundTransparency = 1
	MinimizeBtn_1.BorderColor3 = Color3.fromRGB(0,0,0)
	MinimizeBtn_1.BorderSizePixel = 0
	MinimizeBtn_1.Position = UDim2.new(0.259259254, 0,0.5, 0)
	MinimizeBtn_1.Size = UDim2.new(0, 28,0, 24)
	MinimizeBtn_1.Font = Enum.Font.Gotham
	MinimizeBtn_1.Text = "━"
	MinimizeBtn_1.TextColor3 = Color3.fromRGB(255,255,255)
	MinimizeBtn_1.TextSize = 14
	MinimizeBtn_1.MouseButton1Click:Connect(function()
		if Open == true then
			TopBarLine_1.Visible = false
			ElementsHolder_1.Visible = false
			MainLine_1.Visible = false
			ProfileHolder_1.Visible = false
			TabsHolder_1.Visible = false
			local TweenClose = Main_1:TweenSize(
				UDim2.new(0, 414,0, 38),
				Enum.EasingDirection.Out,
				Enum.EasingStyle.Quad,
				0.2,
				false
			)
			Open = false
		else
			local TweenOpen = Main_1:TweenSize(
				UDim2.new(0, 414,0, 245),
				Enum.EasingDirection.Out,
				Enum.EasingStyle.Quad,
				0.2,
				false
			)
			wait(0.2)
			TopBarLine_1.Visible = true
			ElementsHolder_1.Visible = true
			MainLine_1.Visible = true
			ProfileHolder_1.Visible = true
			TabsHolder_1.Visible = true
			Open = true
		end
	end)
	ActionSplitter_1.Name = "ActionSplitter"
	ActionSplitter_1.Parent = CloseMinimize_1
	ActionSplitter_1.BackgroundColor3 = Color3.fromRGB(81,81,81)
	ActionSplitter_1.BorderColor3 = Color3.fromRGB(0,0,0)
	ActionSplitter_1.BorderSizePixel = 0
	ActionSplitter_1.Position = UDim2.new(0.5, 0,0, 0)
	ActionSplitter_1.Size = UDim2.new(0, 1,0, 24)

	TabsHolder_1.Name = "TabsHolder"
	TabsHolder_1.Parent = Main_1
	TabsHolder_1.BackgroundColor3 = Color3.fromRGB(47,47,47)
	TabsHolder_1.BorderColor3 = Color3.fromRGB(0,0,0)
	TabsHolder_1.BorderSizePixel = 0
	TabsHolder_1.Position = UDim2.new(0, 0,0.155000031, 0)
	TabsHolder_1.Size = UDim2.new(0, 118,0, 166)
	ProfileHolder_1.Name = "ProfileHolder"
	ProfileHolder_1.Parent = Main_1
	ProfileHolder_1.BackgroundColor3 = Color3.fromRGB(47,47,47)
	ProfileHolder_1.BorderColor3 = Color3.fromRGB(0,0,0)
	ProfileHolder_1.BorderSizePixel = 0
	ProfileHolder_1.Position = UDim2.new(0, 0,0.83663255, 0)
	ProfileHolder_1.Size = UDim2.new(0, 118,0, 40)

	ProfileHolderCorner_1.Name = "ProfileHolderCorner"
	ProfileHolderCorner_1.Parent = ProfileHolder_1
	ProfileHolderCorner_1.BackgroundColor3 = Color3.fromRGB(47,47,47)
	ProfileHolderCorner_1.BorderColor3 = Color3.fromRGB(0,0,0)
	ProfileHolderCorner_1.BorderSizePixel = 0
	ProfileHolderCorner_1.Position = UDim2.new(0, 0,0.0116333012, 0)
	ProfileHolderCorner_1.Size = UDim2.new(0, 118,0, 20)

	ProfileHolderCorner_2.Name = "ProfileHolderCorner"
	ProfileHolderCorner_2.Parent = ProfileHolder_1
	ProfileHolderCorner_2.BackgroundColor3 = Color3.fromRGB(47,47,47)
	ProfileHolderCorner_2.BorderColor3 = Color3.fromRGB(0,0,0)
	ProfileHolderCorner_2.BorderSizePixel = 0
	ProfileHolderCorner_2.Position = UDim2.new(0.789005101, 0,0.0116333012, 0)
	ProfileHolderCorner_2.Size = UDim2.new(0, 24,0, 39)

	ProfileHolderLine_1.Name = "ProfileHolderLine"
	ProfileHolderLine_1.Parent = ProfileHolder_1
	ProfileHolderLine_1.BackgroundColor3 = Color3.fromRGB(81,81,81)
	ProfileHolderLine_1.BorderColor3 = Color3.fromRGB(0,0,0)
	ProfileHolderLine_1.BorderSizePixel = 0
	ProfileHolderLine_1.Position = UDim2.new(0, 0,-0.0250000004, 0)
	ProfileHolderLine_1.Size = UDim2.new(0, 118,0, 1)

	UICorner_4.Parent = ProfileHolder_1
	UICorner_4.CornerRadius = UDim.new(0,9)

	PictureHolder_1.Name = "PictureHolder"
	PictureHolder_1.Parent = ProfileHolder_1
	PictureHolder_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	PictureHolder_1.BackgroundTransparency = 1
	PictureHolder_1.BorderColor3 = Color3.fromRGB(0,0,0)
	PictureHolder_1.BorderSizePixel = 0
	PictureHolder_1.Position = UDim2.new(0.0677966103, 0,0.100625612, 0)
	PictureHolder_1.Size = UDim2.new(0, 30,0, 30)
	PictureHolder_1.ClipsDescendants = true

	UICorner_5.Parent = PictureHolder_1
	UICorner_5.CornerRadius = UDim.new(0,20)

	UIStroke_2.Parent = PictureHolder_1
	UIStroke_2.Color = Color3.fromRGB(81,81,81)
	UIStroke_2.Thickness = 1

	ImageLabel_1.Parent = PictureHolder_1
	ImageLabel_1.AnchorPoint = Vector2.new(0.5, 0.5)
	ImageLabel_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	ImageLabel_1.BackgroundTransparency = 1
	ImageLabel_1.BorderColor3 = Color3.fromRGB(0,0,0)
	ImageLabel_1.BorderSizePixel = 0
	ImageLabel_1.Position = UDim2.new(0.5, 0,0.5, 0)
	ImageLabel_1.Size = UDim2.new(0, 30,0, 30)
	ImageLabel_1.Image = profilePictureUrl

	ProfileCorner_1.Parent = ImageLabel_1
	ProfileCorner_1.CornerRadius = UDim.new(0,20)

	TextLabel_1.Parent = ProfileHolder_1
	TextLabel_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	TextLabel_1.BackgroundTransparency = 1
	TextLabel_1.BorderColor3 = Color3.fromRGB(0,0,0)
	TextLabel_1.BorderSizePixel = 0
	TextLabel_1.Position = UDim2.new(0.372881353, 0,0.25062561, 0)
	TextLabel_1.Size = UDim2.new(0, 69,0, 19)
	TextLabel_1.ClipsDescendants = true
	TextLabel_1.Font = Enum.Font.GothamBold
	TextLabel_1.Text = game.Players.LocalPlayer.Name
	TextLabel_1.TextColor3 = Color3.fromRGB(255,255,255)
	TextLabel_1.TextSize = 10
	TextLabel_1.TextWrapped = true
	TextLabel_1.TextXAlignment = Enum.TextXAlignment.Left

	UIPadding_4.Parent = TextLabel_1
	MainLine_1.Name = "MainLine"
	MainLine_1.Parent = Main_1
	MainLine_1.BackgroundColor3 = Color3.fromRGB(81,81,81)
	MainLine_1.BorderColor3 = Color3.fromRGB(0,0,0)
	MainLine_1.BorderSizePixel = 0
	MainLine_1.Position = UDim2.new(0.285024166, 0,0.1535566, 0)
	MainLine_1.Size = UDim2.new(0, 1,0, 207)

	ElementsHolder_1.Name = "ElementsHolder"
	ElementsHolder_1.Parent = Main_1
	ElementsHolder_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	ElementsHolder_1.BackgroundTransparency = 1
	ElementsHolder_1.BorderColor3 = Color3.fromRGB(0,0,0)
	ElementsHolder_1.BorderSizePixel = 0
	ElementsHolder_1.Position = UDim2.new(0.30917874, 0,0.155102044, 0)
	ElementsHolder_1.Size = UDim2.new(0, 286,0, 206)

	Tabs_1.Name = "Tabs"
	Tabs_1.Parent = TabsHolder_1
	Tabs_1.Active = true
	Tabs_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	Tabs_1.BackgroundTransparency = 1
	Tabs_1.BorderColor3 = Color3.fromRGB(0,0,0)
	Tabs_1.BorderSizePixel = 0
	Tabs_1.Size = UDim2.new(0, 118,0, 166)
	Tabs_1.ClipsDescendants = true
	Tabs_1.AutomaticCanvasSize = Enum.AutomaticSize.Y
	Tabs_1.BottomImage = "rbxasset://textures/ui/Scroll/scroll-bottom.png"
	Tabs_1.CanvasPosition = Vector2.new(0, 0)
	Tabs_1.CanvasSize = UDim2.new(0, 0,0.5, 0)
	Tabs_1.ElasticBehavior = Enum.ElasticBehavior.Always
	Tabs_1.HorizontalScrollBarInset = Enum.ScrollBarInset.None
	Tabs_1.MidImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
	Tabs_1.ScrollBarImageColor3 = Color3.fromRGB(0,0,0)
	Tabs_1.ScrollBarImageTransparency = 1
	Tabs_1.ScrollBarThickness = 1
	Tabs_1.ScrollingDirection = Enum.ScrollingDirection.Y
	Tabs_1.TopImage = "rbxasset://textures/ui/Scroll/scroll-top.png"
	Tabs_1.VerticalScrollBarInset = Enum.ScrollBarInset.None
	Tabs_1.VerticalScrollBarPosition = Enum.VerticalScrollBarPosition.Right
	UIListLayout_1.Parent = Tabs_1
	UIListLayout_1.Padding = UDim.new(0,3)
	UIListLayout_1.SortOrder = Enum.SortOrder.LayoutOrder

	UIPadding_3.Parent = Tabs_1
	UIPadding_3.PaddingBottom = UDim.new(0,3)
	UIPadding_3.PaddingTop = UDim.new(0,3)
	


	function Library:MakeNotification(popupData)
		local NotificationHolder = Instance.new("Frame")
		local UICorner_1 = Instance.new("UICorner")
		local NotificationTitle_1 = Instance.new("TextLabel")
		local UIPadding_1 = Instance.new("UIPadding")
		local NotificationText_1 = Instance.new("TextLabel")
		local UIPadding_2 = Instance.new("UIPadding")
		local NotificationIcon_1 = Instance.new("ImageLabel")

		NotificationHolder.Name = "NotificationHolder"
		NotificationHolder.Parent = FakeOrion
		NotificationHolder.AnchorPoint = Vector2.new(0.5, 0.5)
		NotificationHolder.BackgroundColor3 = Color3.fromRGB(36,36,36)
		NotificationHolder.BorderColor3 = Color3.fromRGB(0,0,0)
		NotificationHolder.BorderSizePixel = 0
		NotificationHolder.Position = UDim2.new(1.2, 0,0.9, 0)
		NotificationHolder.Size = UDim2.new(0, 271,0, 55)

		UICorner_1.Parent = NotificationHolder
		UICorner_1.CornerRadius = UDim.new(0,9)

		NotificationTitle_1.Name = "NotificationTitle"
		NotificationTitle_1.Parent = NotificationHolder
		NotificationTitle_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
		NotificationTitle_1.BackgroundTransparency = 1
		NotificationTitle_1.BorderColor3 = Color3.fromRGB(0,0,0)
		NotificationTitle_1.BorderSizePixel = 0
		NotificationTitle_1.Position = UDim2.new(0, 0,0.0781815946, 0)
		NotificationTitle_1.Size = UDim2.new(0, 271,0, 22)
		NotificationTitle_1.Font = Enum.Font.GothamBold
		NotificationTitle_1.Text = popupData.Name
		NotificationTitle_1.TextColor3 = Color3.fromRGB(255,255,255)
		NotificationTitle_1.TextSize = 14
		NotificationTitle_1.TextXAlignment = Enum.TextXAlignment.Left

		UIPadding_1.Parent = NotificationTitle_1
		UIPadding_1.PaddingLeft = UDim.new(0,30)

		NotificationText_1.Name = "NotificationText"
		NotificationText_1.Parent = NotificationHolder
		NotificationText_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
		NotificationText_1.BackgroundTransparency = 1
		NotificationText_1.BorderColor3 = Color3.fromRGB(0,0,0)
		NotificationText_1.BorderSizePixel = 0
		NotificationText_1.Position = UDim2.new(0, 0,0.479999989, 0)
		NotificationText_1.Size = UDim2.new(0, 271,0, 23)
		NotificationText_1.Font = Enum.Font.Gotham
		NotificationText_1.Text = popupData.Content
		NotificationText_1.TextColor3 = Color3.fromRGB(255,255,255)
		NotificationText_1.TextSize = 14
		NotificationText_1.TextXAlignment = Enum.TextXAlignment.Left

		UIPadding_2.Parent = NotificationText_1
		UIPadding_2.PaddingLeft = UDim.new(0,8)

		NotificationIcon_1.Name = "NotificationIcon"
		NotificationIcon_1.Parent = NotificationHolder
		NotificationIcon_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
		NotificationIcon_1.BackgroundTransparency = 1
		NotificationIcon_1.BorderColor3 = Color3.fromRGB(0,0,0)
		NotificationIcon_1.BorderSizePixel = 0
		NotificationIcon_1.Position = UDim2.new(0.0221402217, 0,0.131550744, 0)
		NotificationIcon_1.Size = UDim2.new(0, 19,0, 19)
		NotificationIcon_1.Image = "rbxassetid://"..popupData.Image

		local targetPosition1 = UDim2.new(0.85, 0,0.9, 0)
		local tweenInfo1 = TweenInfo.new(1, Enum.EasingStyle.Exponential)
		local tween1 = TweenService:Create(NotificationHolder, tweenInfo1, {Position = targetPosition1})
		local targetPosition2 = UDim2.new(1.2, 0,0.9, 0)
		local tweenInfo2 = TweenInfo.new(1, Enum.EasingStyle.Exponential)
		local tween2 = TweenService:Create(NotificationHolder, tweenInfo2, {Position = targetPosition2})

		tween1:Play()
		wait(popupData.Time)
		tween2:Play()
	end
	
	local Tabs = {}
	local first = true
	local currentTab = nil
	local currentIcon = nil
	function Tabs:MakeTab(tabData)
		local targetTabColorOn = Color3.fromRGB(255,255,255)
		local targetTabColorOff = Color3.fromRGB(130,130,130)

		local targetTabIconColorOn = Color3.fromRGB(255,255,255)
		local targetTabIconColorOff = Color3.fromRGB(130,130,130)    

		local TabBtnHolder_1 = Instance.new("Frame")
		local TabBtn_1 = Instance.new("TextButton")
		local UIPadding_2 = Instance.new("UIPadding")
		local TabIcon_1 = Instance.new("ImageLabel")	
		local Elements_1 = Instance.new("Frame")
		local ScrollingFrame_1 = Instance.new("ScrollingFrame")
		local UIPadding_6 = Instance.new("UIPadding")
		local UIListLayout_2 = Instance.new("UIListLayout")

		TabBtnHolder_1.Name = "TabBtnHolder"
		TabBtnHolder_1.Parent = Tabs_1
		TabBtnHolder_1.BackgroundColor3 = Color3.fromRGB(0,0,0)
		TabBtnHolder_1.BackgroundTransparency = 1
		TabBtnHolder_1.BorderColor3 = Color3.fromRGB(0,0,0)
		TabBtnHolder_1.BorderSizePixel = 0
		TabBtnHolder_1.Size = UDim2.new(0, 117,0, 19)

		TabBtn_1.Name = "TabBtn"
		TabBtn_1.Parent = TabBtnHolder_1
		TabBtn_1.Active = true
		TabBtn_1.BackgroundColor3 = Color3.fromRGB(130,130,130)
		TabBtn_1.BackgroundTransparency = 1
		TabBtn_1.BorderColor3 = Color3.fromRGB(0,0,0)
		TabBtn_1.BorderSizePixel = 0
		TabBtn_1.Position = UDim2.new(0, 0,0.105263159, 0)
		TabBtn_1.Size = UDim2.new(0, 117,0, 17)
		TabBtn_1.Font = Enum.Font.GothamBold
		TabBtn_1.Text = tabData.Name or "Tab"
		TabBtn_1.TextColor3 = Color3.fromRGB(130,130,130)
		TabBtn_1.TextSize = 12
		TabBtn_1.TextXAlignment = Enum.TextXAlignment.Left

		UIPadding_2.Parent = TabBtn_1
		UIPadding_2.PaddingLeft = UDim.new(0,27)

		TabIcon_1.Name = "TabIcon"
		TabIcon_1.Parent = TabBtnHolder_1
		TabIcon_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
		TabIcon_1.BackgroundTransparency = 1
		TabIcon_1.BorderColor3 = Color3.fromRGB(0,0,0)
		TabIcon_1.BorderSizePixel = 0
		TabIcon_1.Position = UDim2.new(0.0683760718, 0,0.105263159, 0)
		TabIcon_1.Size = UDim2.new(0, 15,0, 15)
		TabIcon_1.Image = tabData.Icon or ""
		TabIcon_1.ImageColor3 = Color3.fromRGB(130,130,130)

		Elements_1.Name = "Elements"
		Elements_1.Parent = ElementsHolder_1
		Elements_1.AnchorPoint = Vector2.new(0.5, 0.5)
		Elements_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
		Elements_1.BackgroundTransparency = 1
		Elements_1.BorderColor3 = Color3.fromRGB(0,0,0)
		Elements_1.BorderSizePixel = 0
		Elements_1.Position = UDim2.new(0.5, 0,0.5, 0)
		Elements_1.Size = UDim2.new(0, 286,0, 206)

		ScrollingFrame_1.Name = "ScrollingFrame"
		ScrollingFrame_1.Parent = Elements_1
		ScrollingFrame_1.Active = true
		ScrollingFrame_1.AnchorPoint = Vector2.new(0.5, 0.5)
		ScrollingFrame_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
		ScrollingFrame_1.BackgroundTransparency = 1
		ScrollingFrame_1.BorderColor3 = Color3.fromRGB(0,0,0)
		ScrollingFrame_1.BorderSizePixel = 0
		ScrollingFrame_1.Position = UDim2.new(0.5, 0,0.5, 0)
		ScrollingFrame_1.Size = UDim2.new(0, 286,0, 206)
		ScrollingFrame_1.ClipsDescendants = true
		ScrollingFrame_1.ScrollingEnabled = true
		ScrollingFrame_1.AutomaticCanvasSize = Enum.AutomaticSize.Y
		ScrollingFrame_1.BottomImage = "rbxasset://textures/ui/Scroll/scroll-bottom.png"
		ScrollingFrame_1.CanvasPosition = Vector2.new(0, 0)
		ScrollingFrame_1.CanvasSize = UDim2.new(0, 0,0.5, 0)
		ScrollingFrame_1.ElasticBehavior = Enum.ElasticBehavior.Never
		ScrollingFrame_1.HorizontalScrollBarInset = Enum.ScrollBarInset.None
		ScrollingFrame_1.MidImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
		ScrollingFrame_1.ScrollBarImageColor3 = Color3.fromRGB(81,81,81)
		ScrollingFrame_1.ScrollBarImageTransparency = 0
		ScrollingFrame_1.ScrollBarThickness = 5
		ScrollingFrame_1.ScrollingDirection = Enum.ScrollingDirection.Y
		ScrollingFrame_1.TopImage = "rbxasset://textures/ui/Scroll/scroll-top.png"
		ScrollingFrame_1.VerticalScrollBarInset = Enum.ScrollBarInset.None
		ScrollingFrame_1.VerticalScrollBarPosition = Enum.VerticalScrollBarPosition.Right

		UIPadding_6.Parent = ScrollingFrame_1
		UIPadding_6.PaddingBottom = UDim.new(0,6)
		UIPadding_6.PaddingLeft = UDim.new(0,2)
		UIPadding_6.PaddingTop = UDim.new(0,6)

		UIListLayout_2.Parent = ScrollingFrame_1
		UIListLayout_2.Padding = UDim.new(0,6)
		UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder

		local tweenInfo = TweenInfo.new(0.2)

		local tweenton = TweenService:Create(TabBtn_1, tweenInfo, {TextColor3 = targetTabColorOn})
		local tweentoff = TweenService:Create(TabBtn_1, tweenInfo, {TextColor3 = targetTabColorOff})

		local tweention = TweenService:Create(TabIcon_1, tweenInfo, {ImageColor3 = targetTabIconColorOn})
		local tweentioff = TweenService:Create(TabIcon_1, tweenInfo, {ImageColor3 = targetTabIconColorOff})

		if first then
			first = false
			Elements_1.Visible = true
			currentTab = TabBtn_1 -- Set the first tab as the current tab
			currentIcon = TabIcon_1
			tweenton:Play()
			tweention:Play()
		else
			Elements_1.Visible = false
		end

		TabBtn_1.MouseButton1Click:Connect(
			function()
				if currentTab then
					tweentoff:Play() -- Turn off color for the previous tab
				end
				if currentIcon then
					tweentioff:Play() -- Turn off color for the previous tab
				end
				tweenton:Play() -- Turn on color for the new tab
				tweention:Play()

				if currentTab and currentTab ~= TabBtn_1 then
					currentTab.TextColor3 = targetTabColorOff -- Set the color of the previously selected tab to off
				end
				if currentIcon and currentIcon ~= TabIcon_1 then
					currentIcon.ImageColor3 = targetTabColorOff -- Set the color of the previously selected tab to off
				end
				currentTab = TabBtn_1 -- Update the current tab
				currentIcon = TabIcon_1
				for i, v in next, ElementsHolder_1:GetChildren() do
					v.Visible = false
				end
				Elements_1.Visible = true
			end
		)

		local Elements = {}
		function Elements:AddSection(sectionData)
			local SectionFrame_1 = Instance.new("Frame")
			local SectionText_1 = Instance.new("TextLabel")
			local UIPadding_12 = Instance.new("UIPadding")
			SectionFrame_1.Name = "SectionFrame"
			SectionFrame_1.Parent = ScrollingFrame_1
			SectionFrame_1.BackgroundColor3 = Color3.fromRGB(47,47,47)
			SectionFrame_1.BackgroundTransparency = 1
			SectionFrame_1.BorderColor3 = Color3.fromRGB(0,0,0)
			SectionFrame_1.BorderSizePixel = 0
			SectionFrame_1.Position = UDim2.new(0, 0,0.845360816, 0)
			SectionFrame_1.Size = UDim2.new(0, 275,0, 17)

			SectionText_1.Name = "SectionText"
			SectionText_1.Parent = SectionFrame_1
			SectionText_1.Active = true
			SectionText_1.AnchorPoint = Vector2.new(0.5, 0.5)
			SectionText_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
			SectionText_1.BackgroundTransparency = 1
			SectionText_1.BorderColor3 = Color3.fromRGB(0,0,0)
			SectionText_1.BorderSizePixel = 0
			SectionText_1.Position = UDim2.new(0.5, 0,0.5, 0)
			SectionText_1.Size = UDim2.new(0, 275,0, 17)
			SectionText_1.Font = Enum.Font.GothamBold
			SectionText_1.Text = sectionData.Name or "Section" 
			SectionText_1.TextColor3 = Color3.fromRGB(255,255,255)
			SectionText_1.TextSize = 12
			SectionText_1.TextXAlignment = Enum.TextXAlignment.Left

			UIPadding_12.Parent = SectionText_1
			UIPadding_12.PaddingLeft = UDim.new(0,8)
		end
		function Elements:AddLabel(labelData)
			local LabelFrame_1 = Instance.new("Frame")
			local UIStroke_10 = Instance.new("UIStroke")
			local UICorner_16 = Instance.new("UICorner")
			local LabelIcon_1 = Instance.new("ImageLabel")
			local LabelText_1 = Instance.new("TextLabel")
			local UIPadding_13 = Instance.new("UIPadding")

			LabelFrame_1.Name = "LabelFrame"
			LabelFrame_1.Parent = ScrollingFrame_1
			LabelFrame_1.BackgroundColor3 = Color3.fromRGB(47,47,47)
			LabelFrame_1.BorderColor3 = Color3.fromRGB(0,0,0)
			LabelFrame_1.BorderSizePixel = 0
			LabelFrame_1.Position = UDim2.new(0, 0,0.845360816, 0)
			LabelFrame_1.Size = UDim2.new(0, 275,0, 26)

			UIStroke_10.Parent = LabelFrame_1
			UIStroke_10.Color = Color3.fromRGB(81,81,81)
			UIStroke_10.Thickness = 1

			UICorner_16.Parent = LabelFrame_1
			UICorner_16.CornerRadius = UDim.new(0,6)

			LabelText_1.Name = "LabelText"
			LabelText_1.Parent = LabelFrame_1
			LabelText_1.Active = true
			LabelText_1.AnchorPoint = Vector2.new(0.5, 0.5)
			LabelText_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
			LabelText_1.BackgroundTransparency = 1
			LabelText_1.BorderColor3 = Color3.fromRGB(0,0,0)
			LabelText_1.BorderSizePixel = 0
			LabelText_1.Position = UDim2.new(0.5, 0,0.5, 0)
			LabelText_1.Size = UDim2.new(0, 275,0, 26)
			LabelText_1.Font = Enum.Font.GothamBold
			LabelText_1.Text = labelData.Name or "Label" 
			LabelText_1.TextColor3 = Color3.fromRGB(255,255,255)
			LabelText_1.TextSize = 14
			LabelText_1.TextXAlignment = Enum.TextXAlignment.Left

			UIPadding_13.Parent = LabelText_1
			UIPadding_13.PaddingLeft = UDim.new(0,8)
		end
		function Elements:AddButton(buttonData)
			buttonData.Callback = buttonData.Callback or function()
			end

			local targetButtonColorOn = Color3.fromRGB(110, 110, 110)
			local targetButtonColorOff = Color3.fromRGB(47, 47, 47)

			local ButtonFrame_1 = Instance.new("Frame")
			local UIStroke_3 = Instance.new("UIStroke")
			local UICorner_6 = Instance.new("UICorner")
			local ButtonBtn_1 = Instance.new("TextButton")
			local UIPadding_5 = Instance.new("UIPadding")
			local ButtonIcon_1 = Instance.new("ImageLabel")
			ButtonFrame_1.Name = "ButtonFrame"
			ButtonFrame_1.Parent = ScrollingFrame_1
			ButtonFrame_1.BackgroundColor3 = Color3.fromRGB(47,47,47)
			ButtonFrame_1.BorderColor3 = Color3.fromRGB(0,0,0)
			ButtonFrame_1.BorderSizePixel = 0
			ButtonFrame_1.Size = UDim2.new(0, 275,0, 30)

			UIStroke_3.Parent = ButtonFrame_1
			UIStroke_3.Color = Color3.fromRGB(81,81,81)
			UIStroke_3.Thickness = 1

			UICorner_6.Parent = ButtonFrame_1
			UICorner_6.CornerRadius = UDim.new(0,6)

			ButtonBtn_1.Name = "ButtonBtn"
			ButtonBtn_1.Parent = ButtonFrame_1
			ButtonBtn_1.Active = true
			ButtonBtn_1.AnchorPoint = Vector2.new(0.5, 0.5)
			ButtonBtn_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
			ButtonBtn_1.BackgroundTransparency = 1
			ButtonBtn_1.BorderColor3 = Color3.fromRGB(0,0,0)
			ButtonBtn_1.BorderSizePixel = 0
			ButtonBtn_1.Position = UDim2.new(0.5, 0,0.5, 0)
			ButtonBtn_1.Size = UDim2.new(0, 275,0, 30)
			ButtonBtn_1.Font = Enum.Font.GothamBold
			ButtonBtn_1.Text = buttonData.Name or "Button" -- Use the 'Name' field from the provided table
			ButtonBtn_1.TextColor3 = Color3.fromRGB(255,255,255)
			ButtonBtn_1.TextSize = 14
			ButtonBtn_1.TextXAlignment = Enum.TextXAlignment.Left

			UIPadding_5.Parent = ButtonBtn_1
			UIPadding_5.PaddingLeft = UDim.new(0,8)

			ButtonIcon_1.Name = "ButtonIcon"
			ButtonIcon_1.Parent = ButtonFrame_1
			ButtonIcon_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
			ButtonIcon_1.BackgroundTransparency = 1
			ButtonIcon_1.BorderColor3 = Color3.fromRGB(0,0,0)
			ButtonIcon_1.BorderSizePixel = 0
			ButtonIcon_1.Position = UDim2.new(0.901818156, 0,0.166666672, 0)
			ButtonIcon_1.Size = UDim2.new(0, 20,0, 20)
			ButtonIcon_1.Image = "rbxassetid://14599867622"

			local tweenInfo = TweenInfo.new(0.2)

			local tweenbon = TweenService:Create(ButtonFrame_1, tweenInfo, {BackgroundColor3 = targetButtonColorOn})
			local tweenboff = TweenService:Create(ButtonFrame_1, tweenInfo, {BackgroundColor3 = targetButtonColorOff})

			ButtonBtn_1.MouseButton1Click:Connect(
				function()
					tweenbon:Play()
					wait(0.1)
					tweenboff:Play()
					buttonData.Callback()
				end
			)

		end
		function Elements:AddToggle(toggleData)
			toggleData.Callback = toggleData.Callback or function()
			end

			local toggled = toggleData.Default or false
			local debounce = false


			local targetToggleColorOn = Color3.fromRGB(60,111,246)
			local targetToggleColorOff = Color3.fromRGB(36,36,36)
			local targetToggleIconOff = Color3.fromRGB(36,36,36)
			local targetToggleIconOn = Color3.fromRGB(255,255,255)

			local ToggleFrame_2 = Instance.new("Frame")
			local UIStroke_5 = Instance.new("UIStroke")
			local UICorner_9 = Instance.new("UICorner")
			local ToggleBtn_2 = Instance.new("TextButton")
			local UIPadding_8 = Instance.new("UIPadding")
			local Toggler_2 = Instance.new("Frame")
			local UICorner_10 = Instance.new("UICorner")
			local ImageLabel_2 = Instance.new("ImageLabel")

			ToggleFrame_2.Name = "ToggleFrame"
			ToggleFrame_2.Parent = ScrollingFrame_1
			ToggleFrame_2.BackgroundColor3 = Color3.fromRGB(47,47,47)
			ToggleFrame_2.BorderColor3 = Color3.fromRGB(0,0,0)
			ToggleFrame_2.BorderSizePixel = 0
			ToggleFrame_2.Size = UDim2.new(0, 275,0, 30)

			UIStroke_5.Parent = ToggleFrame_2
			UIStroke_5.Color = Color3.fromRGB(81,81,81)
			UIStroke_5.Thickness = 1

			UICorner_9.Parent = ToggleFrame_2
			UICorner_9.CornerRadius = UDim.new(0,6)

			ToggleBtn_2.Name = "ToggleBtn"
			ToggleBtn_2.Parent = ToggleFrame_2
			ToggleBtn_2.Active = true
			ToggleBtn_2.AnchorPoint = Vector2.new(0.5, 0.5)
			ToggleBtn_2.BackgroundColor3 = Color3.fromRGB(255,255,255)
			ToggleBtn_2.BackgroundTransparency = 1
			ToggleBtn_2.BorderColor3 = Color3.fromRGB(0,0,0)
			ToggleBtn_2.BorderSizePixel = 0
			ToggleBtn_2.Position = UDim2.new(0.5, 0,0.5, 0)
			ToggleBtn_2.Size = UDim2.new(0, 275,0, 30)
			ToggleBtn_2.Font = Enum.Font.GothamBold
			ToggleBtn_2.Text = toggleData.Name or "Toggle" 
			ToggleBtn_2.TextColor3 = Color3.fromRGB(255,255,255)
			ToggleBtn_2.TextSize = 14
			ToggleBtn_2.TextXAlignment = Enum.TextXAlignment.Left

			UIPadding_8.Parent = ToggleBtn_2
			UIPadding_8.PaddingLeft = UDim.new(0,8)

			Toggler_2.Name = "Toggler"
			Toggler_2.Parent = ToggleFrame_2
			Toggler_2.BackgroundColor3 = Color3.fromRGB(36,36,36)
			Toggler_2.BorderColor3 = Color3.fromRGB(0,0,0)
			Toggler_2.BorderSizePixel = 0
			Toggler_2.Position = UDim2.new(0.898181796, 0,0.13333334, 0)
			Toggler_2.Size = UDim2.new(0, 22,0, 22)

			UICorner_10.Parent = Toggler_2
			UICorner_10.CornerRadius = UDim.new(0,6)

			ImageLabel_2.Parent = Toggler_2
			ImageLabel_2.AnchorPoint = Vector2.new(0.5, 0.5)
			ImageLabel_2.BackgroundColor3 = Color3.fromRGB(255,255,255)
			ImageLabel_2.BackgroundTransparency = 1
			ImageLabel_2.BorderColor3 = Color3.fromRGB(0,0,0)
			ImageLabel_2.BorderSizePixel = 0
			ImageLabel_2.Position = UDim2.new(0.5, 0,0.5, 0)
			ImageLabel_2.Size = UDim2.new(0, 14,0, 14)
			ImageLabel_2.Image = "rbxassetid://14599903885"
			ImageLabel_2.ImageTransparency = 0
			ImageLabel_2.ImageColor3 = Color3.fromRGB(36,36,36)

			local tweenInfo = TweenInfo.new(0.2)

			local tweentcon = TweenService:Create(Toggler_2, tweenInfo, {BackgroundColor3 = targetToggleColorOn})
			local tweentcoff = TweenService:Create(Toggler_2, tweenInfo, {BackgroundColor3 = targetToggleColorOff})

			local tweenticoff = TweenService:Create(ImageLabel_2, tweenInfo, {ImageColor3 = targetToggleIconOff})
			local tweenticon = TweenService:Create(ImageLabel_2, tweenInfo, {ImageColor3 = targetToggleIconOn})


			if toggled then
				tweentcon:Play()
				tweenticon:Play()
			else
				tweentcoff:Play()
				tweenticoff:Play()
			end

			ToggleBtn_2.MouseButton1Click:Connect(
				function()
					if debounce == false then
						if toggled == false then
							debounce = true
							tweentcon:Play()
							tweenticon:Play()
							debounce = false
							toggled = true
							pcall(toggleData.Callback, toggled)
						elseif toggled == true then
							debounce = true
							tweentcoff:Play()
							tweenticoff:Play()
							debounce = false
							toggled = false
							pcall(toggleData.Callback, toggled)
						end
					end
				end
			)

		end
		function Elements:AddSlider(sliderData)
			sliderData.Callback = sliderData.Callback or function()
			end

			local SliderFrame_1 = Instance.new("Frame")
			local UIStroke_6 = Instance.new("UIStroke")
			local UICorner_11 = Instance.new("UICorner")
			local SliderName_1 = Instance.new("TextLabel")
			local UIPadding_9 = Instance.new("UIPadding")
			local SliderHolder_1 = Instance.new("Frame")
			local UICorner_12 = Instance.new("UICorner")
			local UIStroke_7 = Instance.new("UIStroke")
			local SliderBtn_1 = Instance.new("TextButton")
			local SliderInner_1 = Instance.new("Frame")
			local UICorner_13 = Instance.new("UICorner")
			local ValueName_1 = Instance.new("TextLabel")
			local UIPadding_10 = Instance.new("UIPadding")

			SliderFrame_1.Name = "SliderFrame"
			SliderFrame_1.Parent = ScrollingFrame_1
			SliderFrame_1.BackgroundColor3 = Color3.fromRGB(47,47,47)
			SliderFrame_1.BorderColor3 = Color3.fromRGB(0,0,0)
			SliderFrame_1.BorderSizePixel = 0
			SliderFrame_1.Position = UDim2.new(0, 0,0.556701005, 0)
			SliderFrame_1.Size = UDim2.new(0, 275,0, 51)

			UIStroke_6.Parent = SliderFrame_1
			UIStroke_6.Color = Color3.fromRGB(81,81,81)
			UIStroke_6.Thickness = 1

			UICorner_11.Parent = SliderFrame_1
			UICorner_11.CornerRadius = UDim.new(0,6)

			SliderName_1.Name = "SliderName"
			SliderName_1.Parent = SliderFrame_1
			SliderName_1.Active = true
			SliderName_1.AnchorPoint = Vector2.new(0.5, 0.5)
			SliderName_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
			SliderName_1.BackgroundTransparency = 1
			SliderName_1.BorderColor3 = Color3.fromRGB(0,0,0)
			SliderName_1.BorderSizePixel = 0
			SliderName_1.Position = UDim2.new(0.5, 0,0.186274514, 0)
			SliderName_1.Size = UDim2.new(0, 275,0, 22)
			SliderName_1.Font = Enum.Font.GothamBold
			SliderName_1.Text = sliderData.Name or "Slider"
			SliderName_1.TextColor3 = Color3.fromRGB(255,255,255)
			SliderName_1.TextSize = 14
			SliderName_1.TextXAlignment = Enum.TextXAlignment.Left

			UIPadding_9.Parent = SliderName_1
			UIPadding_9.PaddingLeft = UDim.new(0,8)
			UIPadding_9.PaddingTop = UDim.new(0,7)

			SliderHolder_1.Name = "SliderHolder"
			SliderHolder_1.Parent = SliderFrame_1
			SliderHolder_1.BackgroundColor3 = Color3.fromRGB(75,75,75)
			SliderHolder_1.BorderColor3 = Color3.fromRGB(0,0,0)
			SliderHolder_1.BorderSizePixel = 0
			SliderHolder_1.Position = UDim2.new(0.0250000004, 0,0.469999999, 0)
			SliderHolder_1.Size = UDim2.new(0, 261,0, 19)

			UICorner_12.Parent = SliderHolder_1
			UICorner_12.CornerRadius = UDim.new(0,6)

			UIStroke_7.Parent = SliderHolder_1
			UIStroke_7.Color = Color3.fromRGB(156,156,156)
			UIStroke_7.Thickness = 1

			SliderBtn_1.Name = "SliderBtn"
			SliderBtn_1.Parent = SliderHolder_1
			SliderBtn_1.Active = true
			SliderBtn_1.AnchorPoint = Vector2.new(0.5, 0.5)
			SliderBtn_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
			SliderBtn_1.BackgroundTransparency = 1
			SliderBtn_1.BorderColor3 = Color3.fromRGB(0,0,0)
			SliderBtn_1.BorderSizePixel = 0
			SliderBtn_1.Position = UDim2.new(0.5, 0,0.5, 0)
			SliderBtn_1.Size = UDim2.new(0, 261,0, 19)
			SliderBtn_1.Font = Enum.Font.SourceSans
			SliderBtn_1.Text = ""
			SliderBtn_1.TextSize = 14

			SliderInner_1.Name = "SliderInner"
			SliderInner_1.Parent = SliderBtn_1
			SliderInner_1.BackgroundColor3 = Color3.fromRGB(156,156,156)
			SliderInner_1.BorderColor3 = Color3.fromRGB(0,0,0)
			SliderInner_1.BorderSizePixel = 0
			SliderInner_1.Size = UDim2.new(0, 0,0, 19)

			UICorner_13.Parent = SliderInner_1
			UICorner_13.CornerRadius = UDim.new(0,6)

			ValueName_1.Name = "ValueName"
			ValueName_1.Parent = SliderHolder_1
			ValueName_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
			ValueName_1.BackgroundTransparency = 1
			ValueName_1.BorderColor3 = Color3.fromRGB(0,0,0)
			ValueName_1.BorderSizePixel = 0
			ValueName_1.Size = UDim2.new(0, 200,0, 19)
			ValueName_1.Font = Enum.Font.GothamBold
			ValueName_1.Text = "0 "..sliderData.ValueName
			ValueName_1.TextColor3 = Color3.fromRGB(255,255,255)
			ValueName_1.TextSize = 10
			ValueName_1.TextXAlignment = Enum.TextXAlignment.Left

			UIPadding_10.Parent = ValueName_1
			UIPadding_10.PaddingLeft = UDim.new(0,9)
			local isDragging = false

			SliderBtn_1.InputBegan:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
					isDragging = true
				end
			end)

			game:GetService("UserInputService").InputEnded:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
					isDragging = false
				end
			end)

			game:GetService("RunService").RenderStepped:Connect(function()
				if isDragging then
					local mousePosition = game:GetService("UserInputService"):GetMouseLocation()
					local sliderPosition = SliderBtn_1.AbsolutePosition
					local sliderWidth = SliderBtn_1.AbsoluteSize.X
					local fillWidth = math.clamp(mousePosition.X - sliderPosition.X, 0, sliderWidth)
					SliderInner_1.Size = UDim2.new(0, fillWidth, 1, 0)

					-- Calculate and display value label
					local value = fillWidth / sliderWidth
					local minValue = 0
					local maxValue = sliderData.Max
					local valueName = sliderData.ValueName
					local displayValue = math.floor(minValue + (maxValue - minValue) * value, 2)
					ValueName_1.Text = tostring(displayValue) .. " " .. tostring(valueName)
					sliderData.Callback(displayValue)
				end
			end)
		end
		function Elements:AddTextbox(boxData)
			boxData.Callback = boxData.Callback or function()
			end
			local BoxFrame_1 = Instance.new("Frame")
			local UIStroke_8 = Instance.new("UIStroke")
			local UICorner_14 = Instance.new("UICorner")
			local BoxText_1 = Instance.new("TextLabel")
			local UIPadding_11 = Instance.new("UIPadding")
			local BoxHolder_1 = Instance.new("Frame")
			local UICorner_15 = Instance.new("UICorner")
			local UIStroke_9 = Instance.new("UIStroke")
			local TextBox_1 = Instance.new("TextBox")
			BoxFrame_1.Name = "BoxFrame"
			BoxFrame_1.Parent = ScrollingFrame_1
			BoxFrame_1.BackgroundColor3 = Color3.fromRGB(47,47,47)
			BoxFrame_1.BorderColor3 = Color3.fromRGB(0,0,0)
			BoxFrame_1.BorderSizePixel = 0
			BoxFrame_1.Size = UDim2.new(0, 275,0, 30)

			UIStroke_8.Parent = BoxFrame_1
			UIStroke_8.Color = Color3.fromRGB(81,81,81)
			UIStroke_8.Thickness = 1

			UICorner_14.Parent = BoxFrame_1
			UICorner_14.CornerRadius = UDim.new(0,6)

			BoxText_1.Name = "BoxText"
			BoxText_1.Parent = BoxFrame_1
			BoxText_1.Active = true
			BoxText_1.AnchorPoint = Vector2.new(0.5, 0.5)
			BoxText_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
			BoxText_1.BackgroundTransparency = 1
			BoxText_1.BorderColor3 = Color3.fromRGB(0,0,0)
			BoxText_1.BorderSizePixel = 0
			BoxText_1.Position = UDim2.new(0.5, 0,0.5, 0)
			BoxText_1.Size = UDim2.new(0, 275,0, 30)
			BoxText_1.Font = Enum.Font.GothamBold
			BoxText_1.Text = boxData.Name or "Box"
			BoxText_1.TextColor3 = Color3.fromRGB(255,255,255)
			BoxText_1.TextSize = 14
			BoxText_1.TextXAlignment = Enum.TextXAlignment.Left

			UIPadding_11.Parent = BoxText_1
			UIPadding_11.PaddingLeft = UDim.new(0,8)

			BoxHolder_1.Name = "BoxHolder"
			BoxHolder_1.Parent = BoxFrame_1
			BoxHolder_1.BackgroundColor3 = Color3.fromRGB(45,45,45)
			BoxHolder_1.BorderColor3 = Color3.fromRGB(0,0,0)
			BoxHolder_1.BorderSizePixel = 0
			BoxHolder_1.Position = UDim2.new(0.803636372, 0,0.166666672, 0)
			BoxHolder_1.Size = UDim2.new(0, 48,0, 20)

			UICorner_15.Parent = BoxHolder_1
			UICorner_15.CornerRadius = UDim.new(0,4)

			UIStroke_9.Parent = BoxHolder_1
			UIStroke_9.Color = Color3.fromRGB(81,81,81)
			UIStroke_9.Thickness = 1

			TextBox_1.Parent = BoxHolder_1
			TextBox_1.Active = true
			TextBox_1.AnchorPoint = Vector2.new(0.5, 0.5)
			TextBox_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
			TextBox_1.BackgroundTransparency = 1
			TextBox_1.BorderColor3 = Color3.fromRGB(0,0,0)
			TextBox_1.BorderSizePixel = 0
			TextBox_1.CursorPosition = -1
			TextBox_1.Position = UDim2.new(0.5, 0,0.5, 0)
			TextBox_1.Size = UDim2.new(0, 48,0, 20)
			TextBox_1.ClipsDescendants = true
			TextBox_1.Font = Enum.Font.GothamBold
			TextBox_1.PlaceholderColor3 = Color3.fromRGB(255,255,255)
			TextBox_1.PlaceholderText = boxData.Default or "Input"
			TextBox_1.Text = ""
			TextBox_1.TextColor3 = Color3.fromRGB(255,255,255)
			TextBox_1.TextSize = 11

			TextBox_1.FocusLost:Connect(function()
				boxData.Callback(TextBox_1.Text)
			end)
		end
		function Elements:AddDropdown(dropdownData)
			local DropDownFrame = Instance.new("Frame")
			local UIStroke_1 = Instance.new("UIStroke")
			local UICorner_1 = Instance.new("UICorner")
			local DropDownTopHolder_1 = Instance.new("Frame")
			local DropDownBtn_1 = Instance.new("ImageButton")
			local DropDownText_1 = Instance.new("TextLabel")
			local UIPadding_1 = Instance.new("UIPadding")
			local SelectedItemText_1 = Instance.new("TextLabel")
			local UIPadding_2 = Instance.new("UIPadding")
			local Line_1 = Instance.new("Frame")
			local UICorner_2 = Instance.new("UICorner")
			local UIStroke_2 = Instance.new("UIStroke")
			local ItemsFrameHolder_1 = Instance.new("Frame")
			local ItemsFrame_1 = Instance.new("ScrollingFrame")
			local OptionFrame_1 = Instance.new("Frame")
			local OptionButton_1 = Instance.new("TextButton")
			local UIPadding_3 = Instance.new("UIPadding")
			local UIListLayout_1 = Instance.new("UIListLayout")
			local UIPadding_4 = Instance.new("UIPadding")

			-- Properties:
			DropDownFrame.Name = "DropDownFrame"
			DropDownFrame.Parent = ScrollingFrame_1
			DropDownFrame.ClipsDescendants = true
			DropDownFrame.BackgroundColor3 = Color3.fromRGB(47,47,47)
			DropDownFrame.BorderColor3 = Color3.fromRGB(0,0,0)
			DropDownFrame.BorderSizePixel = 0
			DropDownFrame.Position = UDim2.new(0.0809859186, 0,0.252577305, 0)
			DropDownFrame.Size = UDim2.new(0, 275,0, 30)

			UIStroke_1.Parent = DropDownFrame
			UIStroke_1.Color = Color3.fromRGB(81,81,81)
			UIStroke_1.Thickness = 1

			UICorner_1.Parent = DropDownFrame
			UICorner_1.CornerRadius = UDim.new(0,6)

			DropDownTopHolder_1.Name = "DropDownTopHolder"
			DropDownTopHolder_1.Parent = DropDownFrame
			DropDownTopHolder_1.BackgroundColor3 = Color3.fromRGB(47,47,47)
			DropDownTopHolder_1.BackgroundTransparency = 0
			DropDownTopHolder_1.BorderColor3 = Color3.fromRGB(0,0,0)
			DropDownTopHolder_1.BorderSizePixel = 0
			DropDownTopHolder_1.Size = UDim2.new(0, 275,0, 30)

			DropDownBtn_1.Name = "DropDownBtn"
			DropDownBtn_1.Parent = DropDownTopHolder_1
			DropDownBtn_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
			DropDownBtn_1.BackgroundTransparency = 1
			DropDownBtn_1.BorderColor3 = Color3.fromRGB(0,0,0)
			DropDownBtn_1.BorderSizePixel = 0
			DropDownBtn_1.Position = UDim2.new(0.901818156, 0,0.166666672, 0)
			DropDownBtn_1.Rotation = -90
			DropDownBtn_1.Size = UDim2.new(0, 18,0, 18)
			DropDownBtn_1.Image = "rbxassetid://14610322704"

			DropDownText_1.Name = "DropDownText"
			DropDownText_1.Parent = DropDownTopHolder_1
			DropDownText_1.Active = true
			DropDownText_1.AnchorPoint = Vector2.new(0.5, 0.5)
			DropDownText_1.BackgroundColor3 = Color3.fromRGB(47,47,47)
			DropDownText_1.BackgroundTransparency = 0
			DropDownText_1.BorderColor3 = Color3.fromRGB(0,0,0)
			DropDownText_1.BorderSizePixel = 0
			DropDownText_1.Position = UDim2.new(0.229000002, 0,0.479999989, 0)
			DropDownText_1.Size = UDim2.new(0, 126,0, 29)
			DropDownText_1.Font = Enum.Font.GothamBold
			DropDownText_1.Text = dropdownData.Name or "Dropdown"
			DropDownText_1.TextColor3 = Color3.fromRGB(255,255,255)
			DropDownText_1.TextSize = 14
			DropDownText_1.TextXAlignment = Enum.TextXAlignment.Left

			UIPadding_1.Parent = DropDownText_1
			UIPadding_1.PaddingLeft = UDim.new(0,8)

			SelectedItemText_1.Name = "SelectedItemText"
			SelectedItemText_1.Parent = DropDownTopHolder_1
			SelectedItemText_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
			SelectedItemText_1.BackgroundTransparency = 1
			SelectedItemText_1.BorderColor3 = Color3.fromRGB(0,0,0)
			SelectedItemText_1.BorderSizePixel = 0
			SelectedItemText_1.Position = UDim2.new(0.48300001, 0,0.100000001, 0)
			SelectedItemText_1.Size = UDim2.new(0, 114,0, 23)
			SelectedItemText_1.Font = Enum.Font.Gotham
			SelectedItemText_1.Text = dropdownData.Default or "..."
			SelectedItemText_1.TextColor3 = Color3.fromRGB(255,255,255)
			SelectedItemText_1.TextSize = 12
			SelectedItemText_1.TextXAlignment = Enum.TextXAlignment.Right

			UIPadding_2.Parent = SelectedItemText_1
			UIPadding_2.PaddingRight = UDim.new(0,7)

			Line_1.Name = "Line"
			Line_1.Parent = DropDownTopHolder_1
			Line_1.BackgroundColor3 = Color3.fromRGB(81,81,81)
			Line_1.BackgroundTransparency = 1
			Line_1.BorderColor3 = Color3.fromRGB(0,0,0)
			Line_1.BorderSizePixel = 0
			Line_1.Size = UDim2.new(0, 275,0, 30)

			UICorner_2.Parent = Line_1
			UICorner_2.CornerRadius = UDim.new(0,6)

			UIStroke_2.Parent = Line_1
			UIStroke_2.Color = Color3.fromRGB(81,81,81)
			UIStroke_2.Thickness = 1

			ItemsFrameHolder_1.Name = "ItemsFrameHolder"
			ItemsFrameHolder_1.Parent = DropDownFrame
			ItemsFrameHolder_1.Visible = false
			ItemsFrameHolder_1.ClipsDescendants = true
			ItemsFrameHolder_1.AnchorPoint = Vector2.new(0.5, 0.5)
			ItemsFrameHolder_1.AutomaticSize = Enum.AutomaticSize.Y
			ItemsFrameHolder_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
			ItemsFrameHolder_1.BackgroundTransparency = 1
			ItemsFrameHolder_1.BorderColor3 = Color3.fromRGB(0,0,0)
			ItemsFrameHolder_1.BorderSizePixel = 0
			ItemsFrameHolder_1.Position = UDim2.new(0.5, 0,0.649999976, 0)
			ItemsFrameHolder_1.Size = UDim2.new(0, 275,0, 82)
			ItemsFrameHolder_1.SizeConstraint = Enum.SizeConstraint.RelativeYY

			ItemsFrame_1.Name = "ItemsFrame"
			ItemsFrame_1.Parent = ItemsFrameHolder_1
			ItemsFrame_1.Active = true
			ItemsFrame_1.AnchorPoint = Vector2.new(0.5, 0.5)
			ItemsFrame_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
			ItemsFrame_1.BackgroundTransparency = 1
			ItemsFrame_1.BorderColor3 = Color3.fromRGB(0,0,0)
			ItemsFrame_1.BorderSizePixel = 0
			ItemsFrame_1.Position = UDim2.new(0.5, 0,0.5, 0)
			ItemsFrame_1.Size = UDim2.new(0, 275,0, 82)
			ItemsFrame_1.ClipsDescendants = true
			ItemsFrame_1.AutomaticCanvasSize = Enum.AutomaticSize.Y
			ItemsFrame_1.BottomImage = "rbxasset://textures/ui/Scroll/scroll-bottom.png"
			ItemsFrame_1.CanvasPosition = Vector2.new(0, 0)
			ItemsFrame_1.CanvasSize = UDim2.new(0, 0,0.5, 0)
			ItemsFrame_1.ElasticBehavior = Enum.ElasticBehavior.Never
			ItemsFrame_1.HorizontalScrollBarInset = Enum.ScrollBarInset.None
			ItemsFrame_1.MidImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
			ItemsFrame_1.ScrollBarImageColor3 = Color3.fromRGB(81,81,81)
			ItemsFrame_1.ScrollBarImageTransparency = 0
			ItemsFrame_1.ScrollBarThickness = 5
			ItemsFrame_1.ScrollingDirection = Enum.ScrollingDirection.XY
			ItemsFrame_1.TopImage = "rbxasset://textures/ui/Scroll/scroll-top.png"
			ItemsFrame_1.VerticalScrollBarInset = Enum.ScrollBarInset.None
			ItemsFrame_1.VerticalScrollBarPosition = Enum.VerticalScrollBarPosition.Right

			OptionFrame_1.Name = "OptionFrame"
			OptionFrame_1.Parent = ItemsFrame_1
			OptionFrame_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
			OptionFrame_1.BackgroundTransparency = 1
			OptionFrame_1.BorderColor3 = Color3.fromRGB(0,0,0)
			OptionFrame_1.BorderSizePixel = 0
			OptionFrame_1.Size = UDim2.new(0, 276,0, 19)

			OptionButton_1.Name = "OptionButton"
			OptionButton_1.Parent = OptionFrame_1
			OptionButton_1.Active = true
			OptionButton_1.AnchorPoint = Vector2.new(0.5, 0.5)
			OptionButton_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
			OptionButton_1.BackgroundTransparency = 1
			OptionButton_1.BorderColor3 = Color3.fromRGB(0,0,0)
			OptionButton_1.BorderSizePixel = 0
			OptionButton_1.Position = UDim2.new(0.5, 0,0.5, 0)
			OptionButton_1.Size = UDim2.new(0, 276,0, 19)
			OptionButton_1.Font = Enum.Font.Gotham
			OptionButton_1.Text = "Options:"
			OptionButton_1.TextColor3 = Color3.fromRGB(255,255,255)
			OptionButton_1.TextSize = 11
			OptionButton_1.TextXAlignment = Enum.TextXAlignment.Left

			UIPadding_3.Parent = OptionButton_1
			UIPadding_3.PaddingLeft = UDim.new(0,8)

			UIListLayout_1.Parent = ItemsFrame_1
			UIListLayout_1.Padding = UDim.new(0,3)
			UIListLayout_1.SortOrder = Enum.SortOrder.LayoutOrder

			UIPadding_4.Parent = ItemsFrame_1
			UIPadding_4.PaddingBottom = UDim.new(0,3)
			UIPadding_4.PaddingTop = UDim.new(0,3)

			local function ToggleDropdown()
				local isExpanded = ItemsFrameHolder_1.Visible
				local targetSize = isExpanded and UDim2.new(0, 275, 0, 30) or UDim2.new(0, 275, 0, 110)

				local targetRotation = isExpanded and -90 or 90 -- Choose the target rotation based on expansion

				if isExpanded then
					ItemsFrameHolder_1.Visible = false
				else
					ItemsFrameHolder_1.Visible = true
				end

				local tweenInfo = TweenInfo.new(
					0.2, -- Duration
					Enum.EasingStyle.Quad, -- Easing style
					Enum.EasingDirection.Out -- Easing direction
				)

				local sizeTween = TweenService:Create(
					DropDownFrame,
					tweenInfo,
					{Size = targetSize}
				)

				local rotationTween = TweenService:Create(
					DropDownBtn_1,
					tweenInfo,
					{Rotation = targetRotation}
				)

				sizeTween:Play()
				rotationTween:Play()
			end

			local function CreateOptionButton(option)
				if option == OptionButton_1.Text then
					return -- Skip creating an option button for the default value
				end

				local OptionButtonClone = OptionButton_1:Clone()
				OptionButtonClone.Parent = ItemsFrame_1
				OptionButtonClone.Text = option
				OptionButtonClone.LayoutOrder = #ItemsFrame_1:GetChildren()
				OptionButtonClone.MouseButton1Click:Connect(function()
					SelectedItemText_1.Text = option
					ToggleDropdown()
					dropdownData.Callback(option) -- Call the provided callback function
				end)
			end

			local function InitializeDropdown()
				for _, option in ipairs(dropdownData.Options) do
					CreateOptionButton(option)
				end
			end

			InitializeDropdown() -- Call the InitializeDropdown function to set up the dropdown

			DropDownBtn_1.MouseButton1Click:Connect(ToggleDropdown)


		end

		return Elements
	end
	return Tabs
end
return Library
