--밝으면 펑! 기능
local trap = script.Parent

--부비트램 함수
local function TrapPong(hit)
	--hit 변수에는 아바타가 담겨져 있겠죠 Destory()는 파괴하다 뜻
	  hit:Destroy()
end

--아바타가 터치되면 함수 호출
trap.Touched:Connect(TrapPong)
