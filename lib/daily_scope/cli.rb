class DailyScope::CLI

    def call
        puts "\nWelcome to your Daily Horoscope!\n"
        get_date
        list_dates
        get_user_date
    end

    #show list of dates
    #user types in number that corresponds to their birthday
    #shows what their zodiac sign is and what their horoscope summary is
    #list dates
    #goodbye method


    def get_date
        @dates = DailyScope::Date.all
        #@signs = DailyScope::Sign.all
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
        puts "Hello sign name!" 
        puts "You are a sign name because your bday is" 
        puts "between the dates of #{date.name}."
        puts ""
        puts "Here is a quick summary of your daily horoscope:"
    end

end

#look into colorize gem or use video at 50:25
