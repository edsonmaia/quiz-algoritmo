algoritmo "quiz-versao3"
// Professor : Edson Maia
// Função    : Quiz
// Autor     : Edson Maia

var
resposta : caractere
pontos, c: inteiro
pergunta : vetor [1..10] de caractere
respostas: vetor [1..30] de caractere
correta  : vetor [1..10] de caractere
tentativa: inteiro
contador : inteiro
situacao : caractere

// FAZER A PERGUNTA
procedimento perguntar(p, r1 : inteiro)

    var i, r2 : inteiro

inicio

       escreval("QUESTÃO " , p)
       escreval(pergunta[p])
       escreval("") // linha em branco

       r2 <- r1 + 2 // definir limite da letra C de cada questão

       para i de r1 ate r2 passo 1 faca
           escreval(respostas[i])
       fimpara

       escreva("QUAL É A LETRA DA SUA RESPOSTA? ")
       leia(resposta)

fimprocedimento
// FIM FAZER A PERGUNTA

// PONTUAR
procedimento pontuar(q : inteiro)

    inicio

    // ler resposta
    se (resposta <> correta[q]) e (tentativa = 1) entao
       escreval("Errou na 1ª tentativa")
       tentativa <- 2
    senao
         se (resposta <> correta[q]) e (tentativa = 2) entao
             escreval("Errou na 2ª tentativa")
             // chamar proxima questao

         fimse
    fimse

    se (resposta = correta[q]) e (tentativa = 1) entao
       escreval("")
       escreval("[ Parabéns, você Acertou na 1ª tentativa! ]")
       escreval("")
       pontos <- pontos + 10
       // chamar proxima questao
       senao
          se (resposta = correta[q]) e (tentativa = 2) entao
             escreval("")
             escreval("[ Parabéns, você Acertou na 2ª tentativa! ]")
             escreval("")
             pontos <- pontos + 5
             // chamar proxima questao
          senao
             escreval("")
             escreval("[ Que pena, você Errou! ]")
             escreval("")
          fimse
    fimse

fimprocedimento
// FIM PONTUAR

inicio
pontos    <- 0 // INICIAR O PLACAR
tentativa <- 1

// ABERTURA DO JOGO QUIZ
escreval("****************** Jogo Quiz. Versão 3.0 *******************")
escreval(" Leia cada questão, responda com a letra")
escreval(" da alternativa que você acredita ser a correta!")
escreval(" Para SAIR antes de finalizar o jogo pressione a tecla [ESC]")
escreval(" Autor: Edson Maia")
escreval("*************************************************************")

// BANCO DE QUESTÕES
 pergunta[1] <- "O que significa a sigla RAM?"
respostas[1] <- "(A) Memória de Acesso Rígido"
respostas[2] <- "(B) Memória de Acesso Randômico"
respostas[3] <- "(C) Memória de Acesso Restrito"
  correta[1]  <- "B"

 pergunta[2] <- "O que significa a sigla ROM?"
respostas[4] <- "(A) Memória Somente para Escrita"
respostas[5] <- "(B) Memória Somente para Impressão"
respostas[6] <- "(C) Memória Somente para Leitura"
  correta[2]  <- "C"

 pergunta[3] <- "O que significa a sigla CPU?"
respostas[7] <- "(A) Unidade Central de Processamento"
respostas[8] <- "(B) Central de Processamento Unária"
respostas[9] <- "(C) Unidade Concetradora de Prioridades"
  correta[3]  <- "A"

 pergunta[4]  <- "Qual é a quantidade de Bytes em 1KB?"
respostas[10] <- "(A) 1.048.576 bytes"
respostas[11] <- "(B) 1024 bytes"
respostas[12] <- "(C) 512 bytes"
  correta[4]  <- "B"

 pergunta[5]  <- "Qual é a quantidade de Bytes em 1MB?"
respostas[13] <- "(A) 1.048.576 bytes"
respostas[14] <- "(B) 1024 bytes"
respostas[15] <- "(C) 512 bytes"
  correta[5]  <- "A"

 pergunta[6]  <- "Qual é a quantidade de Bytes em 1GB?"
respostas[16] <- "(A) 1.048.576 bytes"
respostas[17] <- "(B) 1024 bytes"
respostas[18] <- "(C) 1.073.741.824 bytes"
  correta[6]  <- "C"

 pergunta[7]  <- "A letra b (minúscula) significa o que?"
respostas[19] <- "(A) bytes"
respostas[20] <- "(B) bits"
respostas[21] <- "(C) bots"
  correta[7]  <- "B"

 pergunta[8]  <- "A letra B (maiúscula) significa o que?"
respostas[22] <- "(A) bytes"
respostas[23] <- "(B) bits"
respostas[24] <- "(C) bots"
  correta[8]  <- "A"

 pergunta[9]  <- "É a principal unidade de armazenamento de dados no computador?"
respostas[25] <- "(A) Disquete 3 1/2"
respostas[26] <- "(B) CD-ROM"
respostas[27] <- "(C) HD ou SSD"
  correta[9]  <- "C"

 pergunta[10] <- "O que é uma variável?"
