describe 'Testing the exchange rates' do
    before(:all) do
        @exchange_rates = ParseJson.new('json_exchange_rates.json')
    end

    it 'should be a Hash' do 
        expect(@exchange_rates.json_file).to be_kind_of(Hash)
    end

    it 'should be EURO for base currency' do
        # expect(@exchange_rates.json_file['base']).to eq "EUR"
        expect(@exchange_rates.get_base).to eq "EUR"
    end

    it 'should be a date type' do
        expect(@exchange_rates.get_date).to eq true
    end

    it 'should have 31 rates in total' do
        expect(@exchange_rates.get_rates.length).to eq 31
    end

    it 'should be a float number and higher than 0' do
        @exchange_rates.get_rates.each do |key, value|
            expect(value).to be_kind_of(Float)
            expect(value).to be > 0
        end
    end

    it 'should be a string and upper case' do
        @exchange_rates.get_rates.each do |key, value|
            expect(key).to be_kind_of(String)

            expect(key).to be 
        end
    end
end