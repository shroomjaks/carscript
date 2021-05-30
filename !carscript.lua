--compatibility for games who change service names
local Playr = game:GetService("Players")
local Run = game:GetService("RunService")
local Core = game:GetService("CoreGui")
local LocalPlayer = Playr.LocalPlayer

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/IreXion-UI-Library/main/IreXion%20UI%20Library"))()

local Gui = Library:AddGui({
	Title = {"FE Car", "Made by Lozarth"},
	ThemeColor = Color3.fromRGB(0,91,150),
	ToggleKey = Enum.KeyCode.RightShift,
})

local Tab = Gui:AddTab("Main")

local Category = Tab:AddCategory("Main")

local Label = Category:AddLabel("Go into R6 for this script to work.")

local Button = Category:AddButton("Enable FE Car", function()
	LocalPlayer.Character.Humanoid.WalkSpeed=70 LocalPlayer.Character.Humanoid.JumpPower=0.0001 Float_Height="-1.03" AnimationId="129342287" local a=Instance.new("Animation") a.AnimationId="rbxassetid://"..AnimationId local a=LocalPlayer.Character.Humanoid:LoadAnimation(a) a:Play() a:AdjustSpeed(1) for a,a in pairs(LocalPlayer.Character:GetDescendants())do if a.ClassName=="Part"then a.CustomPhysicalProperties=PhysicalProperties.new(0,0,0)end end local a=1 G=game _=wait p=G:GetService("Players").LocalPlayer.Character p:FindFirstChild("Humanoid").HipHeight=Float_Height _(1.5) t=.4 for a=1,a do repeat p:FindFirstChild("Humanoid").HipHeight=Float_Height-n _(t) p:FindFirstChild("Humanoid").HipHeight=Float_Height+n _(t)until p:FindFirstChild("Humanoid").Health==0 end
end)

local Category = Tab:AddCategory("Settings")

local Box = Category:AddBox("Slide", function(str)
	for a,a in pairs(LocalPlayer.Character:GetDescendants())do if a.ClassName=="Part"then a.CustomPhysicalProperties=PhysicalProperties.new(str,0,0)end end 
end)

local Box = Category:AddBox("Hipheight", function(str)
	Float_Height=str local a=1 G=game _=wait p=G:GetService("Players").LocalPlayer.Character p:FindFirstChild("Humanoid").HipHeight=Float_Height _(1.5) t=.4 for a=1,a do repeat p:FindFirstChild("Humanoid").HipHeight=Float_Height-n _(t) p:FindFirstChild("Humanoid").HipHeight=Float_Height+n _(t)until p:FindFirstChild("Humanoid").Health==0 end
end)

local Slider = Category:AddSlider("Walkspeed", 1, 500, 16, function(val)
	LocalPlayer.Character.Humanoid.WalkSpeed = val
end)

local Category = Tab:AddCategory("Settings Presets")

local Button = Category:AddButton("Default Car Settings Preset", function()
	for a,a in pairs(LocalPlayer.Character:GetDescendants())do if a.ClassName=="Part"then a.CustomPhysicalProperties=PhysicalProperties.new(0,0,0)end end
	LocalPlayer.Character.Humanoid.WalkSpeed = 70
	Float_Height="-1.03" local a=1 G=game _=wait p=G:GetService("Players").LocalPlayer.Character p:FindFirstChild("Humanoid").HipHeight=Float_Height _(1.5) t=.4 for a=1,a do repeat p:FindFirstChild("Humanoid").HipHeight=Float_Height-n _(t) p:FindFirstChild("Humanoid").HipHeight=Float_Height+n _(t)until p:FindFirstChild("Humanoid").Health==0 end
end)

local Button = Category:AddButton("Extreme Car Settings Preset", function()
	for a,a in pairs(LocalPlayer.Character:GetDescendants())do if a.ClassName=="Part"then a.CustomPhysicalProperties=PhysicalProperties.new(0.5,0,0)end end
	LocalPlayer.Character.Humanoid.WalkSpeed = 500
	Float_Height="-1.03" local a=1 G=game _=wait p=G:GetService("Players").LocalPlayer.Character p:FindFirstChild("Humanoid").HipHeight=Float_Height _(1.5) t=.4 for a=1,a do repeat p:FindFirstChild("Humanoid").HipHeight=Float_Height-n _(t) p:FindFirstChild("Humanoid").HipHeight=Float_Height+n _(t)until p:FindFirstChild("Humanoid").Health==0 end
end)

if game.PlaceId == 2041312716 then
local Tab = Gui:AddTab("Ragdoll Engine")

local Category = Tab:AddCategory("Ragdoll Engine Features")
local Button = Category:AddButton("Push Aura", function()
    
Run.RenderStepped:Connect(function()
        LocalPlayer.Character.Push.PushEvent:FireServer()
	end)
end)

local Label = Category:AddLabel("Useful for flinging people when you hit them with your car")
local Label = Category:AddLabel("Or just flinging people who come close.")
local Label = Category:AddLabel("Equip Push tool before clicking to work.")

local Button = Category:AddButton("Anti-Ragdoll", function()
	LocalPlayer.Character:FindFirstChild("Local Ragdoll"):Destroy()
end)
end

local Tab = Gui:AddTab("Close")

local Category = Tab:AddCategory("Close")

local Button = Category:AddButton("Close GUI", function()
	Core.IreXionUILib:Destroy()
end)

Library:Notify("Copy Discord server invite to clipboard?", function(bool)
	if bool == true then
		local clipBoard = setclipboard or toclipboard or set_clipboard or (Clipboard and Clipboard.set)
		if clipBoard then
			clipBoard("https://discord.gg/hsdcAFZY9E")
			Library:Notify("Invite copied to clipboard.")
		else
			print("https://discord.gg/hsdcAFZY9E")
			Library:Notify("Your exploit does not support clipboard. Press F9 to see the invite.")
		end
	end
end)
