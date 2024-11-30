using System; // Importa o namespace System, que contém classes básicas como Console.
using System.Collections.Generic; // Importa o namespace para trabalhar com listas e coleções.

class Programa
{
    static void Main()
    {
        // Variáveis de diferentes tipos
        int idade = 25;             // Armazena um número inteiro.
        double altura = 1.75;       // Armazena um número com casas decimais.
        string nome = "João";       // Armazena texto.
        bool estudante = true;      // Armazena um valor lógico (verdadeiro/falso).

        Console.WriteLine("Idade: " + idade);
        Console.WriteLine("Altura: " + altura);
        Console.WriteLine("Nome: " + nome);
        Console.WriteLine("Estudante: " + estudante);

        // Operações matemáticas e lógicas
        int soma = 10 + 5;          // Soma de dois inteiros.
        int resto = 10 % 3;         // Resto da divisão de 10 por 3.
        Console.WriteLine("Soma: " + soma);
        Console.WriteLine("Resto: " + resto);

        bool resultado = 10 > 5;    // Verifica se 10 é maior que 5.
        bool iguais = 5 == 5;       // Verifica se 5 é igual a 5.
        Console.WriteLine("10 > 5: " + resultado);
        Console.WriteLine("5 == 5: " + iguais);

        bool eCondicao = (10 > 5) && (5 < 10);  // 'E' lógico.
        bool ouCondicao = (10 > 5) || (5 > 10); // 'OU' lógico.
        Console.WriteLine("Condição E: " + eCondicao);
        Console.WriteLine("Condição OU: " + ouCondicao);

        // Estruturas condicionais
        int idadePessoa = 20;
        if (idadePessoa >= 18)
        {
            Console.WriteLine("Você é maior de idade.");
        }
        else
        {
            Console.WriteLine("Você é menor de idade.");
        }

        // Estrutura switch case
        int numero = 2;
        switch (numero)
        {
            case 1:
                Console.WriteLine("É um");
                break;
            case 2:
                Console.WriteLine("É dois");
                break;
            default:
                Console.WriteLine("Outro número");
                break;
        }

        // Laços de repetição (loops)
        for (int i = 1; i <= 5; i++) // For loop: executa 5 vezes.
        {
            Console.WriteLine(i);
        }

        int j = 1;
        while (j <= 5) // While loop: executa enquanto a condição for verdadeira.
        {
            Console.WriteLine(j);
            j++;
        }

        int k = 1;
        do // Do-while: executa pelo menos uma vez antes de verificar a condição.
        {
            Console.WriteLine(k);
            k++;
        } while (k <= 5);

        // Funções (métodos)
        Saudacao(); // Método para exibir uma mensagem de saudação.
        int resultadoSoma = Soma(5, 3); // Chama a função Soma e armazena o resultado.
        Console.WriteLine("Resultado da soma: " + resultadoSoma);

        // Entrada e saída de dados
        Console.WriteLine("Digite seu nome: ");
        string nomeUsuario = Console.ReadLine(); // Lê o nome do usuário.
        Console.WriteLine("Olá, " + nomeUsuario);

        // Métodos adicionais
        ManipulacaoStrings();
        ExemploArrays();
        ExemploClasseObjetos();
        ExemploThis();
        ExemploHeranca();
        ExemploEncapsulamento();
        ExemploExcecao();
        ExemploArrayList();
    }

    // Método de saudação simples
    static void Saudacao()
    {
        Console.WriteLine("Olá, seja bem-vindo!");
    }

    // Método que retorna a soma de dois inteiros
    static int Soma(int a, int b)
    {
        return a + b;
    }

    // Método para manipulação de strings
    static void ManipulacaoStrings()
    {
        string nome = "João";
        string saudacao = "Olá, " + nome + "!";
        Console.WriteLine(saudacao);

        string palavra = "programação";
        int tamanho = palavra.Length; // Obtém o comprimento da string.
        bool contem = palavra.Contains("grama"); // Verifica se contém o texto "grama".
        Console.WriteLine("Tamanho da palavra: " + tamanho);
        Console.WriteLine("Contém 'grama': " + contem);
    }

