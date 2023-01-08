local wezterm = require 'wezterm'

return {
    font = wezterm.font 'DaddyTimeMono NF',
    font_size = 15,
    color_scheme = "Framer (base16)",

    -- colors = {
    --     foreground = '#abb2bf',
    --     tab_bar = {
    --         background = 'rgba(30,33,39,95%)',
    --
    --         active_tab = {
    --             bg_color = 'rgba(40,44,52,1)',
    --             fg_color = '#c0c0c0',
    --             intensity = 'Normal',
    --             underline = 'None',
    --             italic = false,
    --             strikethrough = false,
    --         },
    --
    --         inactive_tab = {
    --             bg_color = 'rgba(30,33,39,95%)',
    --             fg_color = '#808080',
    --         },
    --
    --         inactive_tab_hover = {
    --             bg_color = 'rgba(30,33,39,95%)',
    --             fg_color = '#909090',
    --             italic = true,
    --
    --         },
    --
    --         new_tab = {
    --             bg_color = 'rgba(30,33,39,95%)',
    --             fg_color = '#808080',
    --
    --         },
    --
    --         new_tab_hover = {
    --             bg_color = 'rgba(40,44,52,1)',
    --             fg_color = '#909090',
    --             italic = true,
    --
    --         },
    --     },
    -- },

    -- window_frame = {
    --     active_titlebar_bg = 'rgba(30,33,39,95%)',
    --
    --     inactive_titlebar_bg = 'rgba(30,33,39,95%)',
    -- },

    window_background_opacity = 0.97,
    hide_tab_bar_if_only_one_tab = true,

    window_padding = {
        left = 0,
        right = 0,
        top = 0,
        bottom = 0,
    },
}
