class Genre 
  extend Concerns::Findable
  attr_accessor :name, :songs
  
  @@all = []
  
  def initialize(name)
    @name = name
    save
    @songs = []
  end
  
  def save
    @@all << self
  end
  
  def self.create(genre)
    genre = self.new(genre)
    genre.save
    genre
  end
  
  def self.all #class reader
    @@all
  end 
  
  def self.destroy_all
    @@all.clear
  end
end