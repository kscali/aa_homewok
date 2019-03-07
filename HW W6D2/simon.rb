class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1 
    @game_over = false 
    @seq =[]
  end

  def play
    
    until game_over
      self.take_turn
    end  
      
    game_over_message
    reset_game
  
  end

  def take_turn
    
      show_sequence
      require_sequence
      
      unless @game_over
        @sequence_length += 1
        round_success_message
      end
  end

  def show_sequence
    add_random_color
    @seq.each do |color|
      puts color 
    end
  end

  def require_sequence
    puts "please enter a color: red, blue, green, yellow."
    @seq.each do |seq|
      user_input = get.chomp 
      if seq[0] != user_input 
        game_over_message
        @game = true 
        break
      end
    end
   
  end

  def add_random_color
    @seq << COLORS.shuffle.sample

  end

  def round_success_message
    puts "You won the round!"

  end

  def game_over_message
    puts "Sorry. You lost!"

  end

  def reset_game
    @sequence_length = 1 
    @game_over = false 
    @seq = []
  end
end
