describe "Alerts de JS", :alerts do
  before(:each) do
    visit "/javascript_alerts"
  end

  it "Alerta" do
    click_button "Alerta"

    #chama o browser da sessão page.driver.browser

    msg = page.driver.browser.switch_to.alert.text

    expect(msg).to eql "Isto é uma mensagem de alerta"
    puts msg

    sleep 3
  end

  it "Sim confirma" do
    click_button "Confirma"

    #chama o browser da sessão page.driver.browser

    msg = page.driver.browser.switch_to.alert.text

    expect(msg).to eql "E ai confirma?"
    page.driver.browser.switch_to.alert.accept
    expect(page).to have_content "Mensagem confirmada"
    puts msg

    sleep 3
  end

  it "Não confirma" do
    click_button "Confirma"

    #chama o browser da sessão page.driver.browser

    msg = page.driver.browser.switch_to.alert.text

    expect(msg).to eql "E ai confirma?"
    page.driver.browser.switch_to.alert.dismiss
    expect(page).to have_content "Mensagem não confirmada"
    puts msg

    sleep 3
  end

  it "prompt", :prompt do
    accept_prompt(with: "Lidiane") do
      click_button "Prompt"
      sleep 3
    end

    expect(page).to have_content "Olá, Lidiane"
    sleep 3
  end
  it "dimiss", :prompt_dismiss do

    click_button "Prompt"
    page.driver.browser.switch_to.alert.dismiss
   

    expect(page).to have_content "Olá, null"
    sleep 3
  end
end
