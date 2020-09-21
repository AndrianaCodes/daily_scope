class DailyScope::Sign
    
    attr_accessor :name, :date, :summary
    @@all = []

    def initialize(name)
        @name = name
        @date = date
        add_to_date
        save
    end

    def self.all
        @@all
    end

    def add_to_date
        @date.signs << self unless @date.events.include?(self)

    end

    def save
        @@all << self
    end


end