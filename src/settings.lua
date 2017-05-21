data:extend({
	{
		type = "string-setting",
		name = "custom-hand-crafting-speed",
		setting_type = "runtime-global",
		default_value = "Disabled",
		allowed_values = {"Disabled", "2x", "4x", "8x", "16x", "32x", "64x", "128x"}
		-- The use of string options is purely to make it user friendly
	}
})