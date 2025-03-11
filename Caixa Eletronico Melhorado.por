programa
{
    real saldo = 150.00
    cadeia nome
    cadeia extrato = "Depósito: R$50.00\nCompra: R$30.00\nDepósito: R$70.00\n"
    inteiro senhaCorreta = 3589

    funcao inicio()
    {
        escreva("Olá! Qual o seu nome? ")
        leia(nome)
        escreva("Olá ", nome, ", é um prazer ter você por aqui!\n")
        escolhaMenu()
    }

    funcao escolhaMenu()
    {
        inteiro opcao = 0 // Inicializa a variável

        escreva("\nEscolha uma opção:\n")
        escreva("1. Saldo\n")
        escreva("2. Extrato\n")
        escreva("3. Saque\n")
        escreva("4. Depósito\n")
        escreva("5. Transferência\n")
        escreva("6. Sair\n")
        leia(opcao)

        escolha(opcao)
        {
            caso 1:
                validarSenha("verSaldo")
                pare
            caso 2:
                validarSenha("verExtrato")
                pare
            caso 3:
                validarSenha("fazerSaque")
                pare
            caso 4:
                fazerDeposito()
                pare
            caso 5:
                validarSenha("fazerTransferencia")
                pare
              caso 6:
                sair()
                pare 
            caso contrario:
                erro()
                pare
        }
    }

    funcao validarSenha(cadeia acao)
    {
        inteiro senha
        escreva("Informe a senha: ")
        leia(senha)

        se (senha != senhaCorreta)
        {
            escreva("Senha incorreta! Tente novamente.\n")
            validarSenha(acao)
        }
        senao
        {
            se (acao == "verSaldo")
                verSaldo()
            senao se (acao == "verExtrato")
                verExtrato()
            senao se (acao == "fazerSaque")
                fazerSaque()
            senao se (acao == "fazerTransferencia")
                fazerTransferencia()
        }
    }

    funcao verSaldo()
    {
        escreva("Seu saldo atual é: R$", saldo, "\n")
        escolhaMenu()
    }

    funcao verExtrato()
    {
        escreva("Seu extrato:\n", extrato, "\n")
        escolhaMenu()
    }

    funcao fazerDeposito()
    {
        real deposito
        escreva("Qual o valor para depósito? ")
        leia(deposito)

        se (deposito <= 0)
        {
            escreva("Operação não autorizada. Informe um valor válido.\n")
            fazerDeposito()
        }
        senao
        {
            saldo = saldo + deposito
            extrato = extrato + "Depósito: R$" + deposito + "\n"
            escreva("Depósito realizado com sucesso! Seu novo saldo é: R$", saldo, "\n")
            escolhaMenu()
        }
    }

    funcao fazerSaque()
    {
        real saque
        escreva("Qual o valor para saque? ")
        leia(saque)

        se (saque <= 0)
        {
            escreva("Operação não autorizada. Informe um valor válido.\n")
            fazerSaque()
        }
        senao se (saldo - saque < 0)
        {
            escreva("Operação não autorizada. Saldo insuficiente.\n")
            escolhaMenu()
        }
        senao
        {
            saldo = saldo - saque
            extrato = extrato + "Saque: R$" + saque + "\n"
            escreva("Saque realizado com sucesso! Seu novo saldo é: R$", saldo, "\n")
            escolhaMenu()
        }
    }

    funcao fazerTransferencia()
    {
        inteiro conta
        real transferencia

        escreva("Informe o número da conta para transferência: ")
        leia(conta)
        escreva("Informe o valor para transferência: ")
        leia(transferencia)

        se (transferencia <= 0)
        {
            escreva("Operação não autorizada. Informe um valor válido.\n")
            fazerTransferencia()
        }
        senao se (saldo - transferencia < 0)
        {
            escreva("Operação não autorizada. Saldo insuficiente.\n")
            escolhaMenu()
        }
        senao
        {
            saldo = saldo - transferencia
            extrato = extrato + "Transferência: R$" + transferencia + " para conta " + conta + "\n"
            escreva("Transferência realizada com sucesso! Seu novo saldo é: R$", saldo, "\n")
            escolhaMenu()
        }
    }

    funcao erro()
    {
        escreva("Opção inválida! Por favor, escolha uma das opções disponíveis.\n")
        escolhaMenu()
    }

    funcao sair()
    {
        escreva(nome, ", foi um prazer ter você por aqui!\n")
      
    }}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 4190; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */