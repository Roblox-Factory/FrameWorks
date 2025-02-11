local CorePlayer = game.Players.LocalPlayer
local CorePlayerGui = CorePlayer.PlayerGui
local tweenService = game:GetService("TweenService")
CorePlayer.CharacterAdded:Wait()
local Humanoid = CorePlayer.Character:WaitForChild("Humanoid")
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
	local ToggleBackFrame = Instance.new("Frame")
	local ToggleBack = Instance.new("TextButton")
	local title2 = Instance.new("TextLabel")
	local exit = Instance.new("TextButton")
	local exitdesc = Instance.new("TextLabel")
	
	ToggleBackFrame.Visible = false
	ToggleBack.Parent = ToggleBackFrame
	title2.Parent = ToggleBackFrame
	
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
	
	exit.Name = "Exit"
	exit.Parent = MainFrame
	exit.Size = UDim2.new(0.13, 0,0.17, 0)
	exit.Position = UDim2.new(-0, 0, 0, 0)
	exit.BackgroundColor3 = Color3.new(0, 0, 0)
	exit.Text = ""
	exit.BackgroundTransparency = 1
	
	exitdesc.Name = "ExitDesc"
	exitdesc.Parent = exit
	exitdesc.Size = UDim2.new(1,0,0.862,0)
	exitdesc.Position = UDim2.new(0,0,-0.055,0)
	exitdesc.TextScaled = true
	exitdesc.Text = "X"
	exitdesc.BackgroundTransparency = 1
	exitdesc.TextColor3 = Color3.new(0,0,0)
	
	ToggleBackFrame.BackgroundColor3 = Color3.new(1, 0.717647, 0.0588235)
	ToggleBackFrame.Parent = ScreenGui
	ToggleBackFrame.Size = UDim2.new(0.296, 0, 0.1, 0)
	ToggleBackFrame.Position = UDim2.new(0.704,0,0.935,0)
	
	title2.Name = "Title"
	title2.Parent = ToggleBackFrame
	title2.Size = UDim2.new(0.885, 0, 0.73, 0)
	title2.Position = UDim2.new(0.05, 0, -0, 0)
	title2.TextColor3 = Color3.new(0,0,0)
	title2.BackgroundTransparency = 1
	title2.Text = "FrameWorks - Roblox Talent Show"
	title2.TextScaled = true
	
	ToggleBack.Name = "ToggleBackMenu"
	ToggleBack.Parent = ToggleBackFrame
	ToggleBack.BackgroundTransparency = 1
	ToggleBack.Text = ""
	ToggleBack.Size = UDim2.new(1,0,0.491,0)
	ToggleBack.Position = UDim2.new(-0,0,0.156,0)
	ToggleBack.Font = Enum.Font.SourceSansBold
	
	
	ToggleBack.MouseButton1Click:Connect(function()
		MainFrame.Visible = true
		ToggleBackFrame.Visible = false
	end)
	exit.MouseButton1Click:Connect(function()
		MainFrame.Visible = false
		ToggleBackFrame.Visible = true
	end)
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


-- Function to create and animate the full-screen window with smooth text animations
local function createWindow()
	-- Create a new ScreenGui
	local screenGui = Instance.new("ScreenGui")
	screenGui.Parent = CorePlayerGui
	screenGui.Name = "WindowGui"

	-- Create a Frame (the full-screen window, completely black)
	local window = Instance.new("Frame")
	window.Size = UDim2.new(1, 0, 1, 0)  -- Full screen size
	window.Position = UDim2.new(0, 0, 0, 0)
	window.BackgroundColor3 = Color3.fromRGB(0, 0, 0)  -- Black background
	window.BackgroundTransparency = 0  -- Fully opaque
	window.Parent = screenGui

	-- Create a TextLabel for displaying messages
	local textLabel = Instance.new("TextLabel")
	textLabel.Size = UDim2.new(1, 0, 1, 0)  -- Make text fill the entire frame
	textLabel.Position = UDim2.new(0, 0, 0, 0)
	textLabel.BackgroundTransparency = 1  -- No background for the text
	textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)  -- White text
	textLabel.TextScaled = true
	textLabel.Font = Enum.Font.SourceSansBold
	textLabel.TextTransparency = 1  -- Start with text fully transparent
	textLabel.Parent = window

	-- Function to create a smooth fade animation for text
	local function fadeTextInOut(text)
		textLabel.Text = text  -- Set the text message

		-- Fade in the text (slowly)
		local fadeInTween = tweenService:Create(textLabel, TweenInfo.new(2, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {TextTransparency = 0})  -- Fade in over 2 seconds
		fadeInTween:Play()

		-- Wait for the fade-in to complete before proceeding
		fadeInTween.Completed:Wait()

		-- Wait for 2 seconds before fading out
		wait(2)

		-- Fade out the text (slowly)
		local fadeOutTween = tweenService:Create(textLabel, TweenInfo.new(2, Enum.EasingStyle.Quart, Enum.EasingDirection.In), {TextTransparency = 1})  -- Fade out over 2 seconds
		fadeOutTween:Play()

		-- Wait for the fade-out to complete before continuing
		fadeOutTween.Completed:Wait()
	end

	-- Start the animation sequence
	fadeTextInOut("Hello, " .. CorePlayer.DisplayName)  -- Show "Hello, {displayname}"
	wait(1)  -- Wait for a moment before showing the next message
	fadeTextInOut("Getting things ready for you...")  -- Show the next message
	wait(2)  -- Wait before removing the GUI
	fadeTextInOut("FrameWorks, Version 1.2")  -- Show the next message
	wait(1)  -- Wait before removing the GUI

	screenGui:Destroy()  -- Remove the ScreenGui after the sequence
end

-- Trigger the window animation
createWindow()


AddGui()

local function HumanoidDied()
	local name = CorePlayer.DisplayName
	wait(4)
	createWindow()
	print("Looks like "..name.." has died, replacing gui")
	AddGui()
end

Humanoid.Died:Connect(function()
	HumanoidDied()
end)
