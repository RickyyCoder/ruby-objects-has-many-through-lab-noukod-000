class Genre 
  attr_accessor :name, :artist, :song
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all 
    @@all
  end

   def songs 
     Song.all.each{ |each_song| each_song.genre == self }
   end
   
   def artists
     Song.all.map{ |each_genre| each_genre.artist }
   end
   
end