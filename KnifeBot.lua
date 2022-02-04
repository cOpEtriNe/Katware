-- ok, So what this does is basicaly make everyone have a huge hitbox and have a type of auto clicker
-- you have to manualy equip the knife until i update it so the bot can equip the knife.
-- hello kat devs :)
-- if you are even here.

-- nolag
local decalsyeeted = true -- Leaving this on makes games look bad but the fps goes up by at least 20.
local g = game
local w = g.Workspace
local l = g.Lighting
local t = w.Terrain
t.WaterWaveSize = 0
t.WaterWaveSpeed = 0
t.WaterReflectance = 0
t.WaterTransparency = 0
l.GlobalShadows = false
l.FogEnd = 9e9
l.Brightness = 0
settings().Rendering.QualityLevel = "Level01"
for i, v in pairs(g:GetDescendants()) do
    if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
        v.Material = "Plastic"
        v.Reflectance = 0
    elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
        v.Transparency = 1
    elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
        v.Lifetime = NumberRange.new(0)
    elseif v:IsA("Explosion") then
        v.BlastPressure = 1
        v.BlastRadius = 1
    elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") then
        v.Enabled = false
    elseif v:IsA("MeshPart") then
        v.Material = "Plastic"
        v.Reflectance = 0
        v.TextureID = 10385902758728957
    end
end
for i, e in pairs(l:GetChildren()) do
    if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
        e.Enabled = false
    end
end
-- end nolag, thanks Guest on pastebin, or Alive Exploits on YouTube!

-- TEST PRINT CODE
-- win against the terribe stuff in console, the developer(s) need to fix stuff

local Players = game:GetService("Players")
 
local localPlayer = Players.LocalPlayer
local mouse = localPlayer:GetMouse()
    
mouse.Move:Connect(function()
	print("mouse screen position: ", mouse.X, mouse.Y)
end)

-- END

-- start spam
-- its silent meaning its not seen in chat, which is silly
loadstring(game:HttpGet('https://raw.githubusercontent.com/cOpEtriNe/Katware-/30dd1189a8aeb23e188a696efd962e269250b073/ChatSpam.lua'))()

-- end
-- knife b0t Xd rofl lmao lolz

while true do -- LITERALLY JUST THIS
wait(0.5)
mouse1click() -- ive found a bug with this, if you close out of the window. Say, goto chrome, it stops working. While its looping of course!
wait(0.5)
mouse1click()
wait(0.5)
mouse1click() -- that will be annoying for "kat" bot hosters. Ha, see what i did there? Just like TF2!!
wait(0.5)
mouse1click()
wait(0.5)
mouse1click() -- from th
wait(0.5)
mouse1click()
wait(0.5)
mouse1click()
wait(0.5)
mouse1click()
wait(0.5)
mouse1click() -- max
end

-- end 

-- Shop equip to avoid ez

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

-- say that its working
game.StarterGui:SetCore("SendNotification", {
	Title = "Alert!"; -- title
	Text = "Knife-Bot, - Currently Working! Destruction starts now. "; --Text
	Icon = "rbxassetid://57254792"; -- the image
	Duration = 5; -- showing for
  -- end
  
  -- Silent like a pro 
  -- special thanks to the original dude who made this, dont know the real person, but real big thanks! its op!!
	getgenv().silentaim_settings = {
		fov = 99999999999999999999,  -- change for big
		hitbox = "Head",
		fovcircle = true,
	}
	-- Services
	local Players = game:GetService("Players")
	local RunService = game:GetService("RunService")

	-- Player
	local Player = Players.LocalPlayer
	local Mouse = Player:GetMouse()
	local CurrentCamera = workspace.CurrentCamera

	local function GetClosest(Fov)
		local Target, Closest = nil, Fov or math.huge

		for i,v in pairs(Players:GetPlayers()) do
			if (v.Character and v ~= Player and v.Character:FindFirstChild(getgenv().silentaim_settings.hitbox)) then
				local Position, OnScreen = CurrentCamera:WorldToScreenPoint(v.Character[getgenv().silentaim_settings.hitbox].Position)
				local Distance = (Vector2.new(Position.X, Position.Y) - Vector2.new(Mouse.X, Mouse.Y)).Magnitude

				if (Distance < Closest and OnScreen) then
					Closest = Distance
					Target = v
				end
			end
		end

		return Target
	end

	local Target
	local CircleInline = Drawing.new("Circle")
	local CircleOutline = Drawing.new("Circle")
	RunService.Stepped:Connect(function()
		CircleInline.Radius = getgenv().silentaim_settings.fov
		CircleInline.Thickness = 2
		CircleInline.Position = Vector2.new(Mouse.X, Mouse.Y + 36)
		CircleInline.Transparency = 0 -- no circle
		CircleInline.Color = Color3.fromRGB(255, 255, 255)
		CircleInline.Visible = getgenv().silentaim_settings.fovcircle
		CircleInline.ZIndex = 2

		CircleOutline.Radius = getgenv().silentaim_settings.fov
		CircleOutline.Thickness = 4
		CircleOutline.Position = Vector2.new(Mouse.X, Mouse.Y + 36)
		CircleOutline.Transparency = 0 -- no circle
		CircleOutline.Color = Color3.new()
		CircleOutline.Visible = getgenv().silentaim_settings.fovcircle
		CircleOutline.ZIndex = 1

		Target = GetClosest(getgenv().silentaim_settings.fov)
	end)

	local Old; Old = hookmetamethod(game, "__namecall", function(Self, ...)
		local Args = {...}

		if (not checkcaller() and getnamecallmethod() == "FindPartOnRayWithIgnoreList") then
			if (table.find(Args[2], workspace.WorldIgnore.Ignore) and Target and Target.Character) then
				local Origin = Args[1].Origin

				Args[1] = Ray.new(Origin, Target.Character[getgenv().silentaim_settings.hitbox].Position - Origin)
			end
		end

		return Old(Self, unpack(Args))
	end)
  -- end of the ninja
  
