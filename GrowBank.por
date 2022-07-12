programa
{
	inclua biblioteca Util -->u
	
     real saldo = 0.0, limite = 0.0, taxaSaque = 2.50, taxaTed = 4.50
	logico rodar=verdadeiro
	funcao inicio()
	{

         inteiro opcao
         limpa()
         

         enquanto(rodar){
         	    mostrarMenu()
         	    escreva("\n Digite a opção: ")
         	    leia(opcao)

         	    escolha(opcao){
         	    	caso 1:
         	    	mostrarSaldo()
         	    	pare
         	    	caso 2:
         	    	depositar()
         	    	pare
         	    	caso 3: 
         	    	sacar()
         	    	pare
         	    	caso 4:
         	    	transferir()
         	    	pare
         	    	caso 5: 
         	    	escreva("Saindo do sistema")
         	    	escreva(".")
         	    	u.aguarde(100)
         	    	escreva(".")
         	    	u.aguarde(100)
         	    	escreva(".")
         	    	u.aguarde(100)
         	    	escreva(".")
         	    	u.aguarde(100)
         	    	escreva(".")
         	    	u.aguarde(100)
         	    	escreva(".")
         	    	u.aguarde(100)
         	    	escreva(".")
         	    	u.aguarde(100)
         	    	rodar=falso
         	    	pare
         	    	caso contrario:
         	    	limpa()
         	    	escreva("Opção inválida\n")
         	    	escreva("Iniciando o sistema\n")
         	    	escreva(".")
         	    	u.aguarde(100)
         	    	escreva(".")
         	    	u.aguarde(100)
         	    	escreva(".")
         	    	u.aguarde(100)
         	    	escreva(".")
         	    	u.aguarde(100)
         	    	escreva(".")
         	    	u.aguarde(100)
         	    	escreva(".")
         	    	u.aguarde(100)        	    	
         	    	inicio()
         	    	pare
         	    	}
         	}

		
	}

	funcao mostrarMenu()
	{
		escreva("Digite o número referente a uma das opções abaixo: \n")
		escreva("1 - Visualizar Saldo em conta\n")
		escreva("2 - Depositar Growcoins\n")
		escreva("3 - Sacar Growcoins\n")
		escreva("4 - Transferir Growcoins\n")
		escreva("5 - Sair do sistema\n")
	}

	funcao mostrarSaldo()
	{
		escreva("\n Seu saldo é: "+saldo)
	}

	funcao depositar() 
	{
		limpa()
		real valor
		escreva("\nDigite o valor a depositar: G$ ")
		leia(valor)

		saldo+=valor
		escreva("Depodito de "+valor+"foi efetuado com sucesso!\n")
		mostrarSaldo()
	}

	funcao sacar() {
		limpa()
		real valor, saqueTemp
		escreva("\nDigite o valor a sacar: G$ ")
		leia(valor)

		saqueTemp = saldo-valor-taxaSaque

		se(saqueTemp < -500){
			escreva("Saque negado por falta de saldo!")
			}senao{
				saldo=saqueTemp
				escreva(" Saque de "+ valor +"foi efetuado com sucesso!\n")
				}

		saldo+=valor
		escreva("Saque de "+valor+"foi efetuado com sucesso!\n")
		mostrarSaldo()
	}

	funcao transferir() 
	{
		limpa()
		real valor, saldoTemp
		cadeia nomeFavorecido, numConta
		escreva("\nDigite o número da conta para transferência: ")
		leia(numConta)
		escreva("\nDigite o nome do favorecido: ")
		leia(nomeFavorecido)
		escreva("\nDigite o valor de transferência: G$ ")
		leia(valor)

		saldoTemp=saldo-valor-taxaTed
		se(saldoTemp<0){
			escreva("Saldo insuficiente")
		}senao{
			saldo=saldoTemp
			

		saldo+=valor
		escreva("Transferência de "+valor+"foi efetuado com sucesso!\n")
		mostrarSaldo()
		}
	
     }
  
}  
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2637; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */