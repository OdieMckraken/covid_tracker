class GlobalStatus
    
    attr_accessor :new_confirmed, :total_confirmed, :new_deaths, :total_deaths, :new_recovered, :total_recovered


    @@all = []

    def initialize (new_confirmed, total_confirmed, new_deaths, total_deaths, new_recovered, total_recovered)
        @new_confirmed = new_confirmed
        @total_confirmed = total_confirmed
        @new_deaths = new_deaths
        @total_deaths = total_deaths
        @new_recovered = new_recovered
        @total_recovered = total_recovered
        @@all << self
    end

    def self.all
        @@all
    end

    def self.global_stats
        
        puts "        New confirmed cases:".yellow + "        #{all[0].new_confirmed}\n".red
        puts "        Total confrimed cases:".yellow + "      #{all[0].total_confirmed}\n".red
        puts "        Number of new deaths:".yellow + "       #{all[0].new_deaths}\n".red
        puts "        Total number of deaths:".yellow + "     #{all[0].total_deaths}\n".red
        puts "        Number of new recoveries:".yellow + "   #{all[0].new_recovered}\n".red
        puts "        Total number of recoveries:".yellow + " #{all[0].total_recovered}".red

        
    end

end
