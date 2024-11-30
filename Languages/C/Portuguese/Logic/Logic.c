#include <stdio.h>
#include <string.h>
#include <stdbool.h>

// Função para exibir a saudação
void saudacao() {
    printf("Olá, seja bem-vindo!\n");
}

// Função de soma
int soma(int a, int b) {
    return a + b;
}

// Função de manipulação de strings
void manipulacaoStrings() {
    char nome[] = "João";
    char saudacao[50];
    sprintf(saudacao, "Olá, %s!", nome);  // Concatenando strings
    printf("%s\n", saudacao);  // Exibe: Olá, João!

    char palavra[] = "programação";
    int tamanho = strlen(palavra);  // Verifica o tamanho da string
    int contem = strstr(palavra, "grama") != NULL;  // Verifica se a palavra contém "grama"
    printf("Tamanho da palavra: %d\n", tamanho);
    printf("Contém 'grama': %d\n", contem);
}

// Função de exemplo de arrays
void exemploArrays() {
    int numeros[] = {1, 2, 3, 4, 5};  // Declaração e inicialização de um array
    printf("Primeiro número: %d\n", numeros[0]);  // Acessa o primeiro valor
    printf("Último número: %d\n", numeros[sizeof(numeros)/sizeof(numeros[0]) - 1]);  // Acessa o último valor
}

// Função para entrada e saída de dados
void entradaSaida() {
    char nome[50];
    printf("Digite seu nome: ");
    fgets(nome, sizeof(nome), stdin);
    nome[strcspn(nome, "\n")] = '\0';  // Remove o newline da string
    printf("Olá, %s\n", nome);
}

// Função de exemplo de classe e objetos (usando structs)
typedef struct {
    char nome[50];
    int idade;
} Pessoa;

// Método de apresentação
void apresentar(Pessoa *pessoa) {
    printf("Olá, meu nome é %s e tenho %d anos.\n", pessoa->nome, pessoa->idade);
}

// Função de exemplo com `this` (usando ponteiros)
void exemploThis() {
    typedef struct {
        char modelo[50];
    } Carro;

    Carro carro = {"Fusca"};
    printf("Modelo do carro: %s\n", carro.modelo);
}

// Função de herança (simulada com structs e ponteiros)
typedef struct {
    char nome[50];
} Animal;

void fazerSomAnimal(Animal *animal) {
    printf("O animal faz um som.\n");
}

typedef struct {
    Animal base;  // Herdando de Animal
} Cachorro;

void fazerSomCachorro(Cachorro *cachorro) {
    printf("O cachorro late.\n");
}

// Função de exemplo de encapsulamento (simulada com funções)
typedef struct {
    int saldo;
} ContaBancaria;

void depositar(ContaBancaria *conta, int valor) {
    if (valor > 0) {
        conta->saldo += valor;
    }
}

int getSaldo(ContaBancaria *conta) {
    return conta->saldo;
}

// Função de exceções (simulada com um if para divisão por zero)
void exemploExcecao() {
    int resultado;
    if (0 != 0) {
        printf("Erro: Divisão por zero\n");
    } else {
        resultado = 10 / 0;  // Divisão por zero
    }
}

int main() {
    // 1. Variáveis e Tipos de Dados
    int idade = 25;  // Tipo inteiro
    float altura = 1.75;  // Tipo ponto flutuante
    char nome[] = "João";  // Tipo string
    bool estudante = true;  // Tipo lógico (booleano)

    printf("Idade: %d\n", idade);
    printf("Altura: %.2f\n", altura);
    printf("Nome: %s\n", nome);
    printf("Estudante: %s\n", estudante ? "Verdadeiro" : "Falso");

    // 2. Operadores
    int somaResultado = 10 + 5;  // Adição
    int resto = 10 % 3;  // Módulo
    printf("Soma: %d\n", somaResultado);
    printf("Resto: %d\n", resto);

    bool resultadoComparacao = 10 > 5;  // Maior que
    bool iguais = 5 == 5;  // Igualdade
    printf("10 > 5: %s\n", resultadoComparacao ? "Verdadeiro" : "Falso");
    printf("5 == 5: %s\n", iguais ? "Verdadeiro" : "Falso");

    bool eCondicao = (10 > 5) && (5 < 10);  // 'E' lógico
    bool ouCondicao = (10 > 5) || (5 > 10); // 'OU' lógico
    printf("Condição E: %s\n", eCondicao ? "Verdadeiro" : "Falso");
    printf("Condição OU: %s\n", ouCondicao ? "Verdadeiro" : "Falso");

    // 3. Estruturas Condicionais
    int idadePessoa = 20;
    if (idadePessoa >= 18) {
        printf("Você é maior de idade.\n");
    } else {
        printf("Você é menor de idade.\n");
    }

    // 4. Laços de Repetição
    for (int i = 1; i <= 5; i++) {
        printf("%d\n", i);
    }

    int j = 1;
    while (j <= 5) {
        printf("%d\n", j);
        j++;
    }

    int k = 1;
    do {
        printf("%d\n", k);
        k++;
    } while (k <= 5);

    // 5. Funções
    saudacao();
    int resultadoSoma = soma(5, 3);
    printf("Resultado da soma: %d\n", resultadoSoma);

    // 6. Entrada e Saída de Dados
    entradaSaida();

    // 7. Manipulação de Strings
    manipulacaoStrings();

    // 8. Arrays
    exemploArrays();

    // 9. Classe e Objetos
    Pessoa pessoa1 = {"Maria", 30};
    apresentar(&pessoa1);

    // 10. Conceito de `this`
    exemploThis();

    // 11. Herança
    Cachorro cachorro = {{"Rex"}};
    fazerSomCachorro(&cachorro);

    // 12. Encapsulamento
    ContaBancaria conta = {0};
    depositar(&conta, 500);
    printf("Saldo da conta: %d\n", getSaldo(&conta));

    // 13. Exceções
    exemploExcecao();

    return 0;
}
