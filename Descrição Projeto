O objetivo do projeto é a realização de uma caixa multibanco digital usando o Xilinx ISE, 
envolvendo partes desenvolvidas em Verilog e esquemáticas.O sistema digital irá fornecer 
serviços bancários fundamentais aos utilizadores, como a verificação do PIN e transações 
dos pagamentos efetuados. O principal objetivo é simulação do circuito de uma caixa 
multibanco com as suas funcionalidades , envolvendo variaveis como o PIN, SALDO e 
valor do pagamento. O dispositivo possui dois sinais de entrada principais: EN, que indica 
a entrada do cartão na máquina, e o PIN, que é utilizado para verificar o utilizador. A 
máquina verifica o PIN inserido com um código de autenticação armazenado, que está 
guardado no sistema.Se o PIN for autenticado corretamente, o valor a ser pago, representado 
por VAL, é debitado do saldo disponivel SALDO, e a conta do utilizador é atualizada. Além 
disso, o projeto também inclui a implementação de um bit de paridade, que é gerado 
utilizando os números mecanográficos dos membros do grupo. O sistema também apresenta 
a geração dos montantes no formato binario para o saldo e o valor da transação, garantindo 
a exibição precisa dos valores. Este projeto tem como objetivo demonstrar os princípios de 
fucionamento de uma máquina multibanco, utilizando conceitos e práticas de sistemas 
digitais.

PROCEDIMENTO
Neste projeto, começamos por definir as entradas principais do circuito de acordo com
os requisitos dados: O EN em lógica negada e oPIN do utilizador. Para abordar o desafio
proposto, criámos um módulo de verificação do PIN, que atua como uma segurança,
armazenando temporariamente o código introduzido pelo utilizador antes de ser
verificado e processado. Este módulo garante que o PIN é validado com precisão,
impedindo tentativas incorretas. Uma vez confirmada a autenticação, a quantia de débito
é enviada para o módulo do SALDO, que verifica se o valor solicitado pode ser
descontado, tomando em conta o saldo disponível na conta. Se o saldo for suficiente, o
módulo de débito processa a operação, atualizando o saldo e armazenando o valor
deduzido para evitar erros de execução. O sistema opera com duas entradas principais
(EN e PIN), três variáveis em memória (COD, SALDO e VAL), e quatro saídas (ECRA,
SALDO, VAL e PAR). Nas entradas temos EN sinal de 1 bit, indicando a presença do
cartão na máquina, em lógica negada, EN = 0 indica que o cartão foi inserido, enquanto
EN = 1 indica que o cartão não está presente.

O PIN de 4 bits, representa o código de autenticação inserido pelo utilizador, nas
variáveis de memória temos o COD (chave de autenticação de 5 bits) é representado em 
BCD Excesso 3 ou seja, o valor do código original é incrementado em 3 unidades antes 
de ser armazenado e comparado com o PIN inserido pelo utilizador. para validar o PIN
inserido, a outra variável é o SALDO que é o valor atual disponível na conta bancária e
o VAL é o valor da transação a ser debitado do saldo da conta usando o complemento
para 2, representado em 4 bits. Agora como saída temos o ECRA que representa o valor
exibido na tela, o SALDO que mostra o valor atualizado da conta após o débito, o VAL
que mostra o valor da transação e o PAR, sinal de paridade (1 bit)

Resumindo, o sistema Multibanco funciona da seguinte forma: Verificação do
enable (EN) Se EN = 1, o cartão não está inserido. Nesse caso, o ECRA deve exibir 0, e
o sistema permanece inativo. Se EN = 0, o cartão está inserido, e o sistema deve
prosseguir para a verificação do PIN.
 Validação do PIN: Compara o PIN inserido pelo usuário com o valor armazenado
em COD. Se o PIN for diferente do COD, o ECRA vai mostrar 0 e o sistema
permanece desligado, o sinal PAR é sempre=1. Se PIN for igual ao COD, o sistema
autoriza o débito e atualiza o saldo.
 Deposito do Valor (VAL) no Saldo (SALDO): Subtrair VAL do SALDO usando o
complemento para 2 e armazenar o resultado atualizado em SALDO. O ECRA vai
mostrar o saldo atualizado depois da transação.
