-- 가장기본적인 점프 만들기
-- 3dkids4u@gmail.com
-- 서종원

-- 점프에 사용할 변수 만들기
local jumpPart = script.Parent

-- 점프 능력 함수 만들기
function JumpUp(hit)
    -- hit에는 아바타의 몸의 부분을 인식
    -- hit에 왼쪽 다리가 인식된다면 왼쪽다리의 부모는 즉 아바타를 뜻한다.
	local character = hit.Parent
	local humanoid = character:FindFirstChildWhichIsA ("Humanoid")
	
		if humanoid ~=nil then
	    --점프 값은 여러분이 자유롭게 변경해 보세요 ^^
		 humanoid.JumpPower = 60
		 wait(2)
		-- 기본 점프 파워 50으로 
		 humanoid.JumpPower = 13
	 	end
end

jumpPart.Touched:connect(JumpUp)
