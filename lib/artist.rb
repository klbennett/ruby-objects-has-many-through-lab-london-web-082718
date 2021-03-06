require 'pry'
class Artist

attr_accessor :name

@@all = []

  def initialize(name)
    @name = name
    @@all << self
    @songs = []
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    song = Song.new(name, self, genre)
    @songs << song
    song
  end

  def songs
    @songs
  end

  def genres
    @songs.map do |song|
    # binding.pry
      song.genre
    end
  end
end
