

class Artist

    @@all = []

    def self.all
        @@all
    end

    attr_accessor :name

    def initialize(name)
        @name = name
        Artist.all << self
    end
    
    def songs
        Song.all.select {|song| song.artist == self}
    end

    def add_song(song)
        song.artist = self
    end


    def self.find_or_create_by_name(name)
        found_or_created_artist = nil
        Artist.all.each do |artist|
            if artist.name == name
                found_or_created_artist = artist
            end
        end
        if found_or_created_artist == nil
            found_or_created_artist = Artist.new(name)
        end
        found_or_created_artist
    end

    def print_songs
        this_artists_songs = Song.all.select {|song| song.artist == self}
        this_artists_songs.each {|song| puts song.name}
    end



    





end
