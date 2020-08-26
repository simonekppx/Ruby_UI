Dado(/^que eu esteja no formulário de cadastro das Casas Bahia$/) do
    @home = Cadastro.new 
 
  end
  
  Quando(/^eu preencher os campos "([^"]*)","([^"]*)","([^"]*)","([^"]*)","([^"]*)","([^"]*)","([^"]*)","([^"]*)","([^"]*)","([^"]*)","([^"]*)","([^"]*)","([^"]*)"$/) do |nome,cpf,ddd1,tel,ddd2,cel,dia,mes,ano,email,email2,senha,senha2|
    @form = Cadastro.new
    @form.preencherForm nome,cpf,ddd1,tel,ddd2,cel,dia,mes,ano,email,email2,senha,senha2 
  end

  Quando(/^eu preencher os campos "([^"]*)","([^"]*)","([^"]*)","([^"]*)","([^"]*)","([^"]*)","([^"]*)","([^"]*)","([^"]*)","([^"]*)","([^"]*)","([^"]*)","([^"]*)" inválidos$/) do |nome,cpf,ddd1,tel,ddd2,cel,dia,mes,ano,email,email2,senha,senha2|
    @form = Cadastro.new
    @form.preencherForm nome,cpf,ddd1,tel,ddd2,cel,dia,mes,ano,email,email2,senha,senha2 
  end

  Quando(/^clicar no botão Continuar$/) do
    @salvar = Cadastro.new
    @form.clickContinuar
  end
  
  Então(/^o sistema deve exibir uma mensagem de sucesso$/) do
    assert_text("")
  end

  Então(/^o sistema deve exibir uma "([^"]*)" de erro$/) do |mensagem|
  assert_text(mensagem)
end