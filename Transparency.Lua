local changePart = script.Parent

--3초후 작동하기 
wait(3)

-- 증가값 담는 변수
local tVal = 0

-- 초기 투명도 설정 부분 
changePart.Transparency = 0

while true do
	--투명도 무한반복하기
	changePart.Transparency = tVal
	wait(1)
	tVal = tVal + 0.1
	
	--증가 후  투명도 값이 1과 같거나 커치면 다시 0으로 초기화
	if tVal >= 1 then
		tVal = 0
	end
end
