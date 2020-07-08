class CovidStatusApi

    URL = "https://api.covid19api.com/summary"
    
    def get_country_status
        country_status =  HTTParty.get(URL)

        country_status["Countries"].each do |country_hash|
            CountryStatus.new(country_hash["Country"], country_hash["NewConfirmed"], country_hash["TotalConfirmed"], country_hash["NewDeaths"], country_hash["TotalDeaths"], country_hash["NewRecovered"], country_hash["TotalRecovered"], country_hash["Date"]) 
        end
    end

    def get_global_status 
        global_status = HTTParty.get(URL)

        GlobalStatus.new(global_status["Global"]["NewConfirmed"], global_status["Global"]["TotalConfirmed"], global_status["Global"]["NewDeaths"], global_status["Global"]["TotalDeaths"], global_status["Global"]["NewRecovered"], global_status["Global"]["TotalRecovered"])        
    end

end 


