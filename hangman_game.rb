require 'pry'

class Hangman
  def initialize
    answer = "program" #use .sample when pulling from a larger list"
    @answer = answer.split("")
    @tries = 6
    @user_has_won = false
    @letters_guessed = []
    @show_board = []
   end

   def word_to_guess     
     puts @word_to_guess
     @word_to_guess = []
     @word_to_guess.length(answer)
   end

binding.pry

   def check_guess guess
    @answer.each do | letter | 
      if guess == letter
        puts "Good job!"
      elsif
        puts "Guess again!"
        @tries -= 1
      end
      #puts letters_guessed
    end 
   end

   # def letters_guessed
   # end

   def show_board
    @answer.each do | letter |
      if letter == guess
        return letter
      else
        return "_"
      end
    end
  end

  def over?
    @user_has_won || @tries.zero?
  end
end

game = Hangman.new

#binding.pry

class User
  def get_guess
    print "Guess a Letter!: "
    gets.chomp.downcase
  end
end

user = User.new

until game.over?
  guess = user.get_guess
  result = game.check_guess guess
  puts "Your guess was #{guess}"
end

 def won?
  @tries.zero? == false && show_board.include?("_") == false
 end

def lost?
  @tries.zero? == true
end

if game.won?
  puts "Way to go!"
else game.lost?
  puts "You're a disappointment"
end