class Album
    attr_reader :artist, :title, :year
    def initialize(artist, title, year)
        @artist = artist
        @title = title
        @year = year
    end
    def to_s
        @artist + " \"" + @title + "\" (" + @year.to_s + ")"
    end
end
