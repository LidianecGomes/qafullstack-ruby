describe "Tabelas", :tabs, :smoke do
  before(:each) do
    visit "/tables"
  end

  it "exibir o salario do stark" do
    #find só serve para um elemento
    atores = all("table tbody tr")

    stark = atores.detect { |ator| ator.text.include?("Robert Downey Jr") }
    puts stark.text
    expect(stark.text).to include "10.000.000"
  end

  it "deve exibir o salario do vin diesel" do
    diesel = find("table tbody tr", text: "@vindiesel")
    expect(diesel).to have_content "10.000.000"
  end

  it "deve exibir o filme velozes e fuirosos" do
    diesel = find("table tbody tr", text: "@vindiesel")
    movie = diesel.all("td")[2].text
    expect(movie).to eql "Velozes  Furiosos"
  end

  it "deve exibir o insta do Chris Evans" do
    evans = find("table tbody tr", text: "Chris Evans")

    insta = evans.all("td")[4].text

    expect(insta).to eql "@teamcevans"
  end

  it "deve selecionar Chris Prat para remoção" do
    prat = find("table tbody tr", text: "Chris Pratt")
    sleep 3
    prat.find("a", text: "delet").click

    msg = page.driver.browser.switch_to.alert.text
    expect(msg).to eql "Chris Pratt foi selecionado para remoção!"
  end

  it "deve selecionar Chris Prat para edição" do
    prat = find("table tbody tr", text: "Chris Pratt")
    sleep 3
    prat.find("a", text: "edit").click

    msg = page.driver.browser.switch_to.alert.text
    expect(msg).to eql "Chris Pratt foi selecionado para edição!"
  end
end
