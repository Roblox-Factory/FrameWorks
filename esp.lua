local orbSize = Vector3.new(4,4,4)
local orbColor = BrickColor.new("Reddish brown")
local heightOffset = Vector3.new(0, 10, 0)

local RunService = game:GetService("RunService")
local Players = game:GetService("Players")

local function createESP(player)
    if player == Players.LocalPlayer then return end

    local function onCharacterAdded(character)
        local head = character:WaitForChild("Head", 5)
        if not head then return end

        if character:FindFirstChild("ESPOrb") then return end

        -- Orb
        local orb = Instance.new("Part")
        orb.Name = "ESPOrb"
        orb.Anchored = true
        orb.CanCollide = false
        orb.Shape = Enum.PartType.Ball
        orb.Size = orbSize
        orb.BrickColor = orbColor
        orb.Material = Enum.Material.Neon
        orb.Transparency = 0
        orb.Parent = workspace

        orb.CastShadow = false

        local billboard = Instance.new("BillboardGui")
        billboard.Name = "ESPName"
        billboard.Adornee = orb
        billboard.Size = UDim2.new(0, 200, 0, 50)
        billboard.StudsOffset = Vector3.new(0, orb.Size.Y / 2 + 2, 0)
        billboard.AlwaysOnTop = true
        billboard.Parent = orb

        local label = Instance.new("TextLabel")
        label.Size = UDim2.new(1, 0, 1, 0)
        label.BackgroundTransparency = 1
        label.Text = player.Name
        label.TextColor3 = Color3.new(1, 1, 1)
        label.TextStrokeColor3 = Color3.new(0, 0, 0)
        label.TextStrokeTransparency = 0
        label.TextScaled = true
        label.Font = Enum.Font.SourceSansBold
        label.Parent = billboard

        local connection
        connection = RunService.RenderStepped:Connect(function()
            if head and head.Parent and orb then
                orb.Position = head.Position + heightOffset
            else
                connection:Disconnect()
                if orb then orb:Destroy() end
            end
        end)
    end

    if player.Character then
        onCharacterAdded(player.Character)
    end

    player.CharacterAdded:Connect(onCharacterAdded)
end

for _, p in pairs(Players:GetPlayers()) do
    createESP(p)
end

Players.PlayerAdded:Connect(createESP)
