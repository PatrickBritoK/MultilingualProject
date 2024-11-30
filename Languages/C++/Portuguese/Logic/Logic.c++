#include <iostream> // Biblioteca padrão para entrada e saída
#include <vector>   // Biblioteca para manipulação de vetores
#include <string>   // Biblioteca para manipulação de strings

using namespace std; // Facilita o uso de classes e funções padrão, evitando o uso de "std::"

// 1. Declaração de variáveis e tipos de dados
int idade = 25;            // Variável do tipo inteiro
double altura = 1.75;      // Variável do tipo ponto flutuante (decimal)
string nome = "João";      // Variável do tipo string (texto)
bool estudante = true;     // Variável do tipo booleano (verdadeiro/falso)

int main() {
    // Exibindo valores das variáveis
    cout << "Idade: " << idade << endl;          // Mostra a idade
    cout << "Altura: " << altura << endl;        // Mostra a altura
    cout << "Nome: " << nome << endl;            // Mostra o nome
    cout << "Estudante: " << (estudante ? "true" : "false") << endl; // Mostra se é estudante

    // 2. Operadores

    // Operadores aritméticos
    int soma = 10 + 5;      // Adição
    int resto = 10 % 3;     // Módulo (resto da divisão)
    cout << "Soma: " << soma << endl; // Exibe o resultado da soma
    cout << "Resto: " << resto << endl; // Exibe o resto da divisão

    // Operadores de comparação
    bool resultado = 10 > 5;    // Verifica se 10 é maior que 5
    bool iguais = 5 == 5;       // Verifica se 5 é igual a 5
    cout << "10 > 5: " << (resultado ? "true" : "false") << endl;
    cout << "5 == 5: " << (iguais ? "true" : "false") << endl;

    // Operadores lógicos
    bool eCondicao = (10 > 5) && (5 < 10);  // Operador "E" lógico
    bool ouCondicao = (10 > 5) || (5 > 10); // Operador "OU" lógico
    cout << "Condição E: " << (eCondicao ? "true" : "false") << endl;
    cout << "Condição OU: " << (ouCondicao ? "true" : "false") << endl;

    // 3. Estruturas condicionais
    int idadePessoa = 20;
    if (idadePessoa >= 18) { // Verifica se é maior de idade
        cout << "Você é maior de idade." << endl;
    } else {
        cout << "Você é menor de idade." << endl;
    }

    // Switch Case
    int numero = 2;
    switch (numero) {
        case 1:
            cout << "É um" << endl;
            break; // Sai do switch
        case 2:
            cout << "É dois" << endl;
            break;
        default:
            cout << "Outro número" << endl; // Caso padrão
    }

    // 4. Laços de repetição

    // Laço for
    for (int i = 1; i <= 5; i++) { // Repete de 1 a 5
        cout << i << endl;
    }

    // Laço while
    int j = 1;
    while (j <= 5) { // Executa enquanto j <= 5
        cout << j << endl;
        j++; // Incrementa j
    }

    // Laço do-while
    int k = 1;
    do { // Executa ao menos uma vez
        cout << k << endl;
        k++;
    } while (k <= 5);

    // 5. Funções (usando lambdas para simplicidade)
    auto saudacao = []() { // Função que exibe uma saudação
        cout << "Olá, seja bem-vindo!" << endl;
    };
    saudacao();

    auto somaFunc = [](int a, int b) { // Função que soma dois números
        return a + b;
    };
    int resultadoSoma = somaFunc(5, 3);
    cout << "Resultado da soma: " << resultadoSoma << endl;

    // 6. Entrada e saída de dados
    string nomeInput;
    cout << "Digite seu nome: "; // Solicita entrada do usuário
    cin >> nomeInput;
    cout << "Olá, " << nomeInput << endl;

    // 7. Manipulação de strings
    string saudacaoStr = "Olá, " + nome + "!"; // Concatena strings
    cout << saudacaoStr << endl;

    string palavra = "programação";
    int tamanho = palavra.length();           // Obtém o tamanho da string
    bool contem = palavra.find("grama") != string::npos; // Verifica se contém "grama"
    cout << "Tamanho da palavra: " << tamanho << endl;
    cout << "Contém 'grama': " << (contem ? "true" : "false") << endl;

    // 8. Vetores (arrays dinâmicos)
    vector<int> numeros = {1, 2, 3, 4, 5}; // Cria um vetor de inteiros
    cout << "Primeiro número: " << numeros[0] << endl; // Primeiro elemento
    cout << "Último número: " << numeros[numeros.size() - 1] << endl; // Último elemento

    // 9. Classe e objetos
    class Pessoa {
    public:
        string nome;
        int idade;
        Pessoa(string nome, int idade) : nome(nome), idade(idade) {}
        void apresentar() {
            cout << "Olá, meu nome é " << nome << " e tenho " << idade << " anos." << endl;
        }
    };

    Pessoa pessoa1("Nico", 30);
    pessoa1.apresentar();

    // 10. Conceito de `this`
    class Carro {
    public:
        string modelo;
        Carro(string modelo) : modelo(modelo) {}
        void mostrarModelo() {
            cout << "Modelo do carro: " << modelo << endl;
        }
    };

    Carro carro("Fusca");
    carro.mostrarModelo();

    // 11. Herança
    class Animal {
    public:
        string nome;
        Animal(string nome) : nome(nome) {}
        virtual void fazerSom() {
            cout << "O animal faz um som." << endl;
        }
    };

    class Cachorro : public Animal {
    public:
        Cachorro(string nome) : Animal(nome) {}
        void fazerSom() override {
            cout << "O cachorro late." << endl;
        }
    };

    Cachorro cachorro("Rex");
    cachorro.fazerSom();

    // 12. Encapsulamento
    class ContaBancaria {
    private:
        double saldo;
    public:
        ContaBancaria() : saldo(0) {}
        void depositar(double valor) {
            if (valor > 0) saldo += valor;
        }
        double getSaldo() {
            return saldo;
        }
    };

    ContaBancaria conta;
    conta.depositar(500);
    cout << "Saldo da conta: " << conta.getSaldo() << endl;

    // 13. Exceções
    try {
        int resultado = 10 / 0; // Divisão por zero (gera erro)
    } catch (const exception& e) {
        cout << "Erro: " << e.what() << endl;
    }

    // 14. Trabalhando com vetores dinâmicos
    vector<string> lista = {"Java", "Python", "C++"};
    cout << "Tamanho da lista: " << lista.size() << endl;
    cout << "Primeiro item: " << lista[0] << endl;

    return 0; // Encerra o programa com sucesso
}
