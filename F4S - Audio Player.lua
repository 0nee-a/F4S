-- Local

local plrId = game:GetService("Players").LocalPlayer.UserId
local plrName = game:GetService("Players").LocalPlayer.Name
local plrDisplayName = game:GetService("Players").LocalPlayer.DisplayName
local plrAccountAge = game:GetService("Players").LocalPlayer.AccountAge

-- Add meow =3

writefile("meow.png", game:HttpGet("https://github.com/0nee-a/Musicmodel/raw/refs/heads/main/meow.png"))

-- Send notification

game:GetService("StarterGui"):SetCore("SendNotification", { 
	Title = "Load";
	Text = "Audio Player";
	Icon = getcustomasset("meow.png")})
Duration = 15;

-- Add icons

-- Thx u! <3

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/jensonhirst/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "F4S - Audio Player", HidePremium = false, Intro = true, IntroText = "Have Fun!", SaveConfig = true, ConfigFolder = "APlayF4S"})

-- Tab #

-- Add Sounds
-- SoundT4S

local SoundF4S = Instance.new("Sound")
SoundF4S.Parent = game.Workspace
SoundF4S.Name = "SoundF4S"

a1 = Instance.new("ChorusSoundEffect", Workspace.SoundF4S)
a1.Enabled = false
a2 = Instance.new("CompressorSoundEffect", Workspace.SoundF4S)
a2.Enabled = false

-- ClientPlay

local CMplayTab = Window:MakeTab({
	Name = "ClientPlayer",
	Icon = getcustomasset("Cookie.png"),
	PremiumOnly = false
})

local Section = CMplayTab:AddSection({
	Name = "Play music on Client."
})

CMplayTab:AddTextbox({
	Name = "SoundId",
	Default = "",
	TextDisappear = false,
	Callback = function(Value1)
              local SoundId1 = game.Workspace.SoundF4S
              SoundId1.SoundId = "http://www.roblox.com/asset/?id="..Value1
	end	  
})

CMplayTab:AddButton({
	Name = "Playing",
	Callback = function()
      		local Playing1 = game.Workspace.SoundF4S
      Playing1:Play()
  	end    
})

CMplayTab:AddButton({
	Name = "Stop",
	Callback = function()
      		local Stop1 = game.Workspace.SoundF4S
      Stop1:Stop()
  	end    
})

CMplayTab:AddToggle({
	Name = "Looped",
	Default = false,
	Callback = function(Value2)
		local Looped1 = game.Workspace.SoundF4S
		Looped1.Looped = (Value2)
	end    
})

