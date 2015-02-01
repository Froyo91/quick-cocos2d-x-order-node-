local b = class("b", function()
    return display.newScene("b")
end)

function b:ctor()
    print("b ctor")
end

function b:onEnter()
	print("b onEnter")
end

function b:onEnterTransitionFinish()
	print("b onEnterTransitionFinish")
end

function b:onExit()
	print("b onExit")
end

function b:onExitTransitionStart()
	print("b onExitTransitionStart")
end

function b:onCleanup()
	print("b onCleanup")
end

return b