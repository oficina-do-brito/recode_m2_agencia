Algoritmo "agency"
// @Descricaoo   : Esse programa tem o objetivo de simular o cadastramento, de
// clientes e seu respectivo destino, em uma agencia de viagens.
// @Autor(a)    : Clodoaldo Neto
// @Data atual  : 15/7/2023

Var
   // Secao de Declaracoes das variaveis

   clientes:vetor[1..50] de caractere
   destinos:vetor[1..50] de caractere
   search:caractere
   i,opt,apontador_cliente,apontador_destino:inteiro

   //@Procedimentos

procedimento doisEspacos
inicio
   escreval(" ")
   escreval(" ")
fimprocedimento

procedimento printBannerScreen
inicio
   escreval(" ##############################################")
   escreval(" ###                                        ###")
   escreval(" ###            travel agency               ###")
   escreval(" ###                                        ###")
   escreval(" ##############################################")
   doisEspacos()
fimprocedimento

procedimento consultar(help:caracter)
var i: inteiro
inicio

   se (help = "clientes") entao
      para i de 1 ate apontador_cliente faca
         escreva(", ",clientes[i])
      fimpara
   senao
      para i de 1 ate apontador_destino faca
         escreva(", ",destinos[i])
      fimpara
   fimse
   doisEspacos()
fimprocedimento


//@Funcoes

funcao menuOpcao():inteiro
var opcao:inteiro
inicio
   escreval("Digite 1 para cadastrar um novo cliente;")
   escreval("Digite 2 para cadastrar o seu destino;")
   escreval("Digite 3 para consultar 1 Cliente;")
   escreval("Digite 4 para consultar 1 Destino;")
   escreval("Digite 5 para consultar todos os Clientes;")
   escreval("Digite 6 para consultar todos os Destinos;")
   escreval("Digite 0 para sair;")
   doisEspacos()
   escreva("Escolha uma opcao entre as listadas acima: ")
   leia(opcao)
   limpatela()
   retorne (opcao)
fimfuncao

funcao cadastrarCliente():inteiro
inicio
   escreva("Digite o nome do cliente: ")
   leia(clientes[apontador_cliente])
   apontador_cliente <-  apontador_cliente + 1
   retorne 0
fimfuncao

funcao cadastrarDestino():inteiro
inicio
   escreva("Digite o nome do destino: ")
   leia(clientes[apontador_cliente])
   apontador_destino <- apontador_destino + 1
   retorne 0
fimfuncao

//@description: nem ferrando que eu vou varrer o vetor de 50
//irei usar da mesma strategia de apontador de quantidade
// e pegar a quantidade dele para varrer
funcao consultarCliente(nome:caracter):caractere
var
   i:inteiro
   procurado:caractere
inicio
   para i de 1 ate apontador_cliente faca
      se (clientes[i] = nome) entao
         procurado <- ("Encontrado ele e o " +Numpcarac(i)+ " cliente cadastrado no sistema")
      fimse
   fimpara
   retorne procurado
fimfuncao

funcao consultarDestino(nome:caracter):caractere
var
   i:inteiro
   procurado,convertido:caractere
inicio
   frase <-  " Encontramos Para esse Destino os clientes: "
   para i de 1 ate apontador_destino faca
      se (destinos[i] = nome) entao
         procurado <- ("encontrado ele e o " +Numpcarac(i)+ " destino cadastrado no sistema")
      fimse
   fimpara
   retorne procurado
fimfuncao

Inicio

   // Secaoo de Comandos, procedimento, funcoes, operadores, etc...

   printBannerScreen()
   apontador_cliente <- 1
   apontador_destino <-  1
   repita
      opt <- menuOpcao()
      escolha opt
      caso 0
         //sair
         escreval("saindo ... Obrigado pela sua visita!")
      caso 1
         i <- cadastrarCliente()
         se (i = 0) entao
            escreval("cliente cadastrado!")
         fimse

         doisEspacos()
      caso 2
         i <- cadastrarDestino()
         se (i = 0) entao
            escreval("Destino cadastrado!")
         fimse
         doisEspacos()
      caso 3
         escreval("Digite o nome do Cliente: ")
         leia(search)
         escreval(consultarCliente(search))
         doisEspacos()
      caso 4
         escreval("Digite o nome do Destino: ")
         leia(search)
         escreval(consultarDestino(search))
         doisEspacos()
      caso 5
         escreval("Todos os clientes:")
         consultar("clientes")
         doisEspacos()
      caso 6
         escreval("Todos os os destinos:")
         consultar("destinos")
         doisEspacos()
      outrocaso
         escreval("opcao invalida")
         doisEspacos()
      fimescolha
   ate opt=0

Fimalgoritmo