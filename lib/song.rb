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
  
  def Song.new_by_name
    song = Song.new_by_name("The Middle")
    song.name
  end
  
  def Song.create_by_name
    song = Song.create_by_name("The Middle")
    song
    Song.all.include?(song)
  end
  
  def Song.find_by_name
  

end