    // Método que demonstra o uso de arrays
    static void ExemploArrays()
    {
        int[] numeros = { 1, 2, 3, 4, 5 };
        Console.WriteLine("Primeiro número: " + numeros[0]);
        Console.WriteLine("Último número: " + numeros[numeros.Length - 1]);
    }

    // Demonstração de classes e objetos
    static void ExemploClasseObjetos()
    {
        Pessoa pessoa1 = new Pessoa("Nico", 30); // Cria um objeto da classe Pessoa.
        pessoa1.Apresentar(); // Chama o método Apresentar.
    }

    // Demonstração do uso do 'this'
    static void ExemploThis()
    {
        Carro carro = new Carro("Fusca"); // Cria um objeto da classe Carro.
        carro.MostrarModelo(); // Exibe o modelo do carro.
    }

    // Demonstração de herança
    static void ExemploHeranca()
    {
        Cachorro cachorro = new Cachorro(); // Cria um objeto da classe Cachorro (herda de Animal).
        cachorro.FazerSom(); // Chama o método sobrescrito FazerSom.
    }

    // Demonstração de encapsulamento
    static void ExemploEncapsulamento()
    {
        ContaBancaria conta = new ContaBancaria(); // Cria um objeto da classe ContaBancaria.
        conta.Depositar(500); // Deposita um valor na conta.
        Console.WriteLine("Saldo da conta: " + conta.GetSaldo()); // Exibe o saldo.
    }

    // Demonstração de tratamento de exceções
    static void ExemploExcecao()
    {
        try
        {
            int resultado = 10 / 0; // Tentativa de divisão por zero.
        }
        catch (Exception e)
        {
            Console.WriteLine("Erro: " + e.Message); // Captura e exibe a mensagem de erro.
        }
    }

    // Demonstração de uso de listas
    static void ExemploArrayList()
    {
        List<string> lista = new List<string> { "Java", "Python", "C++" }; // Cria uma lista.
        Console.WriteLine("Tamanho da lista: " + lista.Count); // Exibe o número de elementos.
        Console.WriteLine("Primeiro item: " + lista[0]); // Exibe o primeiro elemento.
    }
}

// Classe Pessoa
class Pessoa
{
    public string Nome { get; set; } // Propriedade para armazenar o nome.
    public int Idade { get; set; }   // Propriedade para armazenar a idade.

    public Pessoa(string nome, int idade)
    {
        Nome = nome;
        Idade = idade;
    }

    public void Apresentar() // Método para exibir informações da pessoa.
    {
        Console.WriteLine("Olá, meu nome é " + Nome + " e tenho " + Idade + " anos.");
    }
}

// Classe Carro com uso do 'this'
class Carro
{
    public string Modelo { get; set; }

    public Carro(string modelo)
    {
        Modelo = modelo;
    }

    public void MostrarModelo()
    {
        Console.WriteLine("Modelo do carro: " + Modelo);
    }
}

// Classe base Animal com herança
class Animal
{
    public string Nome { get; set; }

    public Animal(string nome)
    {
        Nome = nome;
    }

    public virtual void FazerSom() // Método que pode ser sobrescrito.
    {
        Console.WriteLine("O animal faz um som.");
    }
}

// Classe Cachorro que herda de Animal
class Cachorro : Animal
{
    public Cachorro() : base("Cachorro") { }

    public override void FazerSom() // Sobrescreve o método FazerSom.
    {
        Console.WriteLine("O cachorro late.");
    }
}

// Classe ContaBancaria com encapsulamento
class ContaBancaria
{
    private decimal saldo; // Campo privado para armazenar o saldo.

    public ContaBancaria()
    {
        saldo = 0;
    }

    public void Depositar(decimal valor)
    {
        if (valor > 0)
        {
            saldo += valor;
        }
    }

    public decimal GetSaldo() // Método público para acessar o saldo.
    {
        return saldo;
    }
}
