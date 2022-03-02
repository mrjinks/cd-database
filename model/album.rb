class Album
    attr_reader :artist, :title, :year
    def initialize(artist, title, year)
        @artist = artist
        @title = title
        @year = year
    end
    def to_s
        result = @artist + " \"" + @title + "\""
        if year != nil
            result += " [" + @year.to_s + "]"
        end
        result
    end
end
