
local a = class("a", function()
    return display.newScene("a")
end)

local layer = nil
function a:ctor()
    print("a ctor")

    layer = display.newLayer()
    layer:setTouchEnabled(true)
    layer:addNodeEventListener(cc.NODE_TOUCH_EVENT, function(event)
    	print("sign!")
        display.replaceScene(require("app.scenes.b").new(), "fade", 0.5, cc.c3b(208, 231, 249))
    end)
    self:addChild(layer)
end

function a:onEnter()
	print("a onEnter")
end

function a:onEnterTransitionFinish()
	print("a onEnterTransitionFinish")
end

function a:onExit()
	print("a onExit")
end

function a:onExitTransitionStart()
	print("a onExitTransitionStart")
end

function a:onCleanup()
	print("a onCleanup")
end

return a
