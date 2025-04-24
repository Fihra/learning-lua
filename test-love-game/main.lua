function love.load()
    -- x = 100
    -- y = 100
    -- move = true
    fruits = {"apple", "banana"}
    table.insert(fruits, "pear")
    table.insert(fruits, "pineapple")
    table.remove(fruits, 2)

    fruits[1] = "tomato"

    for i,v in ipairs(fruits) do
        print(i, v)
    end

    listOfRectangles = {}

end

function createRect()
    rect = {}
    rect.x = 100
    rect.y = 100
    rect.width = 70
    rect.height = 90
    rect.speed = 100

    table.insert(listOfRectangles, rect)

end

function love.keypressed(key)
    if key == "space" then
        createRect()
    end
end

function love.update(dt)

    for i, v in ipairs(listOfRectangles) do
        v.x = v.x + v.speed * dt
    end

    -- rect.x = rect.x + rect.speed * dt
    -- if love.keyboard.isDown("right") then
    --     x = x + 100 * dt
    -- elseif love.keyboard.isDown("up") then
    --     y = y - 100 * dt
    -- elseif love.keyboard.isDown("left") then
    --     x = x - 100 * dt
    -- else
    --     y = y + 100 * dt
    -- end
    -- if x < 600 then
    --     x = x + 100 * dt
    -- end
end

function love.draw(dt)
    for i, v in ipairs(listOfRectangles) do
        love.graphics.rectangle("line", v.x, v.y, v.width, v.height)
    end

    -- love.graphics.rectangle("line", rect.x, rect.y, rect.width, rect.height)

    -- for i, frt in ipairs(fruits) do
    --    love.graphics.print(frt, 100, 100 + 50 * i) 
    -- end

    -- for i=1, #fruits do
    --     love.graphics.print(fruits[i], 100, 100 + 50 * i)
    -- end
    
end