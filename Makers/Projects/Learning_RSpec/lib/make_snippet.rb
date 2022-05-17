def make_snippet(arg)
    x = arg.split(/[^-a-zA-Z]/)
    if x.length <=5
        return arg
    else
        first_five = x[0,5].join(" ")
        return first_five + "..."
    end
end
puts 0