class DailyScope::Scraper

    def self.scrape_dates
        doc = Nokogiri::HTML(open("https://www.sunsigns.com/horoscopes/daily"))

        dates = doc.css("div.sign-image p")
        
        dates.each do |s|
            name = s.text
            DailyScope::Date.new(name)
        end
    end

end