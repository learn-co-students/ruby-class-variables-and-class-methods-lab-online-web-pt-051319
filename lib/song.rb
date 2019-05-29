class Song
  
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@artists = []
  @@genres = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
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
  
  def self.genre_count
    genre_count = {}
    @@genres.each do |genre|
      if genre_count.has_key?(genre)
        genre_count[genre] += 1
      else 
        genre_count[genre] = 1
      end
    end
    genre_count
  end
  
  def self.artist_count               # create empty hash with default value of 0 so if 
    artist_count = Hash.new(0)        # a non-exsitent key is called then 0 is returned
    @@artists.each { |artist| artist_count[artist] += 1 }
    artist_count
  end
  
end