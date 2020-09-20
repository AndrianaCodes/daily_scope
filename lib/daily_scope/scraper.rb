class DailyScope::Scraper

    def self.scrape_dates
        doc = Nokogiri::HTML(open("https://www.sunsigns.com/horoscopes/daily"))

        dates = doc.css("div.sign-image p")
        
        dates.each do |d|
            name = d.text
            DailyScope::Date.new(name)
        end

        #signs = doc.css("div.sign-container h3")

        #signs.each do |s|
        #    name = s.text
        #    DailyScope::Date.new(name)
        #end

    end

end