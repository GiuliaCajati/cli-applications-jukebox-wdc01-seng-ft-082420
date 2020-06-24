# Add your code here
songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list (songs)
  (songs)each_with_index {|song, index|
  puts "#{index+1}. #{song}"
end 

def play (songs) 
  puts "Please enter a song name or number:"
  input = gets.chomp 
    if input.to_i >= 1 && input.to_i <= songs.length
     puts "Playing #{songs[input.to_i-1]}"
     # extract intergers from input, if it is greater than 1 and the smaller than the number of songs then -1 to get the index and pull the song 
    elsif songs.include?(input)
      puts "Playing #{songs.find{|song| song == input}}"
    else
      puts "Invalid input, please try again"
end 

def exit_jukebox 
  puts "Goodbye"
end 

def run 
  play 
  input = gets.strip 
  if input == "list" then 
    list 
    elsif
    input == "play" then 
    play 
    elsif 
    input == "exit" then 
    exit_jukebox
  end 
end 