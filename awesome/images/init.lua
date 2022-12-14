-- sussy images
-- ~~~~~~~~~~~~


-- misc/vars
-- ~~~~~~~~~
local directory = home_var .. "/.config/awesome/images/sus/"
local ui_vars = require("theme.ui_vars")


-- init
-- ~~~~
return {

    -- images
    bell = directory .. "bell.png",
    profile = directory .. "profile.jpeg",
    profile_circle = directory .. "profile.png",
    power = directory .. "power.png",
    music_icon = directory .. "music.png",
    album_art = directory .. "album-art.png",
    awesome = directory .. "awesome.png",
    battery_low = directory .. "battery_low.png",

    -- layouts
    layouts = {
        flair = directory .. "layouts/flair.png",
        floating = directory .. "layouts/floating.png",
        tile = directory .. "layouts/tile.png",
        layoutMachi = directory .. "layouts/layout-machi.png"
    },

    -- wallpapers
    wall = directory .."walls/bg.png",
}
