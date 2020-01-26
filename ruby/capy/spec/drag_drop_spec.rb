

describe 'Drag and Drop', :drop do

    before(:each) do
        
        visit '/drag_and_drop'

    end

    it 'homem aranha pertence ao time do stark' do
        #Para pesquisar elemento por css selector pela classe find ('.'), coforme exemplo abaixo
        stark = find('.team-stark .column')
        cap = find('.team-cap .column')

        spiderman = find('img[alt$=Aranha]')
        spiderman.drag_to stark

        sleep 3
        expect(stark).to have_css 'img[alt$=Aranha]'
        expect(cap).not_to have_css 'img[alt$=Aranha]'


    end
    
    

    after(:each) do
        sleep 3
    end

end