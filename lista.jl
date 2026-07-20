precos = [12.50, 4.00, 8.20, 25.00]
total = 0.0

for p in precos
global total += p
end

println("O valor da compra é: R\$ $total")