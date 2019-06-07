require 'pry'
class Song
  @@count = 0 #num of songs in Songs class
  @@genre_count = {} #hash with keys of genre pointing to totals
  @@artist_count = {} #hash with keys of artists pointing to totals
  @@genres = []
  @@artists = []

  attr_accessor :name, :artist, :genre
    #Song.artists will show
    # => ["Jay-Z", "Drake", "Beyonce"]

    # Song.genres will show
    # => ["Rap", "Pop"]

    def initialize(name, artist, genre)
      @name = name
      @artist = artist
      @genre = genre
      @@count+=1
      @@genres << @genre
      @@artists << @artist
    end

  def self.count
    @@count
    # => 30
  end

  def self.genre_count
      @@genres.each do |k|

      if @@genre_count.empty?
         @@genre_count[k] = 0
         @@genre_count[k] +=1

      elsif @@genre_count.has_key?(k)
        @@genre_count[k] +=1

      else
        @@genre_count[k] = 0
        @@genre_count[k] +=1

    # example{"rap" => 5, "rock" => 1, "country" => 3}
      end

    end
@@genre_count
end

def self.artist_count
  @@artists.each do |k|

    if @@artist_count.empty?
       @@artist_count[k] = 0
       @@artist_count[k] +=1

    elsif @@artist_count.has_key?(k)
      @@artist_count[k] +=1

    else
      @@artist_count[k] = 0
      @@artist_count[k] +=1
  # example{"rap" => 5, "rock" => 1, "country" => 3}
    end
  end
@@artist_count
end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

end
