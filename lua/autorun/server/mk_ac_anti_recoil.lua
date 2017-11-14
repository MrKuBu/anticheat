--Анти отдача. (Позволяет вам смотреть вверх, вниз, горизонтально, вертикально при стрельбе).
--Primary.Recoil
--Primary.KickDown
--Primary.KickUp
--Primary.KickHorizontal
--Primary.KickVertical
--Secondary.Recoil
--Secondary.KickDown
--Secondary.KickUp
--Secondary.KickHorizontal
--Secondary.KickVertical

hook.Add("StartCommand", "StartCommand-Anti-Recoil", function(pl, key)
	--Если игрок удерживает кнопку срельбы
	
	--Если игрок использует первичную атаку(MOUSE1 обычно), а магазин на оружии больше 0 (не пустой).
	if pl:KeyDown(IN_ATTACK) and pl:GetActiveWeapon():Clip1() != nil and pl:GetActiveWeapon():Clip1() > 0 then
		--Если оружие, которое они держат, имеет метод отдачи, прикрепленный к SWEP.
		--Если метод отдачи запускается.
		if pl:GetActiveWeapon().Primary.KickUp != nil then
	
			pl:SetEyeAngles( pl:EyeAngles() +  Angle(-pl:GetActiveWeapon().Primary.KickUp,0,0) ) --Angle (Up,Down | Left,Right | Screen rotate)
		end
		
		--Если метод отдачи является kickdown.
		if pl:GetActiveWeapon().Primary.KickDown != nil then
			--Заставить игрока смотреть вниз при первичной стрельбе.
			pl:SetEyeAngles( pl:EyeAngles() +  Angle(pl:GetActiveWeapon().Primary.KickDown,0,0) ) --Angle (Up,Down | Left,Right | Screen rotate)
		end
		
		--Если метод отдачи это отдача.
		if pl:GetActiveWeapon().Primary.Recoil != nil then
			--Заставить игрока смотреть вниз при первичной стрельбе.
			pl:SetEyeAngles( pl:EyeAngles() +  Angle(pl:GetActiveWeapon().Primary.Recoil,0,0) ) --Angle (Up,Down | Left,Right | Screen rotate)
		end
	end
	
	--!!!2 способ такой же только на вторичную клавишу мыши!!! (лучше придумать не мог)
	
	--Если игрок использует вторичную атаку(MOUSE2 обычно), а магазин на оружии больше 0 (не пустой).
	if pl:KeyDown(IN_ATTACK2) and pl:GetActiveWeapon():Clip1() != nil and pl:GetActiveWeapon():Clip1() > 0 then
		--Если оружие, которое они держат, имеет метод отдачи, прикрепленный к SWEP.
		--Если метод отдачи запускается.
		if pl:GetActiveWeapon().Secondary.KickUp != nil then
			--Force the player to look up secondary firing.
			pl:SetEyeAngles( pl:EyeAngles() +  Angle(-pl:GetActiveWeapon().Secondary.KickUp,0,0) ) --Angle (Up,Down | Left,Right | Screen rotate)
		end
		
		--Если метод отдачи является kickdown.
		if pl:GetActiveWeapon().Secondary.KickDown !=nil then
			--Force the player to look down while secondary firing.
			pl:SetEyeAngles( pl:EyeAngles() +  Angle(pl:GetActiveWeapon().Secondary.KickDown,0,0) ) --Angle (Up,Down | Left,Right | Screen rotate)
		end
		
		--Если метод отдачи это отдача.
		if pl:GetActiveWeapon().Secondary.Recoil != nil then
			--Заставить игрока смотреть вниз при первичной стрельбе.
			pl:SetEyeAngles( pl:EyeAngles() +  Angle(pl:GetActiveWeapon().Secondary.Recoil,0,0) ) --Angle (Up,Down | Left,Right | Screen rotate)
		end
	end
end)
