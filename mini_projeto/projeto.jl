using DataFrames
using CSV

tempo_de_espera = [12, 45, 68, 15, 90, 30, 55, 10, 80, 25]

function classificar_prioridade(tempo)
    if tempo >= 60
        return "Emergência"
    elseif tempo >= 30
        return "Urgência"
    else
        return "Pouco Urgente"
    end
end


df_unidade_saude = DataFrame(
paciente_id = 1:10,
tempo_espera = tempo_de_espera,
prioridade = classificar_prioridade.(tempo_de_espera)
)

println(df_unidade_saude)

CSV.write("triagem_hospital.csv", df_unidade_saude)