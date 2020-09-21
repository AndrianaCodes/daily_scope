class DailyScope::Date 
    
    attr_accessor :name, :signs
    #name is equal to date, :summary
    @@all = []

    def initialize(name)
        @name = name
        @signs = []
        save
    end

    def self.all
        DailyScope::Scraper.scrape_dates if @@all.empty?
        @@all
    end

    def get_signs
        DailyScope::Scraper.scrape_signs(self)  if @signs.empty?
        @signs
    end


    def save
        @@all << self
    end


end