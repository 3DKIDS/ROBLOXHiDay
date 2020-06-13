local speedPart = script.Parent

-- 빨리 달리기 함수
local function fastRun(hit)
	
	local character = hit.Parent
	local humanoid = character:FindFirstChildOfClass("Humanoid")
	
	if humanoid and humanoid.WalkSpeed <= 16 then
		humanoid.WalkSpeed = 50
		wait(3)
		humanoid.WalkSpeed = 16
	end
	
	
end


speedPart.Touched:Connect(fastRun)
