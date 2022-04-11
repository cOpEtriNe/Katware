-- INFO PANNEL PLEASE SOMEONE HELP ME

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local IsAirstuck = Instance.new("TextLabel")
local UIGradient = Instance.new("UIGradient")
local FPS = Instance.new("TextLabel")
local UIGradient_2 = Instance.new("UIGradient")
local Close = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")

--Properties:

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(61, 61, 61)
Frame.Position = UDim2.new(0.602097631, 0, 0.537991583, 0)
Frame.Size = UDim2.new(0, 463, 0, 122)
Frame.Active = true
Frame.Visible = true
Frame.Draggable = true

IsAirstuck.Name = "IsAirstuck"
IsAirstuck.Parent = Frame
IsAirstuck.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
IsAirstuck.Position = UDim2.new(-0.000504100462, 0, 0.141703263, 0)
IsAirstuck.Size = UDim2.new(0, 464, 0, 42)
IsAirstuck.Font = Enum.Font.SourceSans
IsAirstuck.Text = "Airstuck:"
IsAirstuck.TextColor3 = Color3.fromRGB(0, 0, 0)
IsAirstuck.TextScaled = true
IsAirstuck.TextSize = 14.000
IsAirstuck.TextWrapped = true

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(117, 255, 179)), ColorSequenceKeypoint.new(0.69, Color3.fromRGB(117, 255, 179)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(117, 255, 179))}
UIGradient.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 0.00), NumberSequenceKeypoint.new(0.11, 0.64), NumberSequenceKeypoint.new(0.45, 0.64), NumberSequenceKeypoint.new(0.89, 0.67), NumberSequenceKeypoint.new(1.00, 0.00)}
UIGradient.Parent = IsAirstuck

FPS.Name = "FPS"
FPS.Parent = Frame
FPS.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
FPS.Position = UDim2.new(-0.000504100462, 0, 0.478228837, 0)
FPS.Size = UDim2.new(0, 464, 0, 42)
FPS.Font = Enum.Font.SourceSans
FPS.Text = "FPS:"
FPS.TextColor3 = Color3.fromRGB(0, 0, 0)
FPS.TextScaled = true
FPS.TextSize = 14.000
FPS.TextWrapped = true

UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(117, 255, 179)), ColorSequenceKeypoint.new(0.69, Color3.fromRGB(117, 255, 179)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(117, 255, 179))}
UIGradient_2.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 0.00), NumberSequenceKeypoint.new(0.11, 0.64), NumberSequenceKeypoint.new(0.45, 0.64), NumberSequenceKeypoint.new(0.89, 0.67), NumberSequenceKeypoint.new(1.00, 0.00)}
UIGradient_2.Parent = FPS

Close.Name = "Close"
Close.Parent = ScreenGui
Close.BackgroundColor3 = Color3.fromRGB(56, 56, 56)
Close.Position = UDim2.new(0.857923985, 0, 0.537991583, 0)
Close.Size = UDim2.new(0, 48, 0, 18)
Close.Font = Enum.Font.SourceSans
Close.Text = "X"
Close.TextColor3 = Color3.fromRGB(255, 255, 255)
Close.TextScaled = true
Close.TextSize = 14.000
Close.TextWrapped = true

UICorner.CornerRadius = UDim.new(0, 6)
UICorner.Parent = Close

-- Scripts:

local function GPNCY_fake_script() -- IsAirstuck.LocalScript 
	local script = Instance.new('LocalScript', IsAirstuck)

		-- Variables
	
		local player = game.Players.LocalPlayer
		local mouse = player:GetMouse()
	
		-- Settings
	
		bind = "e" -- has to be lowercase
		bind2 = "r"
	
		-- Script
	
		mouse.KeyDown:connect(function(key)
			if key == bind then
				print("Currently Airstuck")
				game.Players.LocalPlayer.Character.Torso.Anchored = true
				script.Parent.Text = "Airstuck: True"
			end
		end)
	
		mouse.KeyDown:connect(function(key2)
			if key2 == bind2 then
				print("Currently Unstuck!")
				game.Players.LocalPlayer.Character.Torso.Anchored = false
				script.Parent.Text = "Airstuck: False "
			end
		end)
end
coroutine.wrap(GPNCY_fake_script)()
local function AXSYQN_fake_script() -- FPS.LocalScript 
	local script = Instance.new('LocalScript', FPS)

	while true do
		wait(0.01)
		script.Parent.Text = "FPS: "..game.Workspace:GetRealPhysicsFPS()
	end
end
coroutine.wrap(AXSYQN_fake_script)()
local function CTOO_fake_script() -- Close.LocalScript 
	local script = Instance.new('LocalScript', Close)

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Visible = false
	end)
	
	
	
	
end
coroutine.wrap(CTOO_fake_script)()
