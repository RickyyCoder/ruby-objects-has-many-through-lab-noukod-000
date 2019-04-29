class Artist 
  attr_accessor :name, :songs, :genre
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_song(name, genre)
   song = Song.new(name, self, genre)
   self.songs.last
  end
  
  def songs 
    Song.all.select { |each_song| each_song.artist == self }
  end
  
  def genres 
    songs.collect{ |song_genre| song_genre.genre }
  end
  
end

