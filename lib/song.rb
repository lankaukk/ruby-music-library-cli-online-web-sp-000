class Song 
  extend Concerns::Findable
  attr_accessor :name, :artist, :genre, :musicimporter, :musiclibrarycontroller
  
  @@all = []
  
  def initialize(name, artist=nil, genre=nil)
    @name = name 
    save
    self.artist=(artist) if artist != nil
    self.genre=(genre) if genre != nil
  end
  
  def save
    @@all << self
  end
  
  def self.create(song)
    song = self.new(song)
    song.save
    song
  end
  
  def self.all #class reader
    @@all
  end 
  
  def self.destroy_all
    @@all.clear
  end
  
  def artist=(artist)
    @artist = artist
    artist.add_song(self)
  end
  
  def genre=(genre)
    @genre = genre
    genre.add_song(self)
  end
  
  
end

