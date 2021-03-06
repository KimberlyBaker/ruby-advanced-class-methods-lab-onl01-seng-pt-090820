class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
 def self.create
    song = self.new
    song.save
    song
  end

  def Song.new_by_name(name)
    song = self.new
    song.name = name
    song
  end

  def Song.create_by_name(name)
    song = self.create
    song.name = name
    song
  end

  def Song.find_by_name(name)
    self.all.detect { |song| song.name == name }
  end

  def Song.find_or_create_by_name(name)
    self.find_by_name(name) || self.create_by_name(name)
  end

  def Song.alphabetical
    self.all.sort_by { |song| song.name }
  end

  def Song.new_from_filename(filename)
    song_array = filename.split(" - ")
    name = song_array[1][0..-5]
    artist_name = song_array[0]

    song = self.new
    song.name = name
    song.artist_name = artist_name
    song
  end

  def Song.create_from_filename(filename)
    song_array = filename.split(" - ")
    name = song_array[1][0..-5]
    artist_name = song_array[0]

    song = self.create
    song.name = name
    song.artist_name = artist_name
    song
  end

  def Song.destroy_all
    self.all.clear
  end

end