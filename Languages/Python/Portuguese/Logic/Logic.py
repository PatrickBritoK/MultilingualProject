# 1. Variáveis e Tipos de Dados
# Variáveis são como "caixas" onde armazenamos informações. Cada caixa tem um tipo específico.

idade = 25            # Tipo inteiro: armazena números inteiros
altura = 1.75         # Tipo ponto flutuante: armazena números com casas decimais
nome = "João"         # Tipo texto (String): armazena uma sequência de caracteres
estudante = True      # Tipo lógico (booleano): armazena verdadeiro ou falso

print(f"Idade: {idade}")
print(f"Altura: {altura}")
print(f"Nome: {nome}")
print(f"Estudante: {estudante}")

# 2. Operadores
# Operadores aritméticos, de comparação e lógicos.

# Operadores Aritméticos
soma = 10 + 5  # Adição
resto = 10 % 3 # Módulo (resto da divisão)
print(f"Soma: {soma}")
print(f"Resto: {resto}")

# Operadores de Comparação
resultado = 10 > 5  # Verifica se 10 é maior que 5
iguais = 5 == 5    # Verifica se 5 é igual a 5
print(f"10 > 5: {resultado}")
print(f"5 == 5: {iguais}")

# Operadores Lógicos
e_condicao = (10 > 5) and (5 < 10)  # 'E' lógico: ambas as condições precisam ser verdadeiras
ou_condicao = (10 > 5) or (5 > 10)  # 'OU' lógico: uma das condições precisa ser verdadeira
print(f"Condição E: {e_condicao}")
print(f"Condição OU: {ou_condicao}")

# 3. Estruturas Condicionais
# Condições para tomar decisões no programa.

idade_pessoa = 20
if idade_pessoa >= 18:
    print("Você é maior de idade.")
else:
    print("Você é menor de idade.")

# Switch Case: alternativa ao if-else quando temos várias condições possíveis
numero = 2
if numero == 1:
    print("É um")
elif numero == 2:
    print("É dois")
else:
    print("Outro número")

# 4. Laços de Repetição (Loops)
# Usados quando queremos repetir um bloco de código várias vezes.

for i in range(1, 6): 
    print(i)  # Vai imprimir 1, 2, 3, 4, 5

j = 1
while j <= 5:
    print(j)  # Vai imprimir 1, 2, 3, 4, 5
    j += 1  # Incrementa o valor de j

k = 1
while k <= 5:
    print(k)  # Vai imprimir 1, 2, 3, 4, 5
    k += 1

# 5. Funções (Métodos)
# Funções são usadas para organizar e reutilizar blocos de código.

def saudacao():
    print("Olá, seja bem-vindo!")

def soma(a, b):
    return a + b  # Retorna a soma dos dois números

saudacao()  # Chama a função saudacao
resultado_soma = soma(5, 3)  # Chama a função soma
print(f"Resultado da soma: {resultado_soma}")

# 6. Entrada e Saída de Dados
# Usado para interagir com o usuário, capturando entradas e exibindo saídas.

def entrada_saida():
    nome = input("Digite seu nome: ")  # Captura o nome do usuário
    print(f"Olá, {nome}")

# 7. Manipulação de Strings
# Strings são sequências de caracteres, úteis para trabalhar com texto.

def manipulacao_strings():
    nome = "João"
    saudacao = f"Olá, {nome}!"  # Concatenando strings
    print(saudacao)  # Exibe: Olá, João!

    palavra = "programação"
    tamanho = len(palavra)  # Verifica o tamanho da string
    contem = "grama" in palavra  # Verifica se a palavra contém "grama"
    print(f"Tamanho da palavra: {tamanho}")
    print(f"Contém 'grama': {contem}")

# 8. Listas (Arrays)
# Listas são usadas para armazenar múltiplos valores em uma única variável.

def exemplo_arrays():
    numeros = [1, 2, 3, 4, 5]  # Declaração e inicialização de uma lista
    print(f"Primeiro número: {numeros[0]}")  # Acessa o primeiro valor
    print(f"Último número: {numeros[-1]}")  # Acessa o último valor

# 9. Classe e Objetos
# Criando uma classe e instanciando objetos dela.

class Pessoa:
    def __init__(self, nome, idade):
        self.nome = nome
        self.idade = idade

    def apresentar(self):
        print(f"Olá, meu nome é {self.nome} e tenho {self.idade} anos.")

def exemplo_classe_objetos():
    pessoa1 = Pessoa("Nico", 30)  # Criação de um objeto da classe Pessoa
    pessoa1.apresentar()  # Chamada do método

# 10. Conceito de `self`
# O `self` é usado para referir-se ao objeto atual dentro de um método da classe.

def exemplo_self():
    class Carro:
        def __init__(self, modelo):
            self.modelo = modelo  # 'self' faz referência ao atributo da classe

        def mostrar_modelo(self):
            print(f"Modelo do carro: {self.modelo}")

    carro = Carro("Fusca")
    carro.mostrar_modelo()  # Exibe: Modelo do carro: Fusca

# 11. Herança
# Criando uma classe filha que herda de uma classe pai.

class Animal:
    def __init__(self, nome):
        self.nome = nome

    def fazer_som(self):
        print("O animal faz um som.")

class Cachorro(Animal):
    def fazer_som(self):
        print("O cachorro late.")

def exemplo_heranca():
    cachorro = Cachorro("Rex")
    cachorro.fazer_som()  # O método sobreposto é chamado

# 12. Encapsulamento
# Usando modificadores de acesso para proteger dados.

def exemplo_encapsulamento():
    class ContaBancaria:
        def __init__(self):
            self.__saldo = 0  # Atributo privado

        def depositar(self, valor):
            if valor > 0:
                self.__saldo += valor

        def get_saldo(self):
            return self.__saldo  # Acesso ao saldo através de um método público

    conta = ContaBancaria()
    conta.depositar(500)
    print(f"Saldo da conta: {conta.get_saldo()}")

# 13. Exceções
# Tratamento de erros durante a execução do programa.

def exemplo_excecao():
    try:
        resultado = 10 / 0  # Divisão por zero
    except Exception as e:
        print(f"Erro: {str(e)}")

# 14. Trabalhando com Listas
# A lista é uma coleção que pode crescer dinamicamente.

def exemplo_list():
    lista = ["Java", "Python", "C++"]
    print(f"Tamanho da lista: {len(lista)}")  # Exibe o tamanho da lista
    print(f"Primeiro item: {lista[0]}")  # Acessa o primeiro item da lista
