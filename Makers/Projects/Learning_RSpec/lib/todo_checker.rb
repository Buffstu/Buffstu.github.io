def todo_check(arg)
    string_split = arg.split(" ")
    for i in string_split
        if i == "#TODO"
            return true
        end
    end
    return false
end