--위치 StarterGui>TextButton>GuiAniScript
--localScipt로 만들기

local object = script.Parent
object.AnchorPoint = Vector2.new(0.5, 0.5)
object.Position = UDim2.new(0.1, 0, 0.5, 0)

wait(2)

object:TweenPosition(UDim2.new(0.1, 0, 0.5, 0))


-- 현재 플레이어 아이디 Name 
local player = game.Players.LocalPlayer
local character = player.Character 
local humanoid = character:FindFirstChild("Humanoid")
local animation = Instance.new("Animation")
animation.AnimationId = "http://www.roblox.com/asset/?id=507771019" -- Roblox dance emote

local animationTrack = humanoid:LoadAnimation(animation)

local toggled = false

local function onButtonActivated()
	
	if toggled == true then
		object.Text = "춤 추자! "
		toggled = false
		animationTrack:Stop()
	else		
		object.Text = "춤 멈추다."
		toggled = true
		animationTrack:Play()
		
	end
	
	print(toggled)
end

print(toggled)

object.Activated:Connect(onButtonActivated)
