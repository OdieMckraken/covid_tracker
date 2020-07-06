class CovidStatusApi

    URL = "https://api.covid19api.com/summary"
    
    def get_country_status
        country_status =  HTTParty.get(URL)

        country_status["Countries"].each do |country_hash|
            CountryStatus.new(country_hash) 
        end
    end

    def get_global_status 
        global_status = HTTParty.get(URL)

        GlobalStatus.new(global_status["Global"])        
    end

end 


