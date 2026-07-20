using DataFrames
using Plots
using CSV

df_hosp = DataFrame(
 setor = ["Triagem", "Pediatria", "Emergência", "UTI"],
 pacientes = [45, 20, 60, 12]
)
df_hosp.capacidade_maxima = [50, 30, 50, 15]

df_hosp.lotado = df_hosp.pacientes .>= df_hosp.capacidade_maxima

println(df_hosp)

CSV.write("Relatorio_hospital.csv",df_hosp)

 bar(
    df_hosp.setor, 
    df_hosp.pacientes, 
    title = "Atendimentos por Setor Hospitalar", 
    xlabel = "Setores", 
    ylabel = "Nº de Pacientes", 
    color = :steelblue, 
    legend = false
)

savefig("grafico_hospitalar.png")
