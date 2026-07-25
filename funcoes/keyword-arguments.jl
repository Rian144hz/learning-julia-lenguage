function descricao_atendimento(quantidade; unidade = "atendimentos")
    return "Total: $quantidade $unidade"
end

println(descricao_atendimento( unidade = "pessoas",45))