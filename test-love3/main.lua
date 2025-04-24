local r1, r2

function love.load()
    Object = require "classic"
    local Rectangle = require "rectangle"
    local Circle = require "circle"
    r1 = Rectangle(100, 100, 200, 50)
    -- r2 = Rectangle(350, 80, 25, 140)
    r2 = Circle(350, 80, 40)
end

function love.update(dt)
    r1:update(dt)
    r2:update(dt)
    -- r1.update(r1, dt)
end

function love.draw()
    r1:draw()
    r2:draw()
    -- r1.draw(r1)
end
