class Song
  attr_accessor :song :artist :genre

  @@song_count = 1

  def initialize
    @@song_count += 1
  end

  def self.count
    @@song_count
  end

end
