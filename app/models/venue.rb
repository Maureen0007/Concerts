require 'pry'

class Venue
    attr_accessor :title
    attr_reader :city
    @@all = []

    def initialize(title, city)
        @title = title
        @city = city
        @@all << self
    end

    def self.all
        @@all
    end

    # returns an array of all concerts

    def concerts
        Concert.all.select do |concert|
            Concert.band == self
        end
        
    end
    # returns an array of all bands at the venue

    def bands
        self.concerts.map do |band|
            band.bands
        
    end

    # concert_on

    def concert_on(date)
        self.concerts.find{|concert| concert.date == date}
        
    end

    # most_frequent_band

    def most_frequent_band
        self.bands.max_by{|index| bands.count(index)}
        
    end
end