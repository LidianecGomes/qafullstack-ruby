


describe 'Alterando janelas', :janela do

    before(:each) do
        visit '/windows'
    end

    it 'nova janela' do


        #alternar entre janelas e manipular elementos na nova janela
        nova_janela = window_opened_by {click_link 'Clique aqui'}
        

        #para trabalhar com escopo indo para outra janela, se guiando pelo nome da nova guia
        within_window -> { page.title == 'Nova Janela'} do
            expect(page).to have_content 'Aqui temos uma nova janela \o/' 
        end

        nova_janela.close
        #método para validar se a página acessa foi de fato fechada
        expect(nova_janela.closed?).to be true

        sleep 3

    end



end