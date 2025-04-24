function love.load()
    image = love.graphics.newImage("jump.png")
    image2 = love.graphics.newImage("jump_2.png")

    local width = image:getWidth()
    local height = image:getHeight()

    local width2 = image2:getWidth()
    local height2 = image2:getHeight()

    frames = {}
    local frame_width = 117
    local frame_height = 233

    frames2 = {}

    for i=0, 4 do
        table.insert(frames, love.graphics.newQuad(i * frame_width, 0, frame_width, frame_height, width, height))
    end

    -- currentFrame = 1
    maxFrames = 5

    for i=0,1 do
        for j=0,2 do
            table.insert(frames2, love.graphics.newQuad(j * frame_width, i * frame_height, frame_width, frame_height, width2, height2))
            if #frames2 == maxFrames then
                break
            end
        end
        print("I don't break")
    end
    currentFrame = 1

    -- table.insert(frames, love.graphics.newQuad(0, 0, frame_width, frame_height, image:getWidth(), image.getHeight()))
    -- table.insert(frames, love.graphics.newQuad(frame_width, 0, frame_width, frame_height, image:getWidth(), image:getHeight()))
    
end

function love.update(dt)
    currentFrame = currentFrame + 10 * dt
    if currentFrame >= 6 then
        currentFrame = 1
    end
end

function love.draw()
    love.graphics.draw(image, frames[math.floor(currentFrame)], 100, 100)
end