respostas[28] <- "(A) É uma constante declaração na seção de comandos."
respostas[29] <- "(B) É um espaço criado na memória para armazenar dados."
respostas[30] <- "(C) É um cluster de bits que fica no início do disco."
  correta[10] <- "B"

// GAME PLAY perguntar e pontuar
// 1a pergunta
se (tentativa = 1) entao
	perguntar(1, 1)
	pontuar(1)
fimse

// errou na 1a tentativa
se (resposta <> correta[1]) entao
	tentativa <- 2
fimse
//2a tentativa
se (tentativa = 2) entao
 	perguntar(1, 1)
	pontuar(1)
fimse

se (resposta = correta[1]) ou (resposta <> correta[1]) entao
	perguntar(2, 4)
	pontuar(2)
	tentativa <- 1
fimse
// fim 1a pergunta

// 2a pergunta
// errou na 1a tentativa
se (tentativa = 1) e (resposta <> correta[2]) entao
	tentativa <- 2
fimse
//2a tentativa
se (tentativa = 2) entao
 	perguntar(2, 4)
	pontuar(2)
fimse

se (resposta = correta[2]) ou (resposta <> correta[2]) entao
	perguntar(3, 7)
	pontuar(3)
	tentativa <- 1
fimse
// fim 2a pergunta

// 3a pergunta
// errou na 1a tentativa
se (tentativa = 1) e (resposta <> correta[3]) entao
	tentativa <- 2
fimse
//2a tentativa
se (tentativa = 2) entao
 	perguntar(3, 7)
	pontuar(3)
fimse

se (resposta = correta[3]) ou (resposta <> correta[3]) entao
	perguntar(4, 10)
	pontuar(4)
	tentativa <- 1
fimse
// fim 3a pergunta

// 4a pergunta
// errou na 1a tentativa
se (tentativa = 1) e (resposta <> correta[4]) entao
	tentativa <- 2
fimse
//2a tentativa
se (tentativa = 2) entao
 	perguntar(4, 10)
	pontuar(4)
fimse

se (resposta = correta[4]) ou (resposta <> correta[4]) entao
	perguntar(5, 13)
	pontuar(5)
	tentativa <- 1
fimse
// fim 4a pergunta

// 5a pergunta
// errou na 1a tentativa
se (tentativa = 1) e (resposta <> correta[5]) entao
	tentativa <- 2
fimse
//2a tentativa
se (tentativa = 2) entao
 	perguntar(5, 13)
	pontuar(5)
fimse

se (resposta = correta[5]) ou (resposta <> correta[5]) entao
	perguntar(6, 16)
	pontuar(6)
	tentativa <- 1
fimse
// fim 5a pergunta

// 6a pergunta
// errou na 1a tentativa
se (tentativa = 1) e (resposta <> correta[6]) entao
	tentativa <- 2
fimse
//2a tentativa
se (tentativa = 2) entao
 	perguntar(6, 16)
	pontuar(6)
fimse

se (resposta = correta[6]) ou (resposta <> correta[6]) entao
	perguntar(7, 19)
	pontuar(7)
	tentativa <- 1
fimse
// fim 6a pergunta

// 7a pergunta
// errou na 1a tentativa
se (tentativa = 1) e (resposta <> correta[7]) entao
	tentativa <- 2
fimse
//2a tentativa
se (tentativa = 2) entao
 	perguntar(7, 19)
	pontuar(7)
fimse

se (resposta = correta[7]) ou (resposta <> correta[7]) entao
	perguntar(8, 22)
	pontuar(8)
	tentativa <- 1
fimse
// fim 7a pergunta

// 8a pergunta
// errou na 1a tentativa
se (tentativa = 1) e (resposta <> correta[8]) entao
	tentativa <- 2
fimse
//2a tentativa
se (tentativa = 2) entao
 	perguntar(8, 22)
	pontuar(8)
fimse

se (resposta = correta[8]) ou (resposta <> correta[8]) entao
	perguntar(9, 25)
	pontuar(9)
	tentativa <- 1
fimse
// fim 8a pergunta

// 9a pergunta
// errou na 1a tentativa
se (tentativa = 1) e (resposta <> correta[9]) entao
	tentativa <- 2
fimse
//2a tentativa
se (tentativa = 2) entao
 	perguntar(9, 25)
	pontuar(9)
fimse

se (resposta = correta[9]) ou (resposta <> correta[9]) entao
	perguntar(10, 28)
	pontuar(10)
	tentativa <- 1
fimse
// fim 9a pergunta

// 10a pergunta
// errou na 1a tentativa
se (tentativa = 1) e (resposta <> correta[10]) entao
	tentativa <- 2
fimse
//2a tentativa
se (tentativa = 2) entao
 	perguntar(10, 28)
	pontuar(10)
fimse

se (resposta = correta[10]) ou (resposta <> correta[10]) entao
   escreval("FIM DO JOGO!")
   // exibir placar
fimse
// fim 10a pergunta

// PLACAR FINAL
escreval("")
escreval("***********************************")
escreval("*           PLACAR FINAL          *")
escreval("   Você ganhou ", pontos ," pontos!")
escreval("*                                 *")
escreval("***********************************")

fimalgoritmo
