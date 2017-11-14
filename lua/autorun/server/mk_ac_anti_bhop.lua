--Анти Заичьи прижки / Bhop.
hook.Add("OnPlayerHitGround", "Anti-Bhop", function(player)
	--Прсмотр прикосновения человека с землёй.
	player:SetVelocity(- player:GetVelocity() / 2)
end)
--Конец
