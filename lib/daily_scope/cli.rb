class DailyScope::CLI

    def call
        puts "\nWelcome to your Daily Horoscope!\n"
        get_date
        list_dates
        get_user_date
    end

    #show list of user zodiac signs
    #show daily horoscope after the user clicks on number 
    #list signs 
    #goodbye method


    def get_date
        #to be scraped instead... possibly maybe?
        #@signs = ['Scorpio', 'Saggitarius', 'Capricorn', 'Aquarius', 'Pisces']
        @dates = DailyScope::Date.all
    end

    def list_dates
        puts "When is your birthday?"
        @dates.each.with_index(1) do |date, index| 
        puts "#{index}. #{date.name}"
        end
    end

    def get_user_date
        chosen_date = gets.strip.to_i
        show_date_for(chosen_date) if valid_input(chosen_date, @dates)
    end

    def valid_input(input, data)
        input.to_i <= data.length && input.to_i > 0
    end

    def show_date_for(chosen_date)
        date = @dates[chosen_date - 1]
        puts "Here is your horoscope for #{date.name}."
    end

end

#I have to eventually refer to Avis video to be able to
#include the date to the initial name in the welcome list

#look into colorize gem or use video at 50:25
