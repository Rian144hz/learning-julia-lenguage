using Flux
using Plots

# Modelo de rede neural
model = Chain(
    Dense(1, 20, relu),
    Dense(20, 1)
)

# Dados
x = Float32.(reshape(collect(-1:0.1:1), 1, :))
y = x.^2

# Função de erro
loss(m, x, y) = Flux.mse(m(x), y)

# Otimizador
opt = Flux.setup(Descent(0.01), model)

# Treinamento
for i in 1:500
    Flux.train!(loss, model, [(x,y)], opt)
end

# Gráfico
p = plot(vec(x), vec(y), label="Real")
plot!(p, vec(x), vec(model(x)), label="IA")

savefig(p, "ia.png")

println("Imagem salva como ia.png")