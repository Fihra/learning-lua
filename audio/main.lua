function love.load()
    song = love.audio.newSource("song.ogg", "stream")
    -- love.audio.play(song)
    song:setLooping(true)
    song:play()

    sfx = love.audio.newSource("sfx.ogg", "static")
end

function love.keypressed(key)
    if key == "space" then
        sfx:play()
    end
end
