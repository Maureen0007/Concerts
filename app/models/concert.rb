require 'pry'

class Concert
    attr_accessor :date, :band,  :venue
    @@all= []

    def initialize(date, band, venue)
        @date = date
        @band = band
        @venue = venue
        @@all << self
        
    end

    def self.all
        @@all
        
    end

    # returns true if concert is in band hometown and false if not

    def hometown_show?
        self.band.hometown == self.venue.city
        
    end

    # introduction

    def introducction
        "Hello #{venue.city}!!!!!, we are #{band.name} and we're from #{band.hometown}"
        
    end
    
end