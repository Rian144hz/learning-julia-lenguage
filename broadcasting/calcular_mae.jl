using Statistics
function calcular_mae(real, previsto)
    diferencas = real .- previsto
    erros_absolutos = abs.(diferencas)
    return mean(erros_absolutos)
end