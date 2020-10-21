class Artist 
  extend Concerns::Findable
  attr_accessor :name, :songs
  
  @@all = []
  
  def initialize(name)
    @name = name
    save
  end
  
  def save
    @@all << self
  end 
  
  def self.create(artist)
    artist = self.new(artist)
    artist.save
    artist
  end
  
  def self.all #class reader
    @@all
  end 
  
  def self.destroy_all
    @@all.clear
  end
  
  # def self.find_by_name(name)
  #   @@all.detect{|artist| artist.name == name}
  # end
end