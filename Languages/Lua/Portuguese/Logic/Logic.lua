-- 1. Variáveis e Tipos de Dados
-- Variáveis são como "caixas" onde armazenamos informações. Cada caixa tem um tipo específico.

idade = 25            -- Tipo inteiro: armazena números inteiros
altura = 1.75         -- Tipo ponto flutuante: armazena números com casas decimais
nome = "João"         -- Tipo texto (String): armazena uma sequência de caracteres
estudante = true      -- Tipo lógico (booleano): armazena verdadeiro ou falso

print("Idade: " .. idade)
print("Altura: " .. altura)
print("Nome: " .. nome)
print("Estudante: " .. tostring(estudante))

-- 2. Operadores
-- Operadores aritméticos, de comparação e lógicos.

-- Operadores Aritméticos
soma = 10 + 5  -- Adição
resto = 10 % 3 -- Módulo (resto da divisão)
print("Soma: " .. soma)
print("Resto: " .. resto)

-- Operadores de Comparação
resultado = 10 > 5  -- Verifica se 10 é maior que 5
iguais = 5 == 5    -- Verifica se 5 é igual a 5
print("10 > 5: " .. tostring(resultado))
print("5 == 5: " .. tostring(iguais))

-- Operadores Lógicos
eCondicao = (10 > 5) and (5 < 10)  -- 'E' lógico: ambas as condições precisam ser verdadeiras
ouCondicao = (10 > 5) or (5 > 10)  -- 'OU' lógico: uma das condições precisa ser verdadeira
print("Condição E: " .. tostring(eCondicao))
print("Condição OU: " .. tostring(ouCondicao))

-- 3. Estruturas Condicionais
-- Condições para tomar decisões no programa.

idadePessoa = 20
if idadePessoa >= 18 then
    print("Você é maior de idade.")
else
    print("Você é menor de idade.")
end

-- Switch Case: alternativa ao if-else quando temos várias condições possíveis
numero = 2
if numero == 1 then
    print("É um")
elseif numero == 2 then
    print("É dois")
else
    print("Outro número")
end

-- 4. Laços de Repetição (Loops)
-- Usados quando queremos repetir um bloco de código várias vezes.

for i = 1, 5 do
    print(i)  -- Vai imprimir 1, 2, 3, 4, 5
end

j = 1
while j <= 5 do
    print(j)  -- Vai imprimir 1, 2, 3, 4, 5
    j = j + 1  -- Incrementa o valor de j
end

k = 1
repeat
    print(k)  -- Vai imprimir 1, 2, 3, 4, 5
    k = k + 1
until k > 5

-- 5. Funções (Métodos)
-- Funções são usadas para organizar e reutilizar blocos de código.

function saudacao()
    print("Olá, seja bem-vindo!")
end

function soma(a, b)
    return a + b  -- Retorna a soma dos dois números
end

saudacao()  -- Chama a função saudacao
resultadoSoma = soma(5, 3)  -- Chama a função soma
print("Resultado da soma: " .. resultadoSoma)

-- 6. Entrada e Saída de Dados
-- Usado para interagir com o usuário, capturando entradas e exibindo saídas.

function entradaSaida()
    io.write("Digite seu nome: ")  -- Captura o nome do usuário
    nome = io.read()
    print("Olá, " .. nome)
end

-- 7. Manipulação de Strings
-- Strings são sequências de caracteres, úteis para trabalhar com texto.

function manipulacaoStrings()
    nome = "João"
    saudacao = "Olá, " .. nome .. "!"  -- Concatenando strings
    print(saudacao)  -- Exibe: Olá, João!

    palavra = "programação"
    tamanho = #palavra  -- Verifica o tamanho da string
    contem = string.find(palavra, "grama") ~= nil  -- Verifica se a palavra contém "grama"
    print("Tamanho da palavra: " .. tamanho)
    print("Contém 'grama': " .. tostring(contem))
end

-- 8. Arrays
-- Arrays são usados para armazenar múltiplos valores do mesmo tipo em uma única variável.

function exemploArrays()
    numeros = {1, 2, 3, 4, 5}  -- Declaração e inicialização de um array
    print("Primeiro número: " .. numeros[1])  -- Acessa o primeiro valor
    print("Último número: " .. numeros[#numeros])  -- Acessa o último valor
end

-- 9. Classe e Objetos
-- Criando uma classe e instanciando objetos dela.

Pessoa = {}
Pessoa.__index = Pessoa

function Pessoa:new(nome, idade)
    local pessoa = setmetatable({}, self)
    pessoa.nome = nome
    pessoa.idade = idade
    return pessoa
end

function Pessoa:apresentar()
    print("Olá, meu nome é " .. self.nome .. " e tenho " .. self.idade .. " anos.")
end

function exemploClasseObjetos()
    pessoa1 = Pessoa:new("Nico", 30)  -- Criação de um objeto da classe Pessoa
    pessoa1:apresentar()  -- Chamada do método
end

-- 10. Conceito de `self`
-- O `self` é usado para referir-se ao objeto atual dentro de um método da classe.

function exemploSelf()
    Carro = {}
    Carro.__index = Carro

    function Carro:new(modelo)
        local carro = setmetatable({}, self)
        carro.modelo = modelo
        return carro
    end

    function Carro:mostrarModelo()
        print("Modelo do carro: " .. self.modelo)
    end

    carro = Carro:new("Fusca")
    carro:mostrarModelo()  -- Exibe: Modelo do carro: Fusca
end

-- 11. Herança
-- Criando uma classe filha que herda de uma classe pai.

Animal = {}
Animal.__index = Animal

function Animal:new(nome)
    local animal = setmetatable({}, self)
    animal.nome = nome
    return animal
end

function Animal:fazerSom()
    print("O animal faz um som.")
end

Cachorro = setmetatable({}, Animal)
Cachorro.__index = Cachorro

function Cachorro:fazerSom()
    print("O cachorro late.")
end

function exemploHeranca()
    cachorro = Cachorro:new("Rex")
    cachorro:fazerSom()  -- O método sobreposto é chamado
end

-- 12. Encapsulamento
-- Usando modificadores de acesso para proteger dados.

function exemploEncapsulamento()
    ContaBancaria = {}
    ContaBancaria.__index = ContaBancaria

    function ContaBancaria:new()
        local conta = setmetatable({}, self)
        conta._saldo = 0  -- Atributo privado
        return conta
    end

    function ContaBancaria:depositar(valor)
        if valor > 0 then
            self._saldo = self._saldo + valor
        end
    end

    function ContaBancaria:getSaldo()
        return self._saldo  -- Acesso ao saldo através de um método público
    end

    conta = ContaBancaria:new()
    conta:depositar(500)
    print("Saldo da conta: " .. conta:getSaldo())
end

-- 13. Exceções
-- Tratamento de erros durante a execução do programa.

function exemploExcecao()
    pcall(function()
        resultado = 10 / 0  -- Divisão por zero
    end)
end

-- 14. Trabalhando com `ArrayList`
-- O ArrayList é uma coleção que pode crescer dinamicamente.

function exemploArrayList()
    lista = {"Java", "Python", "C++"}

    print("Tamanho da lista: " .. #lista)  -- Exibe o tamanho da lista
    print("Primeiro item: " .. lista[1])  -- Acessa o primeiro item da lista
end
