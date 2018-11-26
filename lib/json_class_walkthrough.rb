require 'json'
require 'date'

class ParseJson

    attr_accessor :json_file, :y, :m, :d
    
    #enable access to json file data outside the class
    def initialize (json_file)
        @json_file = JSON.parse(File.read(json_file))
        @y, @m, @d = 0
    end

    def get_base
        json_file['base']
    end

    def get_date
        y, m, d = json_file["date"].split '-'
        Date.valid_date? y.to_i, m.to_i, d.to_i
    end

    def get_rates
        json_file['rates']
    end

    def verify_uppercase
        json_file['rates'].key.upcase?
    end
end

# run = ParseJson.new('json_exchange_rates.json') #creates an instance of ParseJson class to be used

# p run.json_file