-- 플레이어 서비스와 연동하기 
local Players = game:GetService("Players")

-- 플레이어 아이디 알아보기.
local playerId = script.Parent

-- 휴먼노이드 가져오기.
local hum = playerId:FindFirstChildWhichIsA ("Humanoid")


hum.Running:Connect(function()
	    if hum.FloorMaterial ~= nil then
	        print('Standing on '..hum.FloorMaterial.Name)
					if(hum.FloorMaterial.Name == "CrackedLava") then
						--print("fire")
						--주인공 HP를 0으로 만들기.
						hum.Health =  0
					end
	    else
	        print('Not standing on the floor')
	    end
	end)
