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
	local title = display.newImage("images/ag-title.png")

	local loadMenu = function()
		title = nil	
		director:changeScene("view.menu", "crossfade")
	end

	local initVars = function ()
		localGroup:insert(title)

		title.x = 160
		title.y = 200

		timer.performWithDelay(2000, loadMenu) 
	end

	initVars()
	
	return localGroup
end
