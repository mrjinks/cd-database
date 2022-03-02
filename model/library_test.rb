require "test/unit"
require_relative "album.rb"
require_relative "library.rb"

class TestLibrary < Test::Unit::TestCase
    def test_count
        l = Library.new
        assert_equal(0, l.count)
        l.add(Album.new("Pearl Jam", "Ten", 1993))
        assert_equal(1, l.count)
        l.add(Album.new("Pearl Jam", "Ten", 1993))
        l.add(Album.new("Pearl Jam", "Ten", 1993))
        l.add(Album.new("Pearl Jam", "Ten", 1993))
        assert_equal(4, l.count)
    end
end