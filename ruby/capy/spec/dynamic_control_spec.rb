

describe 'Dynamic Control', :dc do

    before(:each) do
        
        visit '/dynamic_controls'

    end

    it 'quando habilita o campo' do
       res = page.has_field? 'movie', disabled: true
       puts res


       click_button 'Habilita'

       res = page.has_field? 'movie', disabled: true
       puts res    

    end
    
    after(:each) do
        sleep 3
    end

end