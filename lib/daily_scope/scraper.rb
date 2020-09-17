class DailyScope::Scraper

    def scrape_signs
        doc = Nokogiri::HTML(open("https://www.sunsigns.com/horoscopes/daily"))
        
    end

end