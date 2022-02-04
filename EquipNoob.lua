local args = {
    [1] = "Equip",
    [2] = "6",
    [3] = 1
}

game:GetService("ReplicatedStorage").GameEvents.Misk.InventoryChange:FireServer(unpack(args))

wait(1)

-- equip the noob pax

local args = {
    [1] = "Equip",
    [2] = "16",
    [3] = 1
}

game:GetService("ReplicatedStorage").GameEvents.Misk.InventoryChange:FireServer(unpack(args))
