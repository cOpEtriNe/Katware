

local args = {
    [1] = "NoobKnife"
}

game:GetService("ReplicatedStorage").GameEvents.Misk.ItemPurchase:FireServer(unpack(args))

-- equips

local args = {
    [1] = "Equip",
    [2] = "6",
    [3] = 1
}

game:GetService("ReplicatedStorage").GameEvents.Misk.InventoryChange:FireServer(unpack(args))

wait(1)

-- equip the noob pax
wait(1.2)
game.StarterGui:SetCore("SendNotification", {
	Title = "Kat GUI"; -- the title (ofc)
	Text = "Alert!, - You need to be level 15 to get the noob knife! Ignore this message if you over level 15 or are level 15!"; -- what the text says (ofc)
	Icon = "rbxassetid://57254792"; -- the image if u want. 
	Duration = 5; -- how long the notification should in secounds
})

local args = {
    [1] = "Equip",
    [2] = "16",
    [3] = 1
}

game:GetService("ReplicatedStorage").GameEvents.Misk.InventoryChange:FireServer(unpack(args))
