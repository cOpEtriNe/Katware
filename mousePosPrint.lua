local Players = game:GetService("Players")
 
local localPlayer = Players.LocalPlayer
local mouse = localPlayer:GetMouse()
    
mouse.Move:Connect(function()
	print("mouse screen position: ", mouse.X, mouse.Y)
end)
