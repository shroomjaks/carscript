game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 70
AudioID = "1389847916"
AnimationId = "129342287"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
setclipboard(AudioID)