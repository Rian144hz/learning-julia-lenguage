for i in 1:10
    if i % 3 == 0 && i % 5 == 0
        print("FizzBuzz")
    elseif i % 3 == 0
        print("Fizz")
    elseif i % 5 == 0
        print("buzz")
    end
    println(" ", i)
end