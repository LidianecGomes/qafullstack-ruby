describe 'Mouse Hover', :hovers do
  

    before(:each) do
        
        visit '/hovers'
        

    end

    it 'quando passo o mouse sobre o blade' do
        #Regex: * Contem
        card = find('img[alt*=Blade]')
        card.hover

        expect(page).to have_content 'Nome: Blade'
    end

    it 'quando passo o mouse sobre o Pantera Negra' do
        #Regex: ^ começa com...
        card = find('img[alt^=Pantera]')
        card.hover

        expect(page).to have_content 'Nome: Pantera Negra'
    end

    it 'quando passo o mouse sobre o Homem Aranha' do
         #Regex: $ termina com...
        card = find('img[alt$=Aranha]')
        card.hover

        expect(page).to have_content 'Nome: Homem Aranha'
    end
    
    

    after(:each) do
        sleep 3
    end

end