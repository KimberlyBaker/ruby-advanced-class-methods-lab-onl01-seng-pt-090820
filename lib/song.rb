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
    song = Song.new_by_name
    song.name
  end
  
  def Song.create_by_name
    song = Song.create_by_name
    song
    Song.all.include?(song)
  end
  
  def self.find_by_name
    the_middle = Song.create_by_name(song)
    Song.find_by_name(song)
  end
  
  def self.find_or_create_by_name
    
  end
  
  def self.alphabetical
    self.all.sort_by { |song| song.name }
  end

end