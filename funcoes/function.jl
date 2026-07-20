function media_movel_3dias(dados)
    ultimos_3 = dados[end-2:end]
    return sum(ultimos_3) / length(ultimos_3)
end

dias = [22, 14, 17, 21, 4, 7]

media = media_movel_3dias(dias)
println("Média dos últimos 3 dias: $media")

@time media = media_movel_3dias(dias)