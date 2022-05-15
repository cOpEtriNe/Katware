	local args = {
		[1] = "Equip",
		[2] = "85",
		[3] = 1
	}

	game:GetService("ReplicatedStorage").GameEvents.Misk.InventoryChange:FireServer(unpack(args))
