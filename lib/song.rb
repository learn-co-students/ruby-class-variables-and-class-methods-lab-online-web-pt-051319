class Song
  @@count = 0
  @@artists = []
  @@genres = []

  attr_accessor :name, :artist, :genre
  
  def initialize(name, artist, genre)
    @name = name
    
    @@count += 1
    
    @genre = genre
    @@genres << @genre
    
    @artist = artist
    @@artists << @artist
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
    @@genre_count = {}
    
    @@genres.each do |genre|
      @@genre_count[genre] ||= 0
      @@genre_count[genre] += 1
    end
    
    @@genre_count
  end
  
  def self.artist_count
    @@artist_count = {}
    
    @@artists.each do |artist|
      @@artist_count[artist] ||= 0
      @@artist_count[artist] += 1
    end
    
    @@artist_count
  end
  end