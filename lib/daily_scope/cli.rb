class DailyScope::CLI

    def call
        puts "\nWelcome to your Daily Horoscope!\n"
        get_sign
        list_signs
        get_user_sign
    end

    #show list of user zodiac signs
    #show daily horoscope after the user clicks on number 
    #list signs 
    #goodbye method


    def get_sign
        #to be scraped instead... possibly maybe?
        #@signs = ['Scorpio', 'Saggitarius', 'Capricorn', 'Aquarius', 'Pisces']
        @signs = DailyScope::Sign.all
    end

    def list_signs
        puts "Choose a sign to see your horoscope."
        @signs.each.with_index(1) do |sign, index| 
        puts "#{index}. #{sign.name}"
        end
    end

    def get_user_sign
        chosen_sign = gets.strip.to_i
        show_horoscope_for(chosen_sign) if valid_input(chosen_sign, @signs)
    end

    def valid_input(input, data)
        input.to_i <= data.length && input.to_i > 0
    end

    def show_horoscope_for(chosen_sign)
        sign = @signs[chosen_sign - 1]
        puts "Here is your horoscope for #{sign.name}."
    end

end

#I have to eventually refer to Avis video to be able to
#include the date to the initial name in the welcome list

#look into colorize gem or use video at 50:25
