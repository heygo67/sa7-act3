class Game
    def initialize
      @rooms = { "Room 1" => 5, "Room 2" => 10, "Room 3" => 15 }
      @total_points = 0
    end
  
    def play
      puts "Welcome to the game!"
      loop do
        display_menu
        choice = gets.chomp.downcase
        break if choice == 'exit'
        enter_room(choice.to_i)
      end
      puts "Total points collected: #{@total_points}"
    end
  
    private
  
    def display_menu
      puts "Rooms available:"
      @rooms.each_with_index { |(room, _), index| puts "#{index + 1}. #{room}" }
      puts "Enter the number of the room you want to enter (1, 2, or 3) or type 'exit' to end the game:"
    end
  
    def enter_room(room_number)
      room_names = @rooms.keys
      if room_number.between?(1, 3)
        room_name = room_names[room_number - 1]
        points = @rooms[room_name]
        @total_points += points
        puts "Entering #{room_name}... You've earned #{points} points. Total points: #{@total_points}"
      else
        puts "Invalid room number. Please try again."
      end
    end
  end
  
  Game.new.play
  