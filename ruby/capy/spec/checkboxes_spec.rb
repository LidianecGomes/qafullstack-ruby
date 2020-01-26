
describe 'Caixas de seleção', :checkbox, :smoke do

    before(:each) do
        visit '/checkboxes'
    end

    it 'marque uma opção' do
        check('thor')
    end

    it 'desmarcar uma opção' do
        uncheck('antman')
    end

    it 'marcado com find set true' do
        find('input[value=cap]').set(true)
    end

    it 'desmarcando com find ser false' do
        find('input[value=guardians]').set(false)
    end
           

    after(:each) do
        sleep 3
    end

end