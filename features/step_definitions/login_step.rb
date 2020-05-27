

Dado("que o cliente informe o email {string} e senha {string}") do |user, password|
    visit "/login"
    find("#username").set user
    find("#password").set password
end
  
Quando("clicar no botão Acessar Conta") do
    find("#login-button").click
end
  
Então("vou para volto para o catalogo de produtos") do
    user = find("#username-logged")
    expect(user).to have_text "Joao Paulo"
    sleep 5
end

Então("vejo a mensagem {string}") do |mensagem|
    expect(page).to have_text mensagem
end
  