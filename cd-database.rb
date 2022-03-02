require_relative "model/library.rb"
require_relative "model/album.rb"

l = Library.new


# check if there is switch/case instruction
loop do 
    puts "Press A to add album, press L to list albums, Q to quit"
    cmd = gets.chomp.upcase
    if cmd == "A"
        puts "Adding new album"
    elsif cmd == "L"
        l.list
    elsif cmd == "Q"
        break
    else
        puts "Unknown command"
    end
end

