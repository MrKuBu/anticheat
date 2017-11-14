--Анти speedhack.
hook.Add("Move", "Anti-SpeedHack", function(player, playermovedata)
	--Каждый класс игрока будет иметь разную скорость, поэтому позволяет захватить точную скорость(число) каждого игрока.
	local max_speed = player:GetMaxSpeed()
	--Получаем текущую скорость игроков.
	local speed = player:GetVelocity():Length()
	--Макс. скорость падения по координате z на карте. (Требуется длительное падение, чтобы превысить это значение.)
	local fall_speed = 2670 -- Не трогаем значение т.к. это номинал.
	--Если скорость игрока на земле превышает max_speed, то уменьшаем скорость до max_speed и ниже.
	if speed > max_speed and player:IsOnGround() then
		playermovedata:SetVelocity(player:GetVelocity() * (max_speed/speed))
	end
	--Если игрок на скорости падении превышает fall_speed, то уменьшаем скорость до fall_speed и ниже.
	if speed > fall_speed and !player:IsOnGround() then
		playermovedata:SetVelocity(player:GetVelocity() * (fall_speed/speed))
	end
end)
