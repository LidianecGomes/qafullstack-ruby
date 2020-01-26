

describe 'Teclado', :key do

    before(:each) do
        visit '/key_presses'

    end

    it 'enviando teclas' do
        #%i para criar array de símbolos
        teclas = %i[tab escape space enter shift control alt]
        #for it
        teclas.each do |t|
            find('#campo-id').send_keys t
            sleep 5
    
            expect(page).to have_content 'You entered: ' + t.to_s.upcase #upcase(método rub para colcoar em caixa alta)
        end
    end

    it 'enviando letras' do
        #%w para criar um array de letras
        letras = %w[a d s f g h j k l] 

        letras.each do |l|
            find('#campo-id').send_keys l
            sleep 5
    
            expect(page).to have_content 'You entered: ' + l.to_s.upcase
        end


    end

end