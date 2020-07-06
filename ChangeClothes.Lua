-- 팬츠 와 셔츠 바꾸기
local changePart = script.Parent


local function replaceClothes(otherPart)
    local character = otherPart.Parent
	print("Clothes3")
	if character  then 
			-- 셔츠 팬츠가 있는지 찾아보기
		local shirt = character:FindFirstChildOfClass("Shirt")
		local pants = character:FindFirstChildOfClass("Pants")
		-- 없다면 새로 생성하기
		if not shirt then 
			shirt = Instance.new("Shirt", character)
		end 
		if not pants then 
			pants = Instance.new("Pants", character)
		end
		-- 샘플로 제공된 템플릿 이미지를 업로드하고 id를 복사해서 테스트
		-- 수정해서 사용할 부분
		    shirt.ShirtTemplate = "rbxassetid://5226716997"
			--pants.PantsTemplate = "rbxassetid://5202431205"	
	end
	
end


-- 스피드업 파트에 터치되면 함수 호출 
changePart.Touched:Connect(replaceClothes)

