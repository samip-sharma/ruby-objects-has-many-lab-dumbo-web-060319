require_relative './song.rb'
require "pry"
class Artist
attr_accessor :name
  def initialize(name)
    @name = name
    @songs=[]
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
    song.artist=self
  end

  def add_song_by_name(name)
    song_made=Song.new(name)
    @songs << song_made
    song_made.artist= self
  end

  def self.song_count
    Song.all.length
  end
end
