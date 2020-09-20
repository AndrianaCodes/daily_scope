class DailyScope::Date 

    @@all = []
    attr_accessor :name 
    #:date, :summary

    def initialize(name)
        @name = name
        save
    end

    def self.all
        DailyScope::Scraper.scrape_dates if @@all.empty?
        @@all
    end

    def save
        @@all << self
    end


end