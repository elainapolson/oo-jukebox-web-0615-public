class Jukebox
attr_accessor :songs

 def initialize(songs)
   @songs = songs
 end

 def help
   puts "Here are the options available:"
   puts "input 'help' to return these options."
   puts "input 'exit' to close this program."
   puts "input 'list' to see the list of songs available."
   puts "input 'play' to play a song."
 end

 def list
   puts self.songs
 end

 def play_without_argument
   
   puts "What song would you like to play?"
   input = gets.strip
   if input.to_i.to_s == input
     puts "Now Playing: #{songs[input.to_i-1]}"
   elsif songs.include?(input)
     puts "Now Playing: #{input}"
   else
     puts "Invalid input!"
   end
 end

 def play(*song)
   if song == []
     play_without_argument
   elsif song.first.to_i.to_s == song.first
     puts "Now Playing: #{songs[song.first.to_i-1]}"
   elsif songs.include?(song.first)
     puts "Now Playing: #{song.first}"
   else
     puts "Invalid input!"
   end
 end
 
 def call
   user_input = nil
   while user_input != 'exit'
     user_input = gets.strip
     array = user_input.split(" ")
     if array.length > 1
       play(array[1..-1].join(" "))
     else
     case user_input
     when 'help'
       help
     when 'list'
       list
     when "play"
      play
     end
    end
   end
end


end