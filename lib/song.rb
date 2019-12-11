require "pry"

class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []

    def initialize (name,artist,genre)
        @name = name
        @artist = artist
        @genre = genre

        @@count += 1
        @@genres << self.genre
        @@artists << self.artist

    end

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    def self.artist_count
        artist_count_hash = {}
        @@artists.uniq.each{|el| artist_count_hash[el] = @@artists.count(el)}
        #binding.pry
        artist_count_hash
    end
        
    def self.genre_count
        genre_count_hash = {}
        @@genres.uniq.each{|el| genre_count_hash[el] = @@genres.count(el)}
        #binding.pry
        genre_count_hash
    end
end