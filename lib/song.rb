class Song

attr_accessor :name, :artist

def initialize (song)
  @song = song

@@all = []
@@all << self

end
