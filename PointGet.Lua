-- Mesh형태인 apple파트를 변수에 담기
local pointPart = script.Parent

-- 사과를 먹으면 30점을 획득!
local applePoints = 30

-- 플레이어 서비스와 연동하기 
local Players = game:GetService("Players")

-- 점수 획득 함수 만들기 
local function givePoints(player)
	
    local playerStats = player:WaitForChild("leaderstats")
	local playerPoints = playerStats:WaitForChild("Points")
 
	-- 아바타 정보판에 Points 변수 그릇에 30 더하기
	playerPoints.Value = playerPoints.Value + applePoints
	
	-- 점수 반영 후 사라지게 하기
	pointPart:Destroy()
	
	-- 점수 반영 하고 사라질때 파티클 효과 살짝!!!
	local playerCharacter = player.Character
	local particle = Instance.new("ParticleEmitter")
	particle.Parent = playerCharacter:WaitForChild("Head")
	wait(1)
	particle:Destroy()
 
end
 
-- 사과와 터치시 플레이어 정보와 점수주기 연결하는 함수 만들기
local function partTouched(otherPart)
	--local player = Players:GetPlayerFromCharacter(otherPart.Parent)
	local player = game.Players:GetPlayerFromCharacter(otherPart.Parent)
 
	if player then
		givePoints(player)
	end
end
 
-- 사과파트가 아바타와 터치시 위 함수 호출
pointPart.Touched:Connect(partTouched)
