wait(2)
local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui") -- Ensure PlayerGui is loaded
local hue = 0 -- Start hue at 0

while true do
    local coreChance = math.random(1, 100)
    print(coreChance)

    -- Function to show "PROCESSING...." GUI
    local function showProcessingGUI()
        local screenGui = Instance.new("ScreenGui")
        screenGui.Name = "ProcessingGui"
        screenGui.Parent = playerGui

        local textLabel = Instance.new("TextLabel")
        textLabel.Size = UDim2.new(0.3, 0, 0.1, 0)
        textLabel.Position = UDim2.new(0.35, 0, 0.45, 0)
        textLabel.BackgroundColor3 = Color3.new(0, 0, 0)
        textLabel.BackgroundTransparency = 0.5
        textLabel.Text = "PROCESSING...."
        textLabel.TextColor3 = Color3.new(1, 1, 1)
        textLabel.TextScaled = true
        textLabel.Font = Enum.Font.SourceSansBold
        textLabel.Parent = screenGui

        task.wait(0.2)
        screenGui:Destroy()
    end

    -- Iterate through all players
    for i, v in game.Players:GetPlayers() do
        local assumedplayer = game.Workspace:FindFirstChild(v.Name)

        -- Check if player has a Knife
        if assumedplayer then
            if v.Backpack:FindFirstChild("Knife") or assumedplayer:FindFirstChild("Knife") then
                -- Add Highlight if not already present
                local highlight = assumedplayer:FindFirstChild("Highlight")
                if not highlight then
                    highlight = Instance.new("Highlight")
                    highlight.FillTransparency = 0.5
                    highlight.OutlineTransparency = 1
                    highlight.Parent = assumedplayer
                end
                
                -- Update the highlight color in a rainbow cycle
                highlight.FillColor = Color3.fromHSV(hue, 1, 1)
            else
                -- Remove Highlight if Knife is no longer present
                local existingHighlight = assumedplayer:FindFirstChild("Highlight")
                if existingHighlight then
                    existingHighlight:Destroy()
                end
            end
        end
    end

    -- Show the GUI if coreChance is 1
    if coreChance == 1 then
        showProcessingGUI()
    end

    -- Increment hue for the next loop (wraps around at 1)
    hue = (hue + 0.01) % 1

    wait(0.1)
end
