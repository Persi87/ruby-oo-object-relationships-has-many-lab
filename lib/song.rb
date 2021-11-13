require 'pry'

class Song
    attr_accessor :name, :artist

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def artist_name
       if self.artist   # if self.artist is true , return self.artist.name
        self.artist.name
       else
        nil
       end
    end
end
