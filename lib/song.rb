class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  def Song.create
    Song.all.include?(song)
  end
  
  def Song.new_by_name(name)
    song = Song.new_by_name
    song.name
  end
  
  def Song.create_by_name(song)
    song = Song.create_by_name
    song
    Song.all.include?(song)
  end
  
  def Song.find_by_name(name)
    the_middle = Song.create_by_name("The Middle")
    Song.find_by_name("The Middle")
    
  end
  

end