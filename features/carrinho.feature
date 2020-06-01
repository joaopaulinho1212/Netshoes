#language: pt
@total
     Funcionalidade: Selecionando o produto
        Para que um cliente possa fazer suas compras
        Sendo um cliente já cadastrado
        Posso escolher itens para adicionar ao carrinho

    @choose
    Cenario: Escolhendo Categoria
        Dado que eu deseje um item Masculino
        Então seleciono a categoria tênis
   @addcart
    Cenario: Escolhendo e add ao carrinho
        Dado que ja tenho um item selecionado
        Quando seleciono meu tamanho
        Então clico em comprar
    @additem
    Cenario: Adicionando mais um item ao carrinho
        Dado que já tenha um item no carrinho 
        E desejo adicionar mais um item
        Quando clico no botão "Escolher mais Produtos"
        E eu deseje um item Masculino
        E seleciono a categora tênis
        E que escolho o tenis 
        Quando seleciono o meu tamanho
        Então clico em comprar
    @remove
    Cenario: Removendo um item
        Dado que desejo remover um item do carrinho
        Então clico no icone de lixeira
    @checkout
    Cenario: Checkout
        Dado que desejo fazer o checkout do meu item      
        E clico em continuar
        Então devo ver o texto "RESUMO DO PEDIDO"
