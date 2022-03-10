require "test/unit"
require_relative "album.rb"
require_relative "library.rb"

class TestLibrary < Test::Unit::TestCase
    # def test_count
    #     l = Library.new
    #     assert_equal(0, l.count)
    #     l.add(Album.new("Pearl Jam", "Ten", 1993))
    #     assert_equal(1, l.count)
    #     l.add(Album.new("Pearl Jam", "Ten", 1993))
    #     l.add(Album.new("Pearl Jam", "Ten", 1993))
    #     l.add(Album.new("Pearl Jam", "Ten", 1993))
    #     assert_equal(4, l.count)
    # end
    def test_delete
        a = Library.new
        a.add(Album.new("Pearl Jam", "Ten", 1993))
        a.add(Album.new("Liroy", "Scyzoryk", 1994))
        a.add(Album.new("Peja", "Best of", nil))
        assert_equal(3, a.count)
        a.delete(0)
        assert_equal(2, a.count)

        a = Library.new
        a.add(Album.new("Pearl Jam", "Ten", 1993))
        a.add(Album.new("Liroy", "Scyzoryk", 1994))
        a.add(Album.new("Peja", "Best of", nil))
        assert_equal(3, a.count)
        a.delete(1)
        assert_equal(2, a.count)

        a = Library.new
        a.add(Album.new("Pearl Jam", "Ten", 1993))
        a.add(Album.new("Liroy", "Scyzoryk", 1994))
        a.add(Album.new("Peja", "Best of", nil))
        assert_equal(3, a.count)
        a.delete(2)
        assert_equal(2, a.count)

        a = Library.new
        a.add(Album.new("Pearl Jam", "Ten", 1993))
        a.add(Album.new("Liroy", "Scyzoryk", 1994))
        a.add(Album.new("Peja", "Best of", nil))
        assert_equal(3, a.count)
        a.delete(3)
        assert_equal(3, a.count)

    end
end