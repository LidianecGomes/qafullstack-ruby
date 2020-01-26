

describe "login2 Forms", :login2 do

  before(:each) do
    visit "/login2"
  end

  it "Com data de nascimento" do

    #para pesquisar pelo Id find('#id')

    find('#userId').set 'stark'
    find('#passId').set 'jarvis!'

    login_form = find('#login')

    

    case login_form.text
      #Ordenação do case terá de ser com maiuscula
      #Forma de utilizar co contem no texto do elemento
      #Para pesquisar/validar no consolo $('#login').text();  
    when /Dia/
      find('#day').set '29'    
    when /Mês/
      find('#month').set '05'
    when /Ano/
      find('#year').set '1970'
    end
    
    sleep 5

    click_button "Login"

    expect(find("#flash")).to have_content "Olá, Tony Stark. Você acessou a área logada!"
  end


end
