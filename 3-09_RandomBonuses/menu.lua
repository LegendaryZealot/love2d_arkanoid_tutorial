local menu = {}

function menu.load( prev_state, ... )
   music:play()
end

function menu.update( dt )
end

function menu.draw()
   love.graphics.print("Menu gamestate. Press Enter to continue.",
		       280, 250)
end

function menu.keyreleased( key, code )
   if key == "return" then
      gamestates.set_state( "game", { current_level = 1 } )
   elseif key == 'escape' then
      love.event.quit()
   end    
end

function menu.mousereleased( x, y, button, istouch )
   if button == 'l' or button == 1 then
      gamestates.set_state( "game", { current_level = 1 } )
   elseif button == 'r' or button == 2 then
      love.event.quit()
   end    
end

return menu
