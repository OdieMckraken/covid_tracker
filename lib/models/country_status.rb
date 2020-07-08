class CountryStatus
   
    attr_accessor :country, :new_confirmed, :total_confirmed, :new_deaths, :total_deaths, :new_recovered, :total_recovered, :date

    @@all = []

    def initialize (country, new_confirmed, total_confirmed, new_deaths, total_deaths, new_recovered, total_recovered, date)
        @country = country
        @new_confirmed = new_confirmed
        @total_confirmed = total_confirmed
        @new_deaths = new_deaths
        @total_deaths = total_deaths
        @new_recovered = new_recovered
        @total_recovered = total_recovered
        @date = date
        @@all << self 
    end 

    def self.all
        @@all
    end

    def self.country_stats(i)
        puts "        #{i.country}\n\n".green.bold
        puts "        New confirmed cases:".yellow + "        #{i.new_confirmed}\n".red
        puts "        Total confrimed cases:".yellow + "      #{i.total_confirmed}\n".red
        puts "        Number of new deaths:".yellow + "       #{i.new_deaths}\n".red
        puts "        Total number of deaths:".yellow + "     #{i.total_deaths}\n".red
        puts "        Number of new recoveries:".yellow + "   #{i.new_recovered}\n".red
        puts "        Total number of recoveries:".yellow + " #{i.total_recovered}".red
    end

    def self.zero_new_cases
        CountryStatus.all.each { |country_hash| puts "#{country_stats(country_hash)}" if country_hash.new_confirmed == 0}
    end

    def self.most_cases
        CountryStatus.all.sort { |a, b| a.total_confirmed <=> b.total_confirmed}.last
    end

    def self.most_new_cases 
        CountryStatus.all.sort { |a, b| a.new_confirmed <=> b.new_confirmed}.last
    end

    def self.random_country
        CountryStatus.all.sample
    end

    def self.find_country_by_name
        CountryStatus.all.detect {|country_hash| country_hash.country.upcase.include? (Covid.input.upcase)}
    end

    def self.print_country_info(country)
       puts "#{country_stats(country)}"
    end
        
end