require_relative "model/library.rb"
require_relative "model/album.rb"

l = Library.new
l.add(Album.new("Pearl Jam", "Ten", 1993))

# check if there is switch/case instruction
def read_user_input(msg)
    input = ""
    while input == ""
        puts msg
        input = gets.chomp
    end
    return input
end

def read_integer(msg)
    puts msg
    input = gets.chomp
    if input == ""
        return nil
    end
    return input.to_i
end


def add(library)
    puts "Adding new album:\n"
    artist = read_user_input("Type in artist:")
    title = read_user_input("Type in title:")
    year = read_integer("Type in year (press ENTER for no year):")
    album = Album.new(artist, title, year)
    library.add(album)
end

def delete(library)
    index = read_integer("Type in number of album to delete:")  
    if index != nil and index > 0 and index <= library.count
        library.delete(index - 1)
    end
end

loop do 
    puts "Press A to add album, press L to list albums, D to delete, Q to quit"
    cmd = gets.chomp.upcase
    if cmd == "A"
        add(l)
    elsif cmd == "L"
        l.list
    elsif cmd == "Q"
        break
    elsif cmd == "D"
        delete(l)
    else
        puts "Unknown command"
    end
end



