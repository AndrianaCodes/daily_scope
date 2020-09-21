class DailyScope::Scraper 
    
    def self.scrape_signs 
        html = open("https://www.sunsigns.com/horoscopes/daily") 
        doc = Nokogiri::HTML(html) 
        entry_content = doc.css("div.sign-container") 
        h3_array = entry_content.css("h3") 
        h3_array.each do |sign| 
            name = sign.text 
            DailyScope::Horoscope.new(name) 
        end 
    end 
    
    def self.scrape_info 
        html = open("https://www.sunsigns.com/horoscopes/daily") 
        doc = Nokogiri::HTML(html) 
        entry_content = doc.css("div.sign-container") 
        info = entry_content.css("div.sign-description") 
        info.pop 
        info.each_with_index do |facts, i| 
        
            DailyScope::Horoscope.all[i].facts = facts.text 
        end 
    end 
end 