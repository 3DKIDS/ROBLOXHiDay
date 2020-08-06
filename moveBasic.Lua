--움직이는 파트 절대 경로로 가져오기
local mPart = game.Workspace.MovePart
-- 클릭이벤트 인식하기 
local clickDector = script.Parent.ClickDetector

-- 마우스 왼쪽 마우스 자동인식 함수
function onMouseClick()
	--현재 벡터 좌표 가져와 X좌표만 변화주기
	local startP = mPart.Position
	mPart.Position = startP + Vector3.new(4,0,0)
	
end

-- 클릭인식기능 활용하여 함수 호출하기
clickDector.MouseClick:Connect(onMouseClick)
