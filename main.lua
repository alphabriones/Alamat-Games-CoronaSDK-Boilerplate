--[[
Alamat Games CoronaSDK Bootstrap
CoronaSDK game prototype template.

Version: 1.0
Made by Alpha Briones @ 2012
Web: http://www.alamatgames.com
Mail: alamatdev@alamatgames.com
--]]

display.setStatusBar(display.HiddenStatusBar )


local director = require("director")
local mainGroup = display.newGroup()

local main = function ()	
	mainGroup:insert(director.directorView)
	
	director:changeScene("view.splash-screen", "crossfade")
	
	return true
end

main()
