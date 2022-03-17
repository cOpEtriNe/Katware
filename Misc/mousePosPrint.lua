local Players = game:GetService("Players")
 
local localPlayer = Players.LocalPlayer
local mouse = localPlayer:GetMouse()
    
mouse.Move:Connect(function()
	print("KATWare Mouse Position Current/Before: ", mouse.X, mouse.Y)
end)
