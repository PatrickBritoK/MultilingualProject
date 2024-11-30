// 1. Variáveis e Tipos de Dados
let idade = 25            // Tipo inteiro: armazena números inteiros
let altura = 1.75         // Tipo ponto flutuante: armazena números com casas decimais
let nome = "João"         // Tipo texto (String): armazena uma sequência de caracteres
let estudante = true      // Tipo lógico (booleano): armazena verdadeiro ou falso

print("Idade: \(idade)")
print("Altura: \(altura)")
print("Nome: \(nome)")
print("Estudante: \(estudante)")

// 2. Operadores
let soma = 10 + 5  // Adição
let resto = 10 % 3 // Módulo (resto da divisão)
print("Soma: \(soma)")
print("Resto: \(resto)")

// Operadores de Comparação
let resultado = 10 > 5  // Verifica se 10 é maior que 5
let iguais = 5 == 5     // Verifica se 5 é igual a 5
print("10 > 5: \(resultado)")
print("5 == 5: \(iguais)")

// Operadores Lógicos
let eCondicao = (10 > 5) && (5 < 10)  // 'E' lógico: ambas as condições precisam ser verdadeiras
let ouCondicao = (10 > 5) || (5 > 10) // 'OU' lógico: uma das condições precisa ser verdadeira
print("Condição E: \(eCondicao)")
print("Condição OU: \(ouCondicao)")

// 3. Estruturas Condicionais
let idadePessoa = 20
if idadePessoa >= 18 {
    print("Você é maior de idade.")
} else {
    print("Você é menor de idade.")
}

// Switch Case
let numero = 2
switch numero {
case 1:
    print("É um")
case 2:
    print("É dois")
default:
    print("Outro número")
}

// 4. Laços de Repetição (Loops)
for i in 1...5 {
    print(i)  // Vai imprimir 1, 2, 3, 4, 5
}

var j = 1
while j <= 5 {
    print(j)  // Vai imprimir 1, 2, 3, 4, 5
    j += 1    // Incrementa o valor de j
}

var k = 1
repeat {
    print(k)  // Vai imprimir 1, 2, 3, 4, 5
    k += 1
} while k <= 5

// 5. Funções (Métodos)
func saudacao() {
    print("Olá, seja bem-vindo!")
}

func soma(a: Int, b: Int) -> Int {
    return a + b  // Retorna a soma dos dois números
}

saudacao()  // Chama a função saudacao
let resultadoSoma = soma(a: 5, b: 3)  // Chama a função soma
print("Resultado da soma: \(resultadoSoma)")

// 6. Entrada e Saída de Dados
func entradaSaida() {
    print("Digite seu nome: ")
    if let nome = readLine() {
        print("Olá, \(nome)")
    }
}

// 7. Manipulação de Strings
func manipulacaoStrings() {
    let nome = "João"
    let saudacao = "Olá, \(nome)!"  // Concatenando strings
    print(saudacao)  // Exibe: Olá, João!

    let palavra = "programação"
    let tamanho = palavra.count  // Verifica o tamanho da string
    let contem = palavra.contains("grama")  // Verifica se a palavra contém "grama"
    print("Tamanho da palavra: \(tamanho)")
    print("Contém 'grama': \(contem)")
}

// 8. Arrays
func exemploArrays() {
    let numeros = [1, 2, 3, 4, 5]  // Declaração e inicialização de um array
    print("Primeiro número: \(numeros[0])")  // Acessa o primeiro valor
    print("Último número: \(numeros[numeros.count - 1])")  // Acessa o último valor
}

// 9. Classe e Objetos
class Pessoa {
    var nome: String
    var idade: Int

    init(nome: String, idade: Int) {
        self.nome = nome
        self.idade = idade
    }

    func apresentar() {
        print("Olá, meu nome é \(self.nome) e tenho \(self.idade) anos.")
    }
}

func exemploClasseObjetos() {
    let pessoa1 = Pessoa(nome: "Nico", idade: 30)  // Criação de um objeto da classe Pessoa
    pessoa1.apresentar()  // Chamada do método
}

// 10. Conceito de `this`
func exemploThis() {
    class Carro {
        var modelo: String

        init(modelo: String) {
            self.modelo = modelo  // 'self' faz referência ao atributo da classe
        }

        func mostrarModelo() {
            print("Modelo do carro: \(self.modelo)")
        }
    }

    let carro = Carro(modelo: "Fusca")
    carro.mostrarModelo()  // Exibe: Modelo do carro: Fusca
}

// 11. Herança
class Animal {
    var nome: String

    init(nome: String) {
        self.nome = nome
    }

    func fazerSom() {
        print("O animal faz um som.")
    }
}

class Cachorro: Animal {
    override func fazerSom() {
        print("O cachorro late.")
    }
}

func exemploHeranca() {
    let cachorro = Cachorro(nome: "Rex")
    cachorro.fazerSom()  // O método sobreposto é chamado
}

// 12. Encapsulamento
func exemploEncapsulamento() {
    class ContaBancaria {
        private var saldo: Double  // Atributo privado

        init() {
            self.saldo = 0
        }

        func depositar(valor: Double) {
            if valor > 0 {
                self.saldo += valor
            }
        }

        func getSaldo() -> Double {
            return self.saldo  // Acesso ao saldo através de um método público
        }
    }

    let conta = ContaBancaria()
    conta.depositar(valor: 500)
    print("Saldo da conta: \(conta.getSaldo())")
}

// 13. Exceções
func exemploExcecao() {
    do {
        let resultado = 10 / 0  // Divisão por zero
    } catch {
        print("Erro: \(error)")
    }
}

// 14. Trabalhando com Arrays
func exemploArrayList() {
    var lista = ["Java", "Python", "C++"]

    print("Tamanho da lista: \(lista.count)")  // Exibe o tamanho da lista
    print("Primeiro item: \(lista[0])")  // Acessa o primeiro item da lista
}
