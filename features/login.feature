#language: pt

    Funcionalidade: Login
        Para que um cliente possa fazer suas compras
        Sendo um cliente ja cadastrado
        Posso fazer o login com meus acessos

     @login_happy
    Cenario: Login com sucesso
        Dado que o cliente informe o email "joaopaulo@netshoes.com" e senha "pwd123"
        Quando clicar no botão Acessar Conta
        Então vou para volto para o catalogo de produtos
    @login_bad
    Esquema do Cenario: Login Invalidos
        Dado que o cliente informe o email <email> e senha <password>
        Quando clicar no botão Acessar Conta
        Então vejo a mensagem <message>


    Exemplos:
      | email                    | password | message                                      |
      | "123@netshoes.com"       | "pdw123" | "Usuário ou senha inválidos"                 |
      | "joaopaulo@netshoes.com" | "12345"  | "Usuário ou senha inválidos"                 |
      | ""                       | "pwd123" | "O campo E-mail, CPF ou CNPJ é obrigatório." |
      | "joaopaulo@netshoes.com" | ""       | "O campo Senha é obrigatório."               |
