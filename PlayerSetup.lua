-- 플레이어 변수를 표시하는 보드를 만듭니다.
local function onPlayerJoin(player)
	local leaderstats = Instance.new("Folder")
	leaderstats.Name = "leaderstats"
	leaderstats.Parent = player
    
	--오늘 우리는 사과를 먹으면 점수표시는 Points를 사용합니다.
	local points = Instance.new("IntValue")
	points.Name = "Points"
	points.Value = 0
	points.Parent = leaderstats
 
	local items= Instance.new("IntValue")
	items.Name = "Items"
	items.Value = 0
	items.Parent = leaderstats
 
	local spaces = Instance.new("IntValue")
	spaces.Name = "Spaces"
	spaces.Value = 0
	spaces.Parent = leaderstats
 
end
 
-- PlayerAdded 이벤트가 발생하면 onPlayerJoin을 실행합니다.
game.Players.PlayerAdded:Connect(onPlayerJoin)
