-- 파트들 담을 변수 그릇 만들기
local fireButton = script.Parent
local fireBall = game.workspace.FireWood.FirePart
local timeMaster = game.Lighting
local boolChk = fireButton.Value.Value

print(boolChk)

-- 불과 포인트라이트를 붙힐 함수 만들기
local function  startFirePlight()
	
	if not boolChk then
		boolChk = true
		-- 불이 잘보이게 밤시간으로
		timeMaster.ClockTime = 21
		--불을 붙이자
			print("fire ~~~")
		  local newFire = Instance.new("Fire")
			newFire.Heat = 10
			newFire.Size = 10
		  newFire.Parent = fireBall
		
		
		 wait(10)
		timeMaster.ClockTime = 14
	end
	
end

--버튼 터치시 함수를 호출하여 작동하기
fireButton.Touched:Connect(startFirePlight)
