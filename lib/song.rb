
class Song
  
  attr_accessor :name, :artist_name
  
  @@all = []
  
  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  def initialize(name = nil, artist_name = nil)
    @name = name
    @artist_name = artist_name
  end
  
  def self.create
    @@all << self.new
    @@all[-1]
  end
  
  def self.new_by_name(name)
    @name = name
    @@all << self.new(@name)
    self.all.detect{|song| song.name == name}
  end
  
  def self.create_by_name(name)
  	@name = name
	  @@all << self.new(@name)
  	self.all.detect{|song| song.name == name}
  end 
  
  def self.find_by_name(name)
  	@name = name
  	self.all.detect{|song| song.name == name}
  end
  
  
  
end
