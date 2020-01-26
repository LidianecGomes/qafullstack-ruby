describe "Ids Dinâmicos", :ids_dinamicos do
  before(:each) do
    visit ''
  end

  #$= termina com
  #^= começa com
  #*= contem

  it "cadastro" do
    find("input[id$=UsernameInput]").set "stark"
    find("input[id^=PasswordInput]").set "jarvis!"

    find("a[id*=GetStartedButton]").click

    expect(page).to have_content "Dados enviados. Aguarde aprovação do seu cadastro!"
    sleep 5
  end
end
