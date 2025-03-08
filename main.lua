function tabuada(numero)
    print("Tabuada do " .. numero .. ":")
    for i = 1, 10 do
        print(numero .. " x " .. i .. " = " .. (numero * i))
    end
end

function lerNumero()
    io.write("Digite um numero para calcular a tabuada: ")
    local numero = tonumber(io.read())
    return numero
end

function criarTabelaAleatoria()
    math.randomseed(os.time())
    local tabela = {}
    for i = 1, 100 do
        tabela[i] = math.random(1, 1000)
    end

    local pares = 0
    for i = 1, #tabela do
        if tabela[i] % 2 == 0 then
            pares = pares + 1
        end
    end

    print("Tabela criada com 100 numeros aleatorios entre 1 e 1000")
    print("Quantidade de numeros pares: " .. pares)

    print("Primeiros 10 numeros da tabela:")
    for i = 1, 10 do
        print("Indice " .. i .. ": " .. tabela[i])
    end
    
    return tabela, pares
end

print("Exercicio 1:")
local num = lerNumero()
tabuada(num)

print("\nExercicio 2:")
local tabela, pares = criarTabelaAleatoria()