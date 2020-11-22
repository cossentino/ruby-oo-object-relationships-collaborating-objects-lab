require "pry"


class Song

    @@all = []

    def self.all
        @@all
    end

    attr_accessor :name, :artist

    def initialize(name)
        @name = name
        Song.all << self
    end

    def self.new_by_filename(file)
        song = Song.new(file.split(" - ")[1])
        song.artist = Artist.find_or_create_by_name(file.split(" - ")[0])
        song
        #binding.pry
    end

    def artist_name=(artist_name)
        self.artist = Artist.find_or_create_by_name(artist_name)
    end





end

