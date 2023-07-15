Algoritmo "agency"
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
   
   i,opt:inteiro

//@Procedimentos
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
fimprocedimento


Inicio
// Secaoo de Comandos, procedimento, funcoes, operadores, etc... 
   printBannerScreen()
   clientes[1]<- nom1
   repita
      escreva("Informe qual opcao voce prefere: ")
      leia(opt)
      escolha opt
      caso 1
         cadastrarCliente()
      caso 2
         fazerOutraCoisa()
      outrocaso
         ecreval(" opcao invalida")
      fimescolha

   ate i=0
   escreval("Obrigado pela sua visita...")


Fimalgoritmo