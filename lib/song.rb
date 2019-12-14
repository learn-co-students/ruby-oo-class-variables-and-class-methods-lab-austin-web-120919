require 'pry'

class Song

    @@count = 0
    @@artists = []
    @@genres = []

    attr_accessor :name, :genre, :artist

    def initialize(name,artist,genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << artist
        @@genres << genre
    end

    def self.song_count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.count
        @@count
    end

    def self.genre_count
        @@genres.inject(Hash.new(0)) do |hash, e|
        hash[e] += 1
        hash
        end        
    end

    def self.artist_count
        @@artists.inject(Hash.new(0)) do |hash, e|
            hash[e] += 1
            hash
        end
    end


    

end
