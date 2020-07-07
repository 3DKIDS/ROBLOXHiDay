-- 작성자 : 서종원 (3dkids4u@gmail.com)
-- 지역공간에서 순간이동 하는 내용
-- CFrame , 터치이벤트, Player 속성 이해 필요함

local localTelePort = script.Parent

local function localMoveTo(otherPart)
	local character = otherPart.Parent
	print(character)
	local humanoid = character:FindFirstChildOfClass("Humanoid")
	
	if humanoid  then
		print("지역 로컬2 스팟으로  순간 이동  ")
		humanoid.RootPart.CFrame = CFrame.new(Vector3.new(-149, 50, 173))
	end
end

localTelePort.Touched:Connect(localMoveTo)
