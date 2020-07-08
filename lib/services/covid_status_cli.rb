class CovidCLI

    attr_accessor :input
    
    def run
        covid = CovidStatusApi.new
        
        covid.get_global_status
        covid.get_country_status
        @pastel = Pastel.new
        @font = TTY::Font.new(:block)
        
        def title
            puts "\n"*40
            puts @pastel.red.bold(@font.write("COVID-19"))
            puts @pastel.yellow.bold(@font.write("TRACKER"))
            puts"\n \n \n \n"
        end

        title
        cdc_text
        start_program
        
    end

    def start_program
        puts "Press 'Enter' to continue"
        input = gets.chomp
        if input == ""
            puts "\n"*50
            puts "    Here are the current global stats for COVID19\n\n\n\n\n".green.bold
            GlobalStatus.global_stats
            prompt_text
            user_interaction
        else
            invalid_entry_text
            start_program
        end
    end

    def end_program
        puts "\n"*55
        puts @pastel.blue.bold(@font.write("WASH"))
        puts @pastel.blue.bold(@font.write("YOUR"))
        puts @pastel.blue.bold(@font.write("HANDS"))
        puts "\n"*10
        exit
    end

    def user_menu

        prompt = TTY::Prompt.new

        choices = [
        {name: '   Find stats for another country', value: 1},
        {name: '   View the country with the highest number of confirmed cases', value: 2},
        {name: '   View the county with the highest number of new cases', value: 3},
        {name: '   View countries with no new confirmed cases', value: 4},
        {name: '   Get the stats for a random country', value: 5},
        {name: '   When was this information last updated?', value: 6},
        {name: '   Exit', value: 7}
            ]

        user_input = prompt.select("\n\n    What would you like to do next?\n\n".green.bold, choices)

        case user_input

            when 1
                puts "\n"*55
                puts "\n  Enter the the name of the country\n\n".yellow.bold
                user_interaction

            when 2
                puts "\n"*55
                puts "\n  The country with the highest number of confirmed COVID-19 cases\n\n\n\n\n".yellow.bold
                CountryStatus.print_country_info(CountryStatus.most_cases)
                user_menu

            when 3
                puts "\n"*55
                puts "\n  The country with the highest number of new COVID-19 cases\n\n\n\n\n".yellow.bold
                CountryStatus.print_country_info(CountryStatus.most_new_cases)
                user_menu

            when 4
                puts "\n"*55
                CountryStatus.zero_new_cases
                puts "\n  These countries have had no new confirmed cases\n\n\n".yellow.bold
                user_menu

            when 5
                puts "\n"*55
                puts "\n  Here are the stats for a country chosen at random\n\n\n\n\n".yellow.bold 
                CountryStatus.print_country_info(CountryStatus.random_country)
                user_menu

            when 6
                puts "\n"*55
                puts "\n  The information was updated:".yellow + "  Date: #{CountryStatus.all[0].date}".gsub(/[TZ]/, 'T' => ' Time: ', 'Z' => ' Zulu').red
                user_menu

            when 7
            end_program
        end
    end
                   
    def cdc_text 
        puts "  From the CDC:\n".red.bold
        puts "    'COVID-19 is caused by a coronavirus \n
    called SARS-CoV-2. Older adults and people who have\n
    severe underlying medical conditions like heart or lung disease\n
    or diabetes seem to be at higher risk for developing more\n
    serious complications from COVID-19 illness.'\n\n".black
    end
                
    def prompt_text    
        puts "\n\n\n    To get the statistics of a specific country just enter the \n
    name of the country you would like more information on.\n
    You can enter 'exit' to quit the program.\n \n".black
    end

    def invalid_entry_text
        puts "\n  Invalid entry\n".red

    end
   
    def user_interaction
        
        @input = gets.chomp
          
        until @input == "exit"
                
            if CountryStatus.all.detect {|country_hash| country_hash.country.upcase.include? (@input.upcase)}
                puts"\n"*50
                CountryStatus.print_country_info(CountryStatus.find_country_by_name)
                user_menu
                                           
                else
                    invalid_entry_text
                    prompt_text
                    user_interaction
            end          
        end
      end_program
    end
 
end

