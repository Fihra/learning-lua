function love.load()
    myImage = love.graphics.newImage("images/sheep.png")
    love.graphics.setBackgroundColor(1, 1, 1)
    width = myImage:getWidth()
    height = myImage:getHeight()
end

function love.draw()
    love.graphics.setColor(255/255, 200/255, 40/255, 127/255)
    love.graphics.setColor(1, 0.78, 0.15, 0.5)
    love.graphics.draw(myImage, 100, 100)
    love.graphics.setColor(1, 1, 1)
    love.graphics.draw(myImage, 200, 100)
end

