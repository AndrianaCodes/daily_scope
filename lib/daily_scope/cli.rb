class DailyScope::CLI

    def call 
        puts "" 
        puts "Welcome to your Daily Horoscope" 
        get_signs 
        get_facts 
        list_signs 
        get_user_sign 
        what_next 
        goodbye 
    end 
    
    def get_signs 
        @signs = DailyScope::Horoscope.all 
        DailyScope::Scraper.scrape_signs if @signs.empty? 
    end 
    
    def get_facts 
        DailyScope::Scraper.scrape_info 
        if @signs[0].facts.nil? 
    end
            
    def list_signs 
        puts "" 
        puts "Choose a sign # to see a summary of your horoscope!" 
        puts "" 
        
        @signs.each_with_index do |sign| 
        puts " #{sign.name}" 
        end
    end

    def get_user_sign 
        chosen_sign = gets.strip.to_i 
        show_details_for(chosen_sign) if valid_input(chosen_sign, @signs) 
    end 
    
    def valid_input(input, data) 
        input.to_i <= data.length && input.to_i > 0 
    end 
    
    def show_details_for(chosen_sign) 
    sign = @signs[chosen_sign -1] 
        puts "----------------------------------------" 
        puts"Hello ##{sign.name}, Your Horoscope is here:" 
        puts "----------------------------------------" 
        puts "" 
        puts "Quick Summary: 
                        #{sign.facts}" 
        puts "" 
    end 
    
    def goodbye 
        puts "See you tomorrow for your next reading!" 
    end 
    
    def what_next 
        puts "" 
        puts " Would you like to see a different horoscope? 
        Please enter Y or N" 
        @input = gets.strip.upcase 
        if @input == "Y" 
            call 
        elsif @input == "N" 
            DailyScope::Scraper.scrape_info 
            goodbye 
            exit 
        else puts "" 
            puts "Sorry, I don't understand that choice." 
            what_next 
        end 
    end 
end 
end