require_relative "model/library.rb"
require_relative "model/album.rb"

l = Library.new
a = Album.new("Janusz Laskowski", "Kolorowe jarmarki", 1970)
l.add(a)
b = Album.new("Pet Shop Boys", "Go west", 1995)
l.add(b)
c = Album.new("Pearl Jam", "Ten", 1993)
l.add(c)
l.add(Album.new("Metallica", "Master of puppets", 1985))

l.list