script.on_event(defines.events.on_runtime_mod_setting_changed, function(event)

	if event.setting == "custom-hand-crafting-speed" then

		local modifierSettingValue = settings.global["custom-hand-crafting-speed"].value

		if modifierSettingValue == "Disabled" then
			game.players[event.player_index].force.manual_crafting_speed_modifier = 0
		else
			game.players[event.player_index].force.manual_crafting_speed_modifier = (tonumber(string.sub(modifierSettingValue, 1, 1)) - 1)
		end
		--[[
			Gets the first character of the user selected string option, type converted, then minuses one to offset for the base 1 (100%) crafting speed.
			E.g. 4x = (1 + (4 - 1)) = 4 = 400% multiplier
			http://lua-api.factorio.com/latest/LuaForce.html#LuaForce.manual_crafting_speed_modifier
		]]
	end

end)