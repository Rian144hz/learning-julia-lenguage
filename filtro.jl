function filter_expensive_itens(price_list)

  expensive_itens = Float64[]

   for price in price_list
     if price >= 10.0
    push!(expensive_itens,price)
    
       end
  end

  return expensive_itens
end

shopping = [4.50, 12.00, 3.20, 25.50, 8.00,9.99,10.00]

result =  filter_expensive_itens(shopping)

println("List of expensives itens! $result")
