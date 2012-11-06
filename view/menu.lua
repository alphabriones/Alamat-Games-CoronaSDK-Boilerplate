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
	local background = display.newImage("images/background1.png")
	local start = display.newImage("images/start.png")
	local startTouch = display.newImage("images/start-touch.png")

	local options = display.newImage("images/options.png")
	local optionsTouch = display.newImage("images/options-touch.png")

	local credits = display.newImage("images/credits.png")
	local creditsTouch = display.newImage("images/credits-touch.png")

	local localGroup = display.newGroup()


	local initVars = function()
		start.x = display.contentWidth/2
		start.y = display.contentHeight/2 - start.height
		startTouch.x = display.contentWidth/2
		startTouch.y = display.contentHeight/2 - startTouch.height
		startTouch.isVisible = false

		options.x = display.contentWidth/2
		options.y = display.contentHeight/2
		optionsTouch.x = display.contentWidth/2
		optionsTouch.y = display.contentHeight/2
		optionsTouch.isVisible = false

		credits.x = display.contentWidth/2
		credits.y = display.contentHeight/2 + credits.height
		creditsTouch.x = display.contentWidth/2
		creditsTouch.y = display.contentHeight/2 + creditsTouch.height
		creditsTouch.isVisible = false

		localGroup:insert(background)
		localGroup:insert(start)
		localGroup:insert(startTouch)
		localGroup:insert(options)
		localGroup:insert(optionsTouch)
		localGroup:insert(credits)
		localGroup:insert(creditsTouch)
	end

	local startListener = function (self, event) 		
        if event.phase == "began" then
        	startTouch.isVisible = true
        elseif event.phase == "ended" then
        	startTouch.isVisible = false
        end

		return true
	end

	local optionsListener = function (self, event) 		
        if event.phase == "began" then
        	optionsTouch.isVisible = true
        elseif event.phase == "ended" then
        	optionsTouch.isVisible = false
        end

		return true
	end
	
	local creditsListener = function (self, event) 		
        if event.phase == "began" then
        	creditsTouch.isVisible = true
        elseif event.phase == "ended" then
        	creditsTouch.isVisible = false
        end

		return true
	end

	local addListeners = function()
		start.touch = startListener
		start:addEventListener("touch", start)

		options.touch = optionsListener
		options:addEventListener("touch", options)

		credits.touch = creditsListener
		credits:addEventListener("touch", credits)

	end

	initVars()
	addListeners()

	return localGroup
end
