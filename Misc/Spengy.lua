-- For saving KW error
	local args = {
		[1] = "Equip",
		[2] = "50",
		[3] = 1
	}

	game:GetService("ReplicatedStorage").GameEvents.Misk.InventoryChange:FireServer(unpack(args))
