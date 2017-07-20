# An artist should have many songs and a song should belong to an artist.

class Artist

  attr_accessor :name, :songs

  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
    song.artist = self
    @@song_count += 1
  end

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    song.artist = self
    @songs << song
    @@song_count += 1
  end

  def self.song_count
    @@song_count
  end

end

#.song_count
      # is a class method that returns the total number of songs associated to all existing artists (FAILED - 1)
      # uses the class variable, @@song_count (FAILED - 2)