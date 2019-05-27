class Game

  def initialize(arg1, arg2)
    @arg1 = arg1
    @arg2 = arg2
  end

  def play
    if @arg1 == @arg2
      return "draw"
    elsif @arg1 == "rock" && @arg2 == "scissors"
      return "player1 wins!"
    elsif @arg1 == "rock" && @arg2 == "paper"
      return "player2 wins!"
    elsif @arg1 == "scissors" && @arg2 == "paper"
      return "player1 wins!"
    elsif @arg1 == "scissors" && @arg2 == "rock"
      return "player2 wins!"
    elsif @arg1 == "paper" && @arg2 == "rock"
      return "player1 wins!"
    elsif @arg1 == "paper" && @arg2 == "scissors"
      return "player2 wins!"
    end
  end

end
