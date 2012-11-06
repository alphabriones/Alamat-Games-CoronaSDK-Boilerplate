--[[
Alamat Games CoronaSDK Bootstrap
CoronaSDK game prototype template.

Version: 1.0
Made by Alpha Briones @ 2012
Web: http://www.alamatgames.com
Mail: alamatdev@alamatgames.com
--]]

module(..., package.seeall)


new = function (params)
	local localGroup = display.newGroup()
	local background = display.newImage("images/background1.png" )

	local initVars = function()
		localGroup:insert(background)
	end

	initVars()
	
	return localGroup
end
