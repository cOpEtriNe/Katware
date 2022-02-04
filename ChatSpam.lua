while true do
wait(1)

-- chat spam, go customise unless you dont

local args = {
    [1] = "kat where? free kat gui!", -- text said
    [2] = "All"
}

game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))

wait(2) -- safe mode, change if u wont want to go that sloow

local args = {
    [1] = "Knife-Bot! KATGuis Best server destroying feature!!", -- ooooh really?
    [2] = "All"
}

game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))

wait(2)


local args = {
    [1] = "After 9 years in development, we hope it was worth the wait!", -- rofl!!
    [2] = "All"
}

game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))

wait(2)

local args = {
    [1] = "KATGui! Free open source Kat! cheat!!", -- yessir
    [2] = "All"
}

game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))

wait(1)

local args = {
    [1] = "KATGui You've been bot rolled!", --AH CRAP! NOT AGAIN!!
    [2] = "All"
}

game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))

end
