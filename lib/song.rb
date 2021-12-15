require 'pry'
class Song
    @@count = 0
    @@artists = []
    @@genres = []
    @@gc = {}
    attr_accessor :name, :artist, :genre
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << artist
        @@genres << genre
        # @@gc << genre
    end

    def self.count
        @@count
    end
    def self.artists
        @@artists.uniq
    end
    def self.genres
        # remove dupes here
        @@genres.uniq
    end

    def self.genre_count
        new = {}
        @@genres.each do |genre|
            if new.include?(genre)
                new[genre] = new[genre]+1
            else
                new[genre] =1
            end
            # binding.pry
            # create a new array, if that array has "genre" in it, increment, else make new pair.
        end
        new

    end

    def self.artist_count
        @@artists.tally
    end
end

hit = Song.new("hitme", "brit", "pop")
shit = Song.new("hitme", "brit", "poop")
shit = Song.new("hitme", "brit", "poop")
shit = Song.new("hitme", "brit", "poop")
p Song.genre_count