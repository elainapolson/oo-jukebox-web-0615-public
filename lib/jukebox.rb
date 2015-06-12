class Jukebox

  def initialize(songs)
    @songs = songs
  end

  def call
    help
    list
    play
  end

  def help
    puts "I accept help, play, list, and exit"
  end

  def list
    @songs.each.with_index(1) do |song, index|
      puts "#{index}. #{song}"
    end 
  end 


  def play(song = "")
    if song == ""
      puts "Now Playing: Phoenix - 1901"
    elsif @songs.include?(song)
      puts "Now Playing: #{song}"
    else
      puts "Now Playing: #{@songs[song.to_i-1]}"
    end  
  end 

  def exit_jukebox
    puts "Goodbye"
  end



  # def run(songs)
  #   puts "Please enter a command:"
  #   command = gets.strip.downcase
    
  #     case command
  #     when "help"
  #       help
  #     when "list"
  #       list(songs)
  #     when "play"
  #       play(songs)
  #     when "exit"    
  #       exit_jukebox
  #     end
  # end
end