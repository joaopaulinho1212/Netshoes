
#Escolhendo categoria
Dado("que eu deseje um item Masculino") do
        visit "/"
      find(".navbar__hamburger").click
end
  
Então("seleciono a categoria tênis") do

    find("[class='navbar__dropdown--thumb-item is-active']").hover
    find(:xpath, "(//a[@title='Tênis'])[1]").click
end
                                                           
#Adicionando ao Carrinho
Dado("que ja tenho um item selecionado") do                                   
    visit "/"
    find(".navbar__hamburger").click
    find("[class='navbar__dropdown--thumb-item is-active']").hover
    find(:xpath, "(//a[@title='Tênis'])[1]").click
    find('a[class="item-card__images__image-link"][title="Tênis Nike Revolution 5 Masculino"]').click
end                                                                          
 

Quando("seleciono meu tamanho") do
    find(:xpath, "(//a[@class='product-item'][contains(.,'40')])[1]").click
  end

  
Então("clico em comprar") do
    click_button "Comprar"
end                           

#ADD mais itens
Dado("que já tenha um item no carrinho") do
    visit "/login"
    find("#username").set "joaopaulo@netshoes.com"
    find("#password").set "pwd123"
    find("#login-button").click
   sleep 5
end
  
Dado("desejo adicionar mais um item") do
    find(:xpath, "//a[@href='/cart']").click 
    sleep 3
end
  
Quando("clico no botão {string}") do |string|
    find(:xpath, "//a[@href='/'][contains(.,'Escolher mais produtos')]").click
    sleep 3
end
  
Quando("eu deseje um item Masculino") do
     find(".navbar__hamburger").click
     find("[class='navbar__dropdown--thumb-item is-active']").hover
     sleep 3
end
  
Quando("seleciono a categora tênis") do
    find(:xpath, "(//a[@title='Tênis'])[1]").click
    sleep 3
end
  
Quando("que escolho o tenis") do
    find('a[class="item-card__images__image-link"][title="Tênis Adidas Lite Racer Cln Masculino"]').click
    sleep 3
end
  
Quando("seleciono o meu tamanho") do
    find(:xpath, "(//a[@class='product-item'][contains(.,'39')])[1]").click
    sleep 3
end

#Removendo Itens
Dado("que desejo remover um item do carrinho") do
    visit "/login"
    find("#username").set "joaopaulo@netshoes.com"
    find("#password").set "pwd123"
    find("#login-button").click
    sleep 2
    find(".navbar__hamburger").click
    sleep 2
    find("[class='navbar__dropdown--thumb-item is-active']").hover
    sleep 2
    find(:xpath, "(//a[@title='Tênis'])[1]").click
    sleep 2
    find('a[class="item-card__images__image-link"][title="Tênis Adidas Lite Racer Cln Masculino"]').click
    sleep 2
    find(:xpath, "(//a[@class='product-item'][contains(.,'38')])[1]").click

    click_button "Comprar"
    sleep 2
end
  
Então("clico no icone de lixeira") do   
    find(:xpath, "(//i[contains(@role,'button')])[2]").click
    sleep 2
end


#Checkout

Dado("que desejo fazer o checkout do meu item") do
        visit "/login"
    find("#username").set "joaopaulo@netshoes.com"
    find("#password").set "pwd123"
    find("#login-button").click
    sleep 3
    find(:xpath, "//a[@href='/cart']").click 
    sleep 3
end
  
  Então("clico em continuar") do
    find(:xpath, "//a[@qa-auto='cart-buy-button']").click
  end

  Então("devo ver o texto {string}") do |text|
   expect(page).to have_text text
  end