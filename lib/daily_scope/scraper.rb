class DailyScope::Scraper

    def self.scrape_signs
        doc = Nokogiri::HTML(open("https://www.sunsigns.com/horoscopes/daily"))

        signs = doc.css("h3")
        
        signs.each do |s|
            name = s.text
            DailyScope::Sign.new(name)
        end
    end

end