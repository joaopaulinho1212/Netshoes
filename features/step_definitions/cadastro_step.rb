
Dado("que um cliente informe seu email {string}") do |email|
    visit "/login"
    value = ""; 2.times { value << (65 + rand(25)).chr }  
    find("#sign-up-username").set value + email
    click_button "Prosseguir"
    sleep 3
    
end

Então("deve preecher o campo nome {string} e sobrenome com {string}") do |name, lastname|
      find("#person-name").set name
      find("#person-last-name").set lastname    
end

Então("deve escolher o genero") do
      find("#label-male").click
end

Então("deve escolher a data de aniversario") do
      select "17",   from:"dateofbirth-day"
      select "Mar",  from:"dateofbirth-month"
      select "2001", from:"dateofbirth-year"
end

Então("deve preecher o CPF") do 
      find("#cpf").set CPF.generate
end

Então("deve preecher o CEP {string}") do |zipcode|
      find("#address-zipcode").set zipcode  
end

Então("deve preecher o numero {string}") do |address|
      find("#address-number").set address
end

Então("deve preecher o complemento {string}") do |infoadd|
      find("#address-additional-info").set infoadd
end

Então("deve preecher o campo referencia {string}") do |reference|
      find("#reference").set reference
end

Então("deve preecher o campo telefone {string}") do |phone|
      find("#phones-home").set phone
end

Então("deve preecher o campo senha {string}") do |password|
      find("#password").set password  
end

Então("devo clicar no botão continuar") do
  find(".button").click
  user = find("#username-logged").text
  expect(user).to eql "Joao Paulo"
  sleep 2
end