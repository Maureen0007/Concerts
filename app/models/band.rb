require 'pry'

class Band
    attr_accessor :name
    attr_reader :hometown
    @@all = []

    def initialize(name, hometown)
        @name = name
        @hometown = hometown
        @@all << self
    end

    def self.all
        @@all
    end

    # return an array of all concerts the band has played in
    def concerts
        Concert.all.select do |concert|
            Concert.band == self
        end
        
    end

    # takes the venue and date as arguments and create new concert

    def play_in_venue(venue,date)
        
    end
end