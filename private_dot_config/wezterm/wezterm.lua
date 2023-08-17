local wezterm = require 'wezterm';

-- Show date and battery level at the right of the tab bar
-- https://wezfurlong.org/wezterm/config/lua/window/set_right_status.html
wezterm.on("update-right-status", function(window, pane)
	-- "Wed Mar 3 08:14"
	local date = wezterm.strftime("  %a %b %-d %H:%M ");

	local bat = ""
	for _, b in ipairs(wezterm.battery_info()) do
		bat = "🔋" .. string.format("%.0f%%", b.state_of_charge * 100)
	end

	window:set_right_status(wezterm.format({
		{ Text = bat .. "   " .. date },
	}));
end)

local act = wezterm.action

return {
	-- experimental_shape_post_processing = true,
	window_padding = {
		left = 0,
		right = 0,
		top = 0,
		bottom = 0,
	},
	set_environment_variables = {
		EDITOR = "nvim",
		VISUAL = "nvim"
	},
	-- inactive pane style
	inactive_pane_hsb = {
		saturation = 0.9,
		brightness = 0.8,
	},
	-- Close pane/tab when shell exits (e.g. Ctrl-D)
	exit_behavior = "Close",
	-- Leader key, use with mods="LEADER"
	-- leader = { key = "Alt", timeout_milliseconds = 1000 },

	-- disable_default_key_bindings = true,
	-- debug_key_events = true,
	window_decorations = "NONE",
	keys = {
		-- Panes
		{
			key = "q",
			mods = "SHIFT|ALT",
			action = wezterm.action.CloseCurrentPane { confirm = true },
		},
		{
			key = 'q',
			mods = 'ALT',
			action = wezterm.action.CloseCurrentTab { confirm = true },
		},
		{
			key = '|',
			mods = 'SHIFT|ALT',
			action = wezterm.action.SplitPane {
				direction = 'Right',
				size = { Percent = 50 },
			},
		},
		{
			key = '_',
			mods = 'SHIFT|ALT',
			action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' },
		},
		{
			key = 'LeftArrow',
			mods = 'ALT',
			action = act.ActivatePaneDirection 'Left',
		},
		{
			key = 'RightArrow',
			mods = 'ALT',
			action = act.ActivatePaneDirection 'Right',
		},
		{
			key = 'UpArrow',
			mods = 'ALT',
			action = act.ActivatePaneDirection 'Up',
		},
		{
			key = 'DownArrow',
			mods = 'ALT',
			action = act.ActivatePaneDirection 'Down',
		},

		-- Tabs
		{ key = "mapped:t", mods = "ALT",        action = wezterm.action { SpawnTab = "CurrentPaneDomain" } },
		{ key = "mapped:t", mods = "CTRL|SHIFT", action = wezterm.action { SpawnTab = "DefaultDomain" } },
		{ key = "Tab",      mods = "CTRL",       action = wezterm.action { ActivateTabRelative = -1 } },
		{ key = "Tab",      mods = "CTRL|SHIFT", action = wezterm.action { ActivateTabRelative = 1 } },
		{ key = 'n',        mods = 'ALT',        action = wezterm.action.ActivateTabRelative(1) },
		{ key = 'p',        mods = 'ALT',        action = wezterm.action.ActivateTabRelative(-1) },
		{ key = '1',        mods = 'ALT',        action = wezterm.action.ActivateTab(0) },
		{ key = '2',        mods = 'ALT',        action = wezterm.action.ActivateTab(1) },
		{ key = '3',        mods = 'ALT',        action = wezterm.action.ActivateTab(2) },
		{ key = '4',        mods = 'ALT',        action = wezterm.action.ActivateTab(3) },
		{ key = '5',        mods = 'ALT',        action = wezterm.action.ActivateTab(4) },
		{ key = '6',        mods = 'ALT',        action = wezterm.action.ActivateTab(5) },
		{ key = '7',        mods = 'ALT',        action = wezterm.action.ActivateTab(6) },
		{ key = '8',        mods = 'ALT',        action = wezterm.action.ActivateTab(7) },
		{ key = '9',        mods = 'ALT',        action = wezterm.action.ActivateTab(8) },
		{ key = '1',        mods = 'CTRL|ALT',   action = wezterm.action.MoveTab(0) },
		{ key = '2',        mods = 'CTRL|ALT',   action = wezterm.action.MoveTab(1) },
		{ key = '3',        mods = 'CTRL|ALT',   action = wezterm.action.MoveTab(2) },
		{ key = '4',        mods = 'CTRL|ALT',   action = wezterm.action.MoveTab(3) },
		{ key = '5',        mods = 'CTRL|ALT',   action = wezterm.action.MoveTab(4) },
		{ key = '6',        mods = 'CTRL|ALT',   action = wezterm.action.MoveTab(5) },
		{ key = '7',        mods = 'CTRL|ALT',   action = wezterm.action.MoveTab(6) },
		{ key = '8',        mods = 'CTRL|ALT',   action = wezterm.action.MoveTab(7) },
		{ key = '9',        mods = 'CTRL|ALT',   action = wezterm.action.MoveTab(8) },
		{ key = 'F9',       mods = 'ALT',        action = wezterm.action.ShowTabNavigator },

	},
	-- Default font
	-- font = wezterm.font_with_fallback( {
	-- 	{family="Berkeley Mono" },
	-- 	"Noto Color Emoji",
	-- }),

	font_size = 13.0,
	font_rules = {
		-- {
		-- 	-- Italic
		-- 	italic=true,
		-- 	font = wezterm.font_with_fallback( {
		-- 		{family="Berkeley Mono", italic=true},
		-- 		"Inconsolata Nerd Font Mono",
		-- 		"Noto Color Emoji",
		-- 	}),
		-- },
		-- {
		-- 	-- Bold
		-- 	intensity="Bold", italic=false,
		-- 	font = wezterm.font_with_fallback( {
		-- 		{family="Berkeley Mono", weight="Bold"},
		-- 		"Inconsolata Nerd Font Mono",
		-- 		"Noto Color Emoji",
		-- 	}),
		-- },
		-- {
		-- 	-- Bold Italic
		-- 	intensity="Bold", italic=true,timeout_milliseconds = 1000
		-- 	font = wezterm.font_with_fallback( {
		-- 		{family="Berkeley Mono", weight=700, stretch="Expanded"},
		-- 		"Noto Color Emoji",
		-- 	}),
		-- },
	},
	-- -- Font options
	-- harfbuzz_features = {
	--		"dlig", -- Ligatures
	--		"ss01", -- Single-story a
	--		"ss02", -- Single-story g
	--		"ss03", -- Simplified f
	--		"ss04", -- Simplified i
	--		"ss05", -- Simplified l
	--		"ss06", -- Simplified
	-- 		"ss07", -- Simplified italic diagonals (kwxyz)
	-- 		"ss08", -- No-serif L and Z
	-- 		"ss09", -- Simplified 6 and 9
	-- 		"ss10", -- Dotted 0
	--		"ss11", -- Simplified 1
	--		"ss12", -- Simplified @
	-- },

	-- Font rendering
	-- freetype_render_target = "Light",

	-- Cursor style
	-- default_cursor_style = "SteadyBar",

	-- Hide tab bar when there is only a single tab
	hide_tab_bar_if_only_one_tab = true,
	tab_bar_at_bottom = true,
	skip_close_confirmation_for_processes_named = {
		'bash',
		'sh',
		'zsh',
		'fish',
		'tmux',
		'zellij',
	},
	-- colors = require("colors"),

}
