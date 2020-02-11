--Анти Заичьи прижки / Bhop.
hook.Add("OnPlayerHitGround", "Anti-Bhop", function(player)
	--Прсмотр прикосновения человека с землёй.
	--player:SetVelocity(- player:GetVelocity() / 2) -- Старый способ(подкивание вверх - не очень актуально)
	local vel = player:GetVelocity()
	if 300 == 0 or ( vel.x > 300 or vel.x < -300 or vel.y > 300 or vel.y < -300 ) then
		local suppressor = 1 + (50 / 100)
		player:SetVelocity( Vector( -( vel.x / suppressor ), -( vel.y / suppressor ), 0 ) )
	end
end)
