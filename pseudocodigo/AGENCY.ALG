Algoritmo "agency"
//
//
//
//
// @Descricaoo   : Esse programa tem o objetivo de simular o cadastramento, de
// clientes e seu respectivo destino, em uma agencia de viagens.
// @Autor(a)    : Clodoaldo Neto
// @Data atual  : 15/7/2023

Var
   // Secao de Declaracoes das variaveis

   clientes:vetor[1..50] de caractere
   destinos:vetor[1..50] de caractere

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
   escreval(" ##############################################")
   escreval(" ###                                        ###")
   escreval(" ###                                        ###")
   escreval(" ###            travel agency               ###")
   escreval(" ###                                        ###")
   escreval(" ###                                        ###")
   escreval(" ##############################################")
   escreval(" ##############################################")
   doisEspacos()
fimprocedimento

//@Funcao

funcao menuOpcao():inteiro
var opcao:inteiro
inicio
   escreval("Digite 1 para cadastrar um novo cliente;")
   escreval("Digite 2 para cadastrar o seu destino;")
   escreval("Digite 0 para sair;")
   doisEspacos()
   escreva("escolha uma opcao entre as listadas acima: ")
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


Inicio

   // Secaoo de Comandos, procedimento, funcoes, operadores, etc...

   printBannerScreen()
   apontador_cliente <- 1
   apontador_destino <-  1
   repita
      opt <- menuOpcao()
      //clientes[1]<- nom1
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
      outrocaso
         escreval("opcao invalida")
         doisEspacos()
      fimescolha

   ate opt=0


Fimalgoritmo