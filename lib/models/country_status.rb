class CountryStatus
   
    attr_accessor :country_hash

    @@all = []

    def initialize (country_hash)
        @country_hash = country_hash
        @@all << self 
    end

    def self.all
        @@all
    end

end