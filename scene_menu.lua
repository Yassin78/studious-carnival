-- FILE: scene_menu.lua
-- Description: start the menu and turn sound on/off

local composer = require( "composer" )

local scene = composer.newScene()

local widget = require "widget"
widget.setTheme("widget_theme_ios7")

-- -----------------------------------------------------------------------------------
-- Code outside of the scene event functions below will only be executed ONCE unless
-- the scene is removed entirely (not recycled) via "composer.removeScene()"
-- -----------------------------------------------------------------------------------

local btn_play, btn_upgrades, btn_sounds


-- -----------------------------------------------------------------------------------
-- Scene event functions
-- -----------------------------------------------------------------------------------

-- create()
function scene:create( event )

    local sceneGroup = self.view
    -- Code here runs when the scene is first created but has not yet appeared on screen
    local background = display.newImageRect(sceneGroup, "images/menuscreen/menu_bg.png", 1425, 950)
      background.x = _CX;
      background.y = _CY;

    local backgroundOverlay= display.newImageRect(sceneGroup, "images/menuscreen/menu_bg_overlay.png", 1425, 950)
      backgroundOverlay.x = _CX;
      backgroundOverlay.y= _CY;

    local gameTitle=display.newImageRect(sceneGroup, "images/menuscreen/title.png", 508, 210)
      gameTitle.x=_CX;
      gameTitle.y=_CH*0.2;

    local myPirate= display.newImageRect(sceneGroup, "images/menuscreen/menu_pirate.png", 209, 358)
      myPirate.x= _L-myPirate.width; myPirate.y=_CH*0.7

    local myNinja=display.newImageRect(sceneGroup, "images/menuscreen/menu_ninja.png", 234, 346)
      myNinja.x=_R+myNinja.width; myNinja.y=_CH*0.7

-- Create buttons
    btn_play = widget.newButton{
      width = 426;
      height = 183;
      defaultFile = "images/menuscreen/btn_play.png",
      overFile = "images/menuscreen/btn_play_over.png"
      onEvent = onPlayTouch
    }
    btn_play.x = _CX
    btn_play.y = _CY
    sceneGroup:insert(btn_play)

end


-- show()
function scene:show( event )

    local sceneGroup = self.view
    local phase = event.phase

    if ( phase == "will" ) then
        -- Code here runs when the scene is still off screen (but is about to come on screen)

    elseif ( phase == "did" ) then
        -- Code here runs when the scene is entirely on screen

    end
end


-- hide()
function scene:hide( event )

    local sceneGroup = self.view
    local phase = event.phase

    if ( phase == "will" ) then
        -- Code here runs when the scene is on screen (but is about to go off screen)

    elseif ( phase == "did" ) then
        -- Code here runs immediately after the scene goes entirely off screen

    end
end


-- destroy()
function scene:destroy( event )

    local sceneGroup = self.view
    -- Code here runs prior to the removal of scene's view

end


-- -----------------------------------------------------------------------------------
-- Scene event function listeners
-- -----------------------------------------------------------------------------------
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )
-- -----------------------------------------------------------------------------------

return scene
