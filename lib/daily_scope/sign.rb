class DailyScope::Sign 

    @@all = []
    attr_accessor :name 
    #:date, :summary

    def initialize(name)
        @name = name
        save
    end

    def self.all
        @@all
    end

    def save
        @@all << self
    end


end