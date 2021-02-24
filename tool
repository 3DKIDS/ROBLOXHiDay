-- 도구를 휘두르는 데 걸리는 시간입니다. 0.5는 짧아지고, 3은 길어집니다.
local SWING_TIME = 1

--====================== DO NOT EDIT UNDER HERE ======================--
local Players = game:GetService("Players")

-- 플레이어가 도구를 회전할 수 있는지 여부를 확인합니다.
local canSwing = true
-- 이 도구로 플레이어에 부착된 휴머노이드
local tool = script.Parent
local player = Players.LocalPlayer
local character = player.Character
if not character then
	character = player.CharacterAdded:Wait()
end
local humanoid = character:WaitForChild("Humanoid")

-- Animations캐릭터별 애니메이션 구별하기
local r6swing = script.R6AnimationSwing
local r15swing = script.R15AnimationSwing

-- 캐릭터가 워크스페이스의 일부가 될 때까지 기다립니다
--(워크스페이스에 없는 캐릭터의 애니메이션을 설정할 수 없음).
while not character:IsDescendantOf(game.Workspace) do
	wait()
end
--애니메이션을 플레이어 리그의 올바른 리그 유형으로 설정합니다.
--r15 6420878474
--r6 704172536
local rigType = humanoid.RigType
local swing = nil 
if rigType == Enum.HumanoidRigType.R15 then
	swing = humanoid:LoadAnimation(r15swing)
elseif rigType == Enum.HumanoidRigType.R6 then
	swing = humanoid:LoadAnimation(r6swing)
end
-- 실제 길이와 원하는 시간을 기준으로 애니메이션 속도 계산
while swing.Length == 0 do
	wait()
end
local swingSpeed = swing.Length / SWING_TIME

local function swingTool()
	print("swing")
	if canSwing == true then
		-- 애니메이션이 완료될 때까지 사용자가 클릭하지 않도록 합니다.
		canSwing = false

		-- Start playing animation
		swing:Play()
		swing:AdjustSpeed(swingSpeed)

		-- 사용자가 다시 클릭할 수 있도록 허용하기 전에 대기
		wait(SWING_TIME)
		canSwing = true
	end
end

-- 플레이어가 도구를 사용하여 마우스 왼쪽 단추로 클릭할 때마다 재생
tool.Activated:Connect(swingTool)
