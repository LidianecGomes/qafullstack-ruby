describe 'Upload', :upload do

    before(:each) do
        
        visit '/upload'
        @arquivo = Dir.pwd + '/spec/fixture/arquivo.txt'
        @imagem = Dir.pwd + '/spec/fixture/imagem.png'

    end

    it 'upload de arquivo txt' do
        attach_file('file-upload', @arquivo)
        click_button 'Upload'
        div_arquivo = find('#uploaded-file')
        expect(div_arquivo.text).to eql 'arquivo.txt'


    end
    
    it 'upload de imagem txt', :upload_imagem do
        attach_file('file-upload', @imagem)
        click_button 'Upload'
        img = find('#new-image')
        expect(img[:src]).to include '/uploads/imagem.png'


    end
    

    after(:each) do
        sleep 3
    end

end