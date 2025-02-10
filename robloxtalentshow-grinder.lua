local CorePlayer = game.Players.LocalPlayer
local CorePlayerGui = CorePlayer.PlayerGui
local tweenService = game:GetService("TweenService")

local isRunning = false

local function runLoop()
	while isRunning do
		print("running x")
		local CorePlayer = game.Players.LocalPlayer

		wait(2)
		CorePlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-17.6744003, 141.440918, -570.124939, -0.281871408, -0.25230965, 0.925682664, -1.95974099e-08, 0.964803278, 0.262972593, -0.959452212, 0.0741244406, -0.271950483)
		wait(3)
		CorePlayer.Character.HumanoidRootPart.CFrame = CFrame.new(69.7013397, 132.875, -559.377991, -0.527886808, 0.144466028, -0.836937904, 4.03793488e-09, 0.98542732, 0.170097157, 0.849314749, 0.089792043, -0.520194054)
		wait(4)
		CorePlayer.Character.HumanoidRootPart.CFrame = CFrame.new(184.742203, 123.249222, -202.998108, -0.85711962, -2.49500864e-08, -0.515117407, -4.4741725e-08, 1, 2.6011401e-08, 0.515117407, 4.53421229e-08, -0.85711962)
		wait(5)
		CorePlayer.Character.HumanoidRootPart.CFrame = CFrame.new(449.540405, 156.449966, -859.602478, -0.127042413, 0, 0.991897523, 0, 1, 0, -0.991897523, 0, -0.127042413)
		wait(4)
		CorePlayer.Character.HumanoidRootPart.CFrame = CFrame.new(372.13562, 151.912781, -731.875061, -0.941061139, 0.0339874364, -0.336524546, 1.19871002e-09, 0.994938672, 0.100484245, 0.338236481, 0.0945618153, -0.936298132)
		wait(120)
	end
end

local function AddGui()
	local ScreenGui = Instance.new("ScreenGui")
	local MainFrame = Instance.new("Frame")
	local title = Instance.new("TextLabel")
	local descrunloop = Instance.new("TextLabel")
	local toggleoffbtn = Instance.new("TextButton")
	local toggleoffbtnslider = Instance.new("TextButton")
	local toggleonbtn = Instance.new("TextButton")
	local toggleonbtnslider = Instance.new("TextButton")
	local modifyradius1 = Instance.new("UICorner")
	local modifyradius2 = Instance.new("UICorner")
	local modifyradius3 = Instance.new("UICorner")
	local modifyradius4 = Instance.new("UICorner")
	local modifygradience = Instance.new("UIGradient")
	
	
	modifyradius1.CornerRadius = UDim.new(0, 16)
	modifyradius2.CornerRadius = UDim.new(0, 16)
	modifyradius3.CornerRadius = UDim.new(0, 16)
	modifyradius4.CornerRadius = UDim.new(0, 16)
	
	modifygradience.Color = ColorSequence.new({
		ColorSequenceKeypoint.new(0, Color3.fromRGB(69, 112, 255)),
		ColorSequenceKeypoint.new(0.75, Color3.fromRGB(69, 112, 255)),
		ColorSequenceKeypoint.new(1, Color3.fromRGB(70, 53, 255))
	})
	
	ScreenGui.Name = "ForeverPack1Gui"
	ScreenGui.Parent = CorePlayerGui
	
	MainFrame.Position = UDim2.new(0.704, 0, 0.388, 0)
	MainFrame.Size = UDim2.new(0.296, 0, 0.612, 0)
	MainFrame.BackgroundColor3 = Color3.new(1, 0.717647, 0.0588235)
	MainFrame.Parent = ScreenGui
	
	title.Name = "Title"
	title.Text = "Frameworks - Roblox Talent Show(Version 1.0)"
	title.TextScaled = true
	title.Position = UDim2.new(0.158, 0, 0, 0)
	title.Size = UDim2.new(0.777, 0, 0.109, 0)
	title.Parent = MainFrame
	title.BackgroundTransparency = 1
	title.Font = Enum.Font.SourceSansBold
	title.TextColor3 = Color3.new(0, 0, 0)

	descrunloop.Name = "LoopToggleText"
	descrunloop.Text = "Loop Grind Obbies"
	descrunloop.TextScaled = true
	descrunloop.Position = UDim2.new(0.13, 0, 0.17, 0)
	descrunloop.Size = UDim2.new(0.336, 0, 0.128, 0)
	descrunloop.Parent = MainFrame
	descrunloop.BackgroundTransparency = 1
	descrunloop.Font = Enum.Font.SourceSansBold
	descrunloop.TextColor3 = Color3.new(0, 0, 0)
	
	toggleoffbtn.Name = "ToggleOff"
	toggleoffbtn.Text = ""
	toggleoffbtn.TextScaled = true
	toggleoffbtn.Position = UDim2.new(0.475, 0, 0.156, 0)
	toggleoffbtn.Size = UDim2.new(0.269, 0, 0.142, 0)
	toggleoffbtn.Parent = MainFrame
	toggleoffbtn.TextColor3 = Color3.new(0, 0, 0)
	toggleoffbtn.BackgroundColor3 = Color3.new(0.533333, 0.533333, 0.533333)
	modifyradius1.Parent = toggleoffbtn
	
	toggleonbtn.Name = "ToggleOn"
	toggleonbtn.Text = ""
	toggleonbtn.TextScaled = true
	toggleonbtn.Visible = false
	toggleonbtn.Position = UDim2.new(0.475, 0, 0.156, 0)
	toggleonbtn.Size = UDim2.new(0.269, 0, 0.142, 0)
	toggleonbtn.Parent = MainFrame
	toggleonbtn.TextColor3 = Color3.new(0, 0, 0)
	toggleonbtn.BackgroundColor3 = Color3.new(0.533333, 0.533333, 0.533333)
	modifyradius3.Parent = toggleonbtn
	modifygradience.Parent = toggleonbtn
	
	toggleoffbtnslider.Name = "Slider"
	toggleoffbtnslider.Text = ""
	toggleoffbtnslider.TextScaled = true
	toggleoffbtnslider.Position = UDim2.new(0.073, 0, 0.06, 0)
	toggleoffbtnslider.Size = UDim2.new(0.384, 0, 0.88, 0)
	toggleoffbtnslider.Parent = toggleoffbtn
	toggleoffbtnslider.TextColor3 = Color3.new(0, 0, 0)
	toggleoffbtnslider.BackgroundColor3 = Color3.new(0.192157, 0.192157, 0.192157)
	modifyradius2.Parent = toggleoffbtnslider
	
	toggleonbtnslider.Name = "Slider"
	toggleonbtnslider.Text = ""
	toggleonbtnslider.TextScaled = true
	toggleonbtnslider.Position = UDim2.new(0.54, 0,0.06, 0)
	toggleonbtnslider.Size = UDim2.new(0.384, 0, 0.88, 0)
	toggleonbtnslider.Parent = toggleonbtn
	toggleonbtnslider.TextColor3 = Color3.new(0, 0, 0)
	toggleonbtnslider.BackgroundColor3 = Color3.new(0.192157, 0.192157, 0.192157)
	modifyradius4.Parent = toggleonbtnslider
	
	toggleoffbtnslider.MouseButton1Click:Connect(function()
		local originalPosition = toggleoffbtnslider.Position
		local tweenInfo = TweenInfo.new(0.26, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
		local goal = {Position = originalPosition + UDim2.new(0.5, 0, 0, 0)}
		local tween = tweenService:Create(toggleoffbtnslider, tweenInfo, goal)
		tween:Play()
		tween.Completed:Connect(function()
			toggleoffbtn.Visible = false
			toggleonbtn.Visible = true
			toggleoffbtnslider.Position = originalPosition
		end)
		print("irego ropes")
		isRunning = true
		runLoop()
	end)
	
	toggleonbtnslider.MouseButton1Click:Connect(function()
		local originalPosition = toggleonbtnslider.Position
		local tweenInfo = TweenInfo.new(0.26, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
		local goal = {Position = originalPosition - UDim2.new(0.5, 0, 0, 0)}
		local tween = tweenService:Create(toggleonbtnslider, tweenInfo, goal)
		tween:Play()
		tween.Completed:Connect(function()
			toggleoffbtn.Visible = true
			toggleonbtn.Visible = false
			toggleonbtnslider.Position = originalPosition
		end)
		print("irego ropes")
		isRunning = false
		runLoop()
	end)
end

AddGui()
