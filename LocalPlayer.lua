-- UI that displays your: Username, Avatar profile picture

local ScreenGui = Instance.new("ScreenGui")
local PlayerLocalFrame = Instance.new("Frame")
local PlayerImage = Instance.new("ImageLabel")
local PlayerName = Instance.new("TextLabel")
local UsrLocal = Instance.new("TextLabel")

--Properties:

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

PlayerLocalFrame.Name = "PlayerLocalFrame"
PlayerLocalFrame.Parent = ScreenGui
PlayerLocalFrame.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
PlayerLocalFrame.BackgroundTransparency = 0.500
PlayerLocalFrame.Size = UDim2.new(0, 334, 0, 116)
PlayerLocalFrame.Visible = true
PlayerLocalFrame.Active = true

PlayerImage.Name = "PlayerImage"
PlayerImage.Parent = PlayerLocalFrame
PlayerImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PlayerImage.Position = UDim2.new(0.0194342546, 0, 0.0648080185, 0)
PlayerImage.Size = UDim2.new(0, 100, 0, 100)
PlayerImage.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"

PlayerName.Name = "PlayerName"
PlayerName.Parent = PlayerLocalFrame
PlayerName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PlayerName.BackgroundTransparency = 1.000
PlayerName.Position = UDim2.new(0.367088586, 0, 0.431034505, 0)
PlayerName.Size = UDim2.new(0, 200, 0, 50)
PlayerName.Font = Enum.Font.SourceSans
PlayerName.TextColor3 = Color3.fromRGB(0, 0, 0)
PlayerName.TextScaled = true
PlayerName.TextSize = 14.000
PlayerName.TextWrapped = true

UsrLocal.Name = "UsrLocal"
UsrLocal.Parent = PlayerLocalFrame
UsrLocal.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
UsrLocal.BackgroundTransparency = 1.000
UsrLocal.Position = UDim2.new(0.367088586, 0, 0.06034486, 0)
UsrLocal.Size = UDim2.new(0, 200, 0, 26)
UsrLocal.Font = Enum.Font.SourceSans
UsrLocal.Text = "Local Player"
UsrLocal.TextColor3 = Color3.fromRGB(0, 0, 0)
UsrLocal.TextScaled = true
UsrLocal.TextSize = 14.000
UsrLocal.TextWrapped = true

-- Scripts:

local function YFEB_fake_script() -- PlayerLocalFrame.LocalScript 
	local script = Instance.new('LocalScript', PlayerLocalFrame)

	local frame = script.Parent
	
	
	
	local player = game.Players.LocalPlayer
	
	
	
	local userId = player.UserId
	
	local thumbType = Enum.ThumbnailType.AvatarBust
	
	local thumbSize = Enum.ThumbnailSize.Size420x420
	
	local content, isReady = game.Players:GetUserThumbnailAsync(userId, thumbType, thumbSize)
	
	
	
	
	
	frame.PlayerImage.Image = content
	
	frame.PlayerName.Text = player.Name
end
coroutine.wrap(YFEB_fake_script)()
