repeat until false
wait(1)
for i,v in pairs(game.Players:GetChildren()) do
    if v ~= game.Players.LocalPlayer then
         game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.Head.CFrame * CFrame.new(0,0,.4)
         mouse1click()
         wait(0.1)
         game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-7, 958, -36)
    end
end
end
end
