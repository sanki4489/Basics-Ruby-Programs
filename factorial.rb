def factorial
    yield
end

n = gets.to_i
factorial do
    fact=1
    if (n==0)
        puts "Error! Could not find the factorial of one"
    else
        i=1
        while(i<=n)
            fact=fact*i
            i+=1
        end
    end
        puts fact
end
