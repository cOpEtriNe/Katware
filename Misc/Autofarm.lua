-- for the pasters
	while true do
		wait(0.01)
			for i,v in pairs(game.Players:GetChildren()) do
				if v ~= game.Players.LocalPlayer then
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,-1)
					wait(1)
					mouse1click()
					wait(0.01)
				end
			end
		end
