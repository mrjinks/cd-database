class Library
    def initialize
        @cd_collection = Array.new
    end
    def add(album)
        @cd_collection.push(album)
    end
    def list
        puts "Collection: \n\n"
        @cd_collection.each_with_index do |album, index| 
            puts (index + 1).to_s + ". " + album.to_s
        end
        puts
    end
    def count
        @cd_collection.count
    end
end

