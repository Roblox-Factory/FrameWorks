local CoreChance = math.random(1, 5)
local CorePlayer = game.Players.LocalPlayer

if CoreChance == 1 then
    CorePlayer:Kick("Invalid Connection")
else
    while true do
        -- Wait until character is fully loaded
        if CorePlayer.Character and CorePlayer.Character:FindFirstChild("HumanoidRootPart") then
            -- Teleport to different locations with waits
            CorePlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-17.6744003, 141.440918, -570.124939, -0.281871408, -0.25230965, 0.925682664, -1.95974099e-08, 0.964803278, 0.262972593, -0.959452212, 0.0741244406, -0.271950483)
            wait(3)
            CorePlayer.Character.HumanoidRootPart.CFrame = CFrame.new(69.7013397, 132.875, -559.377991, -0.527886808, 0.144466028, -0.836937904, 4.03793488e-09, 0.98542732, 0.170097157, 0.849314749, 0.089792043, -0.520194054)
            wait(4)
            CorePlayer.Character.HumanoidRootPart.CFrame = CFrame.new(184.742203, 123.249222, -202.998108, -0.85711962, -2.49500864e-08, -0.515117407, -4.4741725e-08, 1, 2.6011401e-08, 0.515117407, 4.53421229e-08, -0.85711962)
            wait(5)
            CorePlayer.Character.HumanoidRootPart.CFrame = CFrame.new(449.540405, 156.449966, -859.602478, -0.127042413, 0, 0.991897523, 0, 1, 0, -0.991897523, 0, -0.127042413)
            wait(4)
            CorePlayer.Character.HumanoidRootPart.CFrame = CFrame.new(372.13562, 151.912781, -731.875061, -0.941061139, 0.0339874364, -0.336524546, 1.19871002e-09, 0.994938672, 0.100484245, 0.338236481, 0.0945618153, -0.936298132)
            wait(130)

            -- Optional exit condition after a set number of loops
            -- If you want the loop to exit after a certain amount of time or number of iterations, you can add a counter or a timeout here.
            -- Example: exit after 5 loops:
            -- loopCounter = loopCounter + 1
            -- if loopCounter > 5 then break end
        else
            -- If HumanoidRootPart is missing, wait for it to load
            CorePlayer.CharacterAdded:Wait()
        end
    end
end
