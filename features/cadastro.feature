#language :pt

Funcionalidade: Cadastro de cliente
    Para que um cliente possa fazer suas compras
    Sendo um cliente não cadastrado 
    Posso fezer um cadastro

@cadusuario
Cenario: Cadastrando usuarios
    Dado que um cliente informe seu email "joaopaulo@netshoes.com"
    Então deve preecher o campo nome "Joao Paulo" e sobrenome com "Socorro Lima"
    E deve escolher o genero 
    E deve escolher a data de aniversario 
    E deve preecher o CPF
    E deve preecher o CEP "04180112"
    E deve preecher o numero "123"
    E deve preecher o complemento "AP03"
    E deve preecher o campo referencia "mercado AZ"
    E deve preecher o campo telefone "11123456789"
    E deve preecher o campo senha "pwd123" 
    Então devo clicar no botão continuar

    