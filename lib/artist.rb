

class Artist 

    attr_accessor :name
    
    def initialize(name)
        @name = name
    end

    def songs     
       Song.all.select {|song| song.artist == self} #iterate through the @@all array - "select" the songs of the artist whose instance we are using
    end

    def add_song(song)  #argument is a Song instance
        song.artist = self  #set the artist of that song to the instance which is calling the method
    end

    def add_song_by_name(name)
        song = Song.new(name)
        song.artist = self
    end

    def self.song_count
        Song.all.count
    end


end