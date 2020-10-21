class Song 
  extend Concerns::Findable
  attr_accessor :name
  
  @@all = []
  
  def initialize(name, )
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
end

