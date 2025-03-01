local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")

local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.CoreGui
screenGui.Name = "RemoteEventViewer"
screenGui.ResetOnSpawn = false

-- Create the main frame
local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0.35, 0, 0.6, 0)
mainFrame.Position = UDim2.new(0.325, 0, 0.2, 0)
mainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
mainFrame.BorderSizePixel = 2
mainFrame.Active = true
mainFrame.Draggable = true
mainFrame.Parent = screenGui

-- Title Bar
local titleBar = Instance.new("Frame")
titleBar.Size = UDim2.new(1, 0, 0, 35)
titleBar.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
titleBar.Parent = mainFrame

-- Close & Minimize Buttons
local closeButton = Instance.new("TextButton")
closeButton.Size = UDim2.new(0, 35, 1, 0)
closeButton.Position = UDim2.new(1, -40, 0, 0)
closeButton.Text = "X"
closeButton.TextColor3 = Color3.fromRGB(255, 50, 50)
closeButton.Parent = titleBar

local minimizeButton = Instance.new("TextButton")
minimizeButton.Size = UDim2.new(0, 35, 1, 0)
minimizeButton.Position = UDim2.new(1, -80, 0, 0)
minimizeButton.Text = "_"
minimizeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
minimizeButton.Parent = titleBar

-- Search Bar
local searchBox = Instance.new("TextBox")
searchBox.Size = UDim2.new(1, -10, 0, 30)
searchBox.Position = UDim2.new(0, 5, 0, 40)
searchBox.PlaceholderText = "Search RemoteEvent..."
searchBox.Text = ""
searchBox.TextColor3 = Color3.fromRGB(255, 255, 255)
searchBox.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
searchBox.Parent = mainFrame

-- Scrolling Frame for RemoteEvents
local scrollingFrame = Instance.new("ScrollingFrame")
scrollingFrame.Size = UDim2.new(1, 0, 1, -75)
scrollingFrame.Position = UDim2.new(0, 0, 0, 75)
scrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
scrollingFrame.ScrollBarThickness = 6
scrollingFrame.Parent = mainFrame

local layout = Instance.new("UIListLayout")
layout.Parent = scrollingFrame
layout.SortOrder = Enum.SortOrder.LayoutOrder

-- Mobile Open Button (Only visible on mobile)
local openButton = Instance.new("TextButton")
openButton.Size = UDim2.new(0, 50, 0, 50)
openButton.Position = UDim2.new(0.02, 0, 0.85, 0)
openButton.Text = "📜"
openButton.TextColor3 = Color3.fromRGB(255, 255, 255)
openButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
openButton.Parent = screenGui
openButton.Visible = UserInputService.TouchEnabled -- Only show on mobile

-- Get all RemoteEvents
local function getRemoteEvents()
    local events = {}
    for _, obj in ipairs(ReplicatedStorage:GetDescendants()) do
        if obj:IsA("RemoteEvent") then
            table.insert(events, obj)
        end
    end
    return events
end

-- Update RemoteEvents List
local function updateRemoteEvents(filterText)
    -- Clear old items
    for _, child in pairs(scrollingFrame:GetChildren()) do
        if child:IsA("TextLabel") then
            child:Destroy()
        end
    end

    -- Get RemoteEvents
    local remoteEvents = getRemoteEvents()
    for _, remote in ipairs(remoteEvents) do
        if filterText == "" or string.find(remote.Name:lower(), filterText:lower()) then
            local label = Instance.new("TextLabel")
            label.Size = UDim2.new(1, -10, 0, 30)
            label.Text = remote.Name
            label.TextColor3 = Color3.fromRGB(255, 255, 255)
            label.BackgroundTransparency = 0.3
            label.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
            label.Parent = scrollingFrame
            label.TextScaled = true
            label.Font = Enum.Font.SourceSans
        end
    end
    
    -- Fix scrolling by updating CanvasSize
    scrollingFrame.CanvasSize = UDim2.new(0, 0, 0, layout.AbsoluteContentSize.Y)
end

-- Ensure scrolling updates when UIListLayout changes
layout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
    scrollingFrame.CanvasSize = UDim2.new(0, 0, 0, layout.AbsoluteContentSize.Y)
end)

-- Run once at startup
updateRemoteEvents("")

-- Update list when typing in search bar
searchBox:GetPropertyChangedSignal("Text"):Connect(function()
    updateRemoteEvents(searchBox.Text)
end)

-- Minimize Button
minimizeButton.MouseButton1Click:Connect(function()
    mainFrame.Visible = false
    if UserInputService.TouchEnabled then
        openButton.Visible = true
    end
end)

-- Open Button (Mobile)
openButton.MouseButton1Click:Connect(function()
    mainFrame.Visible = true
    openButton.Visible = false
end)

-- Close Button
closeButton.MouseButton1Click:Connect(function()
    screenGui:Destroy()
end)

-- Toggle with Right Shift (PC)
UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if input.KeyCode == Enum.KeyCode.RightShift and not gameProcessed then
        mainFrame.Visible = not mainFrame.Visible
    end
end)

