require "test/unit"
require_relative "album.rb"

class TestAlbum < Test::Unit::TestCase
    def test_to_s
       a = Album.new("Ice-T", "O.G.", 1992)
       assert_equal("Ice-T \"O.G.\" [1992]", a.to_s)
       b = Album.new("Ice Cube", "Compton Star", nil)
       assert_equal("Ice Cube \"Compton Star\"", b.to_s)
    end
end