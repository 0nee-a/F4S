-- Local

local plr = game:GetService("Players").LocalPlayer
local plrId = game:GetService("Players").LocalPlayer.UserId
local plrName = game:GetService("Players").LocalPlayer.Name
local plrDisplayName = game:GetService("Players").LocalPlayer.DisplayName
local plrAccountAge = game:GetService("Players").LocalPlayer.AccountAge
local JobId = game.JobId
local PlaceId = game.PlaceId

-- Send notification

game:GetService("StarterGui"):SetCore("SendNotification", { 
	Title = "Load";
	Text = ""..JobId;
	Icon = ""})
Duration = 15;

setclipboard(JobId)

-- Add icons

if makefolder and not isfolder("F4SIcons") then
    makefolder("F4SIcons")
end

if not isfile("F4SIcons/meow.png") then
       writefile("F4SIcons/meow.png", game:HttpGet("https://github.com/0nee-a/Musicmodel/raw/refs/heads/main/meow.png"))
end

if not isfile("F4SIcons/Cookie.png") then
       writefile("F4SIcons/Cookie.png", game:HttpGet("https://github.com/0nee-a/Musicmodel/raw/refs/heads/main/Cookie.png"))
end

if not isfile("F4SIcons/Folder.png") then
       writefile("F4SIcons/Folder.png", game:HttpGet("https://github.com/0nee-a/Musicmodel/raw/refs/heads/main/Folder.png"))
end

if not isfile("Wait.mp3") then
       writefile("Wait.mp3", game:HttpGet("https://github.com/0nee-a/Musicmodel/raw/refs/heads/main/Wait.mp3"))
end


-- Thx u! <3

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/jensonhirst/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "F4S - Audio Player", HidePremium = false, Intro = false, IntroText = "", SaveConfig = true, ConfigFolder = "APlayF4S"})

-- Tab #

-- Add Sounds
-- SoundF4S

local SoundF4S = Instance.new("Sound")
SoundF4S.Parent = game.Workspace
SoundF4S.Name = "SoundF4S"

a1 = Instance.new("ChorusSoundEffect", Workspace.SoundF4S)
a1.Enabled = false
a2 = Instance.new("CompressorSoundEffect", Workspace.SoundF4S)
a2.Enabled = false

-- Custome Sound

local SoundF4SC = Instance.new("Sound")
SoundF4SC.Parent = game.Workspace
SoundF4SC.Name = "SoundF4SC"
SoundF4SC.SoundId = getcustomasset("Wait.mp3")

a1 = Instance.new("ChorusSoundEffect", Workspace.SoundF4SC)
a1.Enabled = false
a2 = Instance.new("CompressorSoundEffect", Workspace.SoundF4SC)
a2.Enabled = false

-- ClientPlay

local CTab = Window:MakeTab({
	Name = "Client",
	Icon = getcustomasset("F4SIcons/Cookie.png"),
	PremiumOnly = false
})

local Section = CTab:AddSection({
	Name = "Play Audio on Client."
})

CTab:AddTextbox({
	Name = "SoundId",
	Default = "",
	TextDisappear = false,
	Callback = function(Value1)
              local SoundId1 = game.Workspace.SoundF4S
              SoundId1.SoundId = "rbxassetid://"..Value1
	end	  
})

CTab:AddButton({
	Name = "Play",
	Callback = function()
      		local Playing1 = game.Workspace.SoundF4S
      Playing1:Play()
  	end    
})

CTab:AddButton({
	Name = "Stop",
	Callback = function()
      		local Stop1 = game.Workspace.SoundF4S
      Stop1:Stop()
  	end    
})

CTab:AddToggle({
	Name = "Looped",
	Default = false,
	Callback = function(Value2)
		local Looped1 = game.Workspace.SoundF4S
		Looped1.Looped = (Value2)
	end    
})

CTab:AddTextbox({
	Name = "Volume",
	Default = "0.5",
	TextDisappear = false,
	Callback = function(Value3)
              local Volume1 = game.Workspace.SoundF4S
              Volume1.Volume = (Value3)
	end	  
})

CTab:AddTextbox({
	Name = "Pitch",
	Default = "1",
	TextDisappear = false,
	Callback = function(Value4)
              local Pitch1 = game.Workspace.SoundF4S
              Pitch1.PlaybackSpeed = (Value4)
	end	  
})

-- Customs

local CustomTab = Window:MakeTab({
	Name = "Customs",
	Icon = getcustomasset("F4SIcons/Folder.png"),
	PremiumOnly = false
})

CustomTab:AddParagraph("Debug","Get Audio from the exploit's Workspace. (Supports all audio formats.)")

local Section = CustomTab:AddSection({
	Name = "Play Audio on Client.Again"
})

CustomTab:AddTextbox({
	Name = "Name",
	Default = "Wait.mp3",
	TextDisappear = false,
	Callback = function(Value5)
              local Custom1 = game.Workspace.SoundF4SC
              Custom1.SoundId = getcustomasset(Value5)
	end	  
})

CustomTab:AddButton({
	Name = "Play",
	Callback = function()
      		local Play2 = game.Workspace.SoundF4SC
      Play2:Play()
  	end    
})

CustomTab:AddButton({
	Name = "Stop",
	Callback = function()
      		local Stop2 = game.Workspace.SoundF4SC
      Stop2:Stop()
  	end    
})

CustomTab:AddToggle({
	Name = "Looped",
	Default = false,
	Callback = function(Value6)
		local Looped2 = game.Workspace.SoundF4SC
		Looped2.Looped = (Value6)
	end    
})

CustomTab:AddTextbox({
	Name = "Volume",
	Default = "0.5",
	TextDisappear = false,
	Callback = function(Value7)
              local Volume1 = game.Workspace.SoundF4SC
              Volume1.Volume = (Value7)
	end	  
})

CustomTab:AddTextbox({
	Name = "Pitch",
	Default = "1",
	TextDisappear = false,
	Callback = function(Value8)
              local Pitch1 = game.Workspace.SoundF4SC
              Pitch1.PlaybackSpeed = (Value8)
	end	  
})

OrionLib:Init()

