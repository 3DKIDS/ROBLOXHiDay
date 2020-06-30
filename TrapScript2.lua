-- 2초마다 체력소모는 5 
local DAMAGE = 5
local COOLDOWN_IN_SECONDS = 2

-- ============================================

-- 부비 트램 파트 변수 담기
local harmOrHealPart = script.Parent

-- 파트일때 동작하기 때문에 파트아래에 넣어야 한다.
if not harmOrHealPart:IsA("BasePart") then
    warn("부비트랩 스크립트는  " .. harmOrHealPart:GetFullName() .. " 파트가 현재  " .. harmOrHealPart.ClassName .."이니 파트로 옮겨 주세요!!")
end

-- 부비트랩에 받는 캐릭터 넣을 테이블 생성
local characters = {}

-- 휴모노이드 캐릭터가 터치될때 호출하는 함수
local function onTouch(otherPart)

    -- 부분 캐릭터 파트로부터 휴모노이드 가져오기
    local character = otherPart.Parent
    local humanoid = character:FindFirstChildWhichIsA("Humanoid")
	local player = game:GetService("Players"):GetPlayerFromCharacter(character)
    -- 휴모노이드고 캐릭터가 터치 되어 있지 않다면
    if player and humanoid and not characters[character] then
        -- 캐릭터에데 데미지 주기 
        humanoid:TakeDamage(DAMAGE)		
        characters[character] = true
        -- 2초 기다리고
        wait(COOLDOWN_IN_SECONDS)
        -- 데미지 입은 캐릭터 테이블에서 지우기
        characters[character] = nil
    end
end

-- 터치 이벤트 함수 호출
harmOrHealPart.Touched:Connect(onTouch)
