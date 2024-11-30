package main

import "fmt"

// 1. Variáveis e Tipos de Dados
func variaveisETipos() {
    idade := 25           // Tipo inteiro
    altura := 1.75        // Tipo ponto flutuante
    nome := "João"        // Tipo texto (String)
    estudante := true     // Tipo lógico (booleano)

    fmt.Println("Idade:", idade)
    fmt.Println("Altura:", altura)
    fmt.Println("Nome:", nome)
    fmt.Println("Estudante:", estudante)
}

// 2. Operadores
func operadores() {
    // Operadores Aritméticos
    soma := 10 + 5   // Adição
    resto := 10 % 3  // Módulo
    fmt.Println("Soma:", soma)
    fmt.Println("Resto:", resto)

    // Operadores de Comparação
    resultado := 10 > 5  // Verifica se 10 é maior que 5
    iguais := 5 == 5     // Verifica se 5 é igual a 5
    fmt.Println("10 > 5:", resultado)
    fmt.Println("5 == 5:", iguais)

    // Operadores Lógicos
    eCondicao := (10 > 5) && (5 < 10)  // 'E' lógico
    ouCondicao := (10 > 5) || (5 > 10) // 'OU' lógico
    fmt.Println("Condição E:", eCondicao)
    fmt.Println("Condição OU:", ouCondicao)
}

// 3. Estruturas Condicionais
func estruturasCondicionais() {
    idadePessoa := 20
    if idadePessoa >= 18 {
        fmt.Println("Você é maior de idade.")
    } else {
        fmt.Println("Você é menor de idade.")
    }

    numero := 2
    switch numero {
    case 1:
        fmt.Println("É um")
    case 2:
        fmt.Println("É dois")
    default:
        fmt.Println("Outro número")
    }
}

// 4. Laços de Repetição (Loops)
func laçosDeRepetição() {
    for i := 1; i <= 5; i++ {
        fmt.Println(i)  // Vai imprimir 1, 2, 3, 4, 5
    }

    j := 1
    for j <= 5 {
        fmt.Println(j)  // Vai imprimir 1, 2, 3, 4, 5
        j++             // Incrementa o valor de j
    }

    k := 1
    for {
        fmt.Println(k)  // Vai imprimir 1, 2, 3, 4, 5
        k++
        if k > 5 {
            break
        }
    }
}

// 5. Funções
func saudacao() {
    fmt.Println("Olá, seja bem-vindo!")
}

func soma(a, b int) int {
    return a + b
}

// 6. Entrada e Saída de Dados
func entradaSaida() {
    var nome string
    fmt.Println("Digite seu nome:")
    fmt.Scanln(&nome)  // Captura o nome do usuário
    fmt.Println("Olá,", nome)
}

// 7. Manipulação de Strings
func manipulacaoStrings() {
    nome := "João"
    saudacao := "Olá, " + nome + "!"  // Concatenando strings
    fmt.Println(saudacao)

    palavra := "programação"
    tamanho := len(palavra)  // Verifica o tamanho da string
    contem := contains(palavra, "grama") // Verifica se a palavra contém "grama"
    fmt.Println("Tamanho da palavra:", tamanho)
    fmt.Println("Contém 'grama':", contem)
}

func contains(s, substr string) bool {
    return len(s) >= len(substr) && (s[:len(substr)] == substr || contains(s[1:], substr))
}

// 8. Arrays
func exemploArrays() {
    numeros := [5]int{1, 2, 3, 4, 5}  // Declaração de um array
    fmt.Println("Primeiro número:", numeros[0])  // Acessa o primeiro valor
    fmt.Println("Último número:", numeros[len(numeros)-1])  // Acessa o último valor
}

// 9. Classe e Objetos
type Pessoa struct {
    nome  string
    idade int
}

func (p Pessoa) apresentar() {
    fmt.Printf("Olá, meu nome é %s e tenho %d anos.\n", p.nome, p.idade)
}

func exemploClasseObjetos() {
    pessoa1 := Pessoa{"Nico", 30}  // Criação de um objeto da classe Pessoa
    pessoa1.apresentar()           // Chama o método
}

// 10. Conceito de `this`
type Carro struct {
    modelo string
}

func (c Carro) mostrarModelo() {
    fmt.Println("Modelo do carro:", c.modelo)
}

func exemploThis() {
    carro := Carro{"Fusca"}
    carro.mostrarModelo()  // Exibe: Modelo do carro: Fusca
}

// 11. Herança
type Animal struct {
    nome string
}

func (a Animal) fazerSom() {
    fmt.Println("O animal faz um som.")
}

type Cachorro struct {
    Animal
}

func (c Cachorro) fazerSom() {
    fmt.Println("O cachorro late.")
}

func exemploHeranca() {
    cachorro := Cachorro{}
    cachorro.fazerSom()  // O método sobreposto é chamado
}

// 12. Encapsulamento
type ContaBancaria struct {
    saldo int
}

func (c *ContaBancaria) depositar(valor int) {
    if valor > 0 {
        c.saldo += valor
    }
}

func (c *ContaBancaria) getSaldo() int {
    return c.saldo
}

func exemploEncapsulamento() {
    conta := ContaBancaria{}
    conta.depositar(500)
    fmt.Println("Saldo da conta:", conta.getSaldo())
}

// 13. Exceções
func exemploExcecao() {
    defer func() {
        if r := recover(); r != nil {
            fmt.Println("Erro:", r)
        }
    }()

    resultado := 10 / 0  // Divisão por zero
    fmt.Println("Resultado:", resultado)
}

// 14. Trabalhando com ArrayList
func exemploArrayList() {
    lista := []string{"Java", "Python", "C++"}

    fmt.Println("Tamanho da lista:", len(lista))  // Exibe o tamanho da lista
    fmt.Println("Primeiro item:", lista[0])       // Acessa o primeiro item da lista
}

func main() {
    variaveisETipos()
    operadores()
    estruturasCondicionais()
    laçosDeRepetição()
    saudacao()
    resultadoSoma := soma(5, 3)
    fmt.Println("Resultado da soma:", resultadoSoma)
    entradaSaida()
    manipulacaoStrings()
    exemploArrays()
    exemploClasseObjetos()
    exemploThis()
    exemploHeranca()
    exemploEncapsulamento()
    exemploExcecao()
    exemploArrayList()
}
