local test = 20

function some_function(test)
    if true then
        local test = 40
        print("inside if: " .. test)
    end
    print("outside if: " .. test)
end

some_function(30)

print("outside function: " .. test)