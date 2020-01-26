describe "Login com cadastro", :login3, :smoke do
  before(:each) do
    visit "/access"
  end

  it "login com sucesso" do

    #login_form = find('#login')

    #login_form.find('input[name=username]').set "stark"
    #login_form.find('input[name=password]').set "jarvis!"

    within("#login") do
      find("input[name=username]").set "stark"
      find("input[name=password]").set "jarvis!"
      click_button "Entrar"
    end

    expect(find("#flash")).to have_content "Olá, Tony Stark. Você acessou a área logada!"
    sleep 5
  end

  it "cadastro com sucesso" do 
    within("#signup") do
      find("input[name=username]").set "lidiane"
      find("input[name=password]").set "123456"
      click_link "Criar Conta"
      sleep 5
    end

    expect(page).to have_content "Dados enviados. Aguarde aprovação do seu cadastro!"
    sleep 5
  end
end
