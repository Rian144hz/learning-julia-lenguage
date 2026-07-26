using DataFrames

atendimentos_df = DataFrame(
    dia = ["seg","ter","qua","qui","sex"],
    quantidade = [40, 35, 50, 45, 30]
)


#tabela toda:
println(atendimentos_df)

#apenas a coluna dia:
println(atendimentos_df.dia);
#quantidade dos atendimentos:
println(atendimentos_df.quantidade);

#maior que 40:
df_maior_que_40 = atendimentos_df[atendimentos_df.quantidade .> 40, :]
println(df_maior_que_40)