// 1. Variáveis e Tipos de Dados
// Variáveis são como "caixas" onde armazenamos informações. Cada caixa tem um tipo específico.

void main() {
  int idade = 25; // Tipo inteiro: armazena números inteiros
  double altura = 1.75; // Tipo ponto flutuante: armazena números com casas decimais
  String nome = "João"; // Tipo texto (String): armazena uma sequência de caracteres
  bool estudante = true; // Tipo lógico (booleano): armazena verdadeiro ou falso

  print("Idade: $idade");
  print("Altura: $altura");
  print("Nome: $nome");
  print("Estudante: $estudante");

  // 2. Operadores
  // Operadores aritméticos, de comparação e lógicos.

  // Operadores Aritméticos
  int soma = 10 + 5; // Adição
  int resto = 10 % 3; // Módulo (resto da divisão)
  print("Soma: $soma");
  print("Resto: $resto");

  // Operadores de Comparação
  bool resultado = 10 > 5; // Verifica se 10 é maior que 5
  bool iguais = 5 == 5; // Verifica se 5 é igual a 5
  print("10 > 5: $resultado");
  print("5 == 5: $iguais");

  // Operadores Lógicos
  bool eCondicao = (10 > 5) && (5 < 10); // 'E' lógico: ambas as condições precisam ser verdadeiras
  bool ouCondicao = (10 > 5) || (5 > 10); // 'OU' lógico: uma das condições precisa ser verdadeira
  print("Condição E: $eCondicao");
  print("Condição OU: $ouCondicao");

  // 3. Estruturas Condicionais
  // Condições para tomar decisões no programa.

  int idadePessoa = 20;
  if (idadePessoa >= 18) {
    print("Você é maior de idade.");
  } else {
    print("Você é menor de idade.");
  }

  // Switch Case: alternativa ao if-else quando temos várias condições possíveis
  int numero = 2;
  switch (numero) {
    case 1:
      print("É um");
      break;
    case 2:
      print("É dois");
      break;
    default:
      print("Outro número");
  }

  // 4. Laços de Repetição (Loops)
  // Usados quando queremos repetir um bloco de código várias vezes.

  for (int i = 1; i <= 5; i++) {
    print(i); // Vai imprimir 1, 2, 3, 4, 5
  }

  int j = 1;
  while (j <= 5) {
    print(j); // Vai imprimir 1, 2, 3, 4, 5
    j++; // Incrementa o valor de j
  }

  int k = 1;
  do {
    print(k); // Vai imprimir 1, 2, 3, 4, 5
    k++;
  } while (k <= 5);

  // 5. Funções (Métodos)
  // Funções são usadas para organizar e reutilizar blocos de código.

  saudacao();
  int resultadoSoma = somaFunc(5, 3);
  print("Resultado da soma: $resultadoSoma");

  // 6. Entrada e Saída de Dados
  // Usado para interagir com o usuário, capturando entradas e exibindo saídas.
  // O Dart não tem a função prompt, então seria necessário usar outros meios de captura.

  // 7. Manipulação de Strings
  manipulacaoStrings();

  // 8. Arrays
  exemploArrays();

  // 9. Classe e Objetos
  exemploClasseObjetos();

  // 10. Conceito de `this`
  exemploThis();

  // 11. Herança
  exemploHeranca();

  // 12. Encapsulamento
  exemploEncapsulamento();

  // 13. Exceções
  exemploExcecao();

  // 14. Trabalhando com `ArrayList`
  exemploArrayList();
}

// Funções
void saudacao() {
  print("Olá, seja bem-vindo!");
}

int somaFunc(int a, int b) {
  return a + b;
}

void manipulacaoStrings() {
  String nome = "João";
  String saudacao = "Olá, $nome!"; // Concatenando strings
  print(saudacao); // Exibe: Olá, João!

  String palavra = "programação";
  int tamanho = palavra.length; // Verifica o tamanho da string
  bool contem = palavra.contains("grama"); // Verifica se a palavra contém "grama"
  print("Tamanho da palavra: $tamanho");
  print("Contém 'grama': $contem");
}

void exemploArrays() {
  List<int> numeros = [1, 2, 3, 4, 5]; // Declaração e inicialização de um array
  print("Primeiro número: ${numeros[0]}"); // Acessa o primeiro valor
  print("Último número: ${numeros[numeros.length - 1]}"); // Acessa o último valor
}

class Pessoa {
  String nome;
  int idade;

  Pessoa(this.nome, this.idade);

  void apresentar() {
    print("Olá, meu nome é $nome e tenho $idade anos.");
  }
}

void exemploClasseObjetos() {
  Pessoa pessoa1 = Pessoa("Nico", 30);
  pessoa1.apresentar();
}

void exemploThis() {
  class Carro {
    String modelo;

    Carro(this.modelo);

    void mostrarModelo() {
      print("Modelo do carro: $modelo");
    }
  }

  var carro = Carro("Fusca");
  carro.mostrarModelo();
}

class Animal {
  String nome;

  Animal(this.nome);

  void fazerSom() {
    print("O animal faz um som.");
  }
}

class Cachorro extends Animal {
  Cachorro(String nome) : super(nome);

  @override
  void fazerSom() {
    print("O cachorro late.");
  }
}

void exemploHeranca() {
  Cachorro cachorro = Cachorro("Rex");
  cachorro.fazerSom(); // O método sobreposto é chamado
}

class ContaBancaria {
  double _saldo = 0; // Atributo privado

  void depositar(double valor) {
    if (valor > 0) {
      _saldo += valor;
    }
  }

  double getSaldo() {
    return _saldo; // Acesso ao saldo através de um método público
  }
}

void exemploEncapsulamento() {
  ContaBancaria conta = ContaBancaria();
  conta.depositar(500);
  print("Saldo da conta: ${conta.getSaldo()}");
}

void exemploExcecao() {
  try {
    int resultado = 10 ~/ 0; // Divisão por zero
  } catch (e) {
    print("Erro: ${e}");
  }
}

void exemploArrayList() {
  List<String> lista = ["Java", "Python", "C++"];

  print("Tamanho da lista: ${lista.length}"); // Exibe o tamanho da lista
  print("Primeiro item: ${lista[0]}"); // Acessa o primeiro item da lista
}
