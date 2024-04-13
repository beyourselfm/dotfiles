local wezterm = require("wezterm")
local config = {
	font_size = 26,
	font = wezterm.font("ComicMono NF", {
		weight = "Regular",
	}),

	color_scheme = "rose-pine",
	use_fancy_tab_bar = false,
	hide_tab_bar_if_only_one_tab = true,
	window_decorations = "RESIZE",
	show_new_tab_button_in_tab_bar = false,
	window_background_opacity = 0.72,
	macos_window_background_blur = 18,
	text_background_opacity = 1,
	adjust_window_size_when_changing_font_size = false,

	window_padding = {
		left = 20,
		right = 20,
		top = 20,
		bottom = 5,
	},

	keys = {
		{
			key = "1",
			mods = "CMD",
			action = wezterm.action.Multiple({
				wezterm.action.SendKey({ mods = "CTRL", key = " " }),
				wezterm.action.SendKey({ key = "1" }),
			}),
		},

		{
			key = "2",
			mods = "CMD",
			action = wezterm.action.Multiple({
				wezterm.action.SendKey({ mods = "CTRL", key = " " }),
				wezterm.action.SendKey({ key = "2" }),
			}),
		},

		{
			key = "3",
			mods = "CMD",
			action = wezterm.action.Multiple({
				wezterm.action.SendKey({ mods = "CTRL", key = " " }),
				wezterm.action.SendKey({ key = "3" }),
			}),
		},

		{
			key = "4",
			mods = "CMD",
			action = wezterm.action.Multiple({
				wezterm.action.SendKey({ mods = "CTRL", key = " " }),
				wezterm.action.SendKey({ key = "4" }),
			}),
		},

		{
			key = "5",
			mods = "CMD",
			action = wezterm.action.Multiple({
				wezterm.action.SendKey({ mods = "CTRL", key = " " }),
				wezterm.action.SendKey({ key = "5" }),
			}),
		},
		{
			key = "6",
			mods = "CMD",
			action = wezterm.action.Multiple({
				wezterm.action.SendKey({ mods = "CTRL", key = " " }),
				wezterm.action.SendKey({ key = "6" }),
			}),
		},
		{
			key = "7",
			mods = "CMD",
			action = wezterm.action.Multiple({
				wezterm.action.SendKey({ mods = "CTRL", key = " " }),
				wezterm.action.SendKey({ key = "7" }),
			}),
		},
	},
}

return config
