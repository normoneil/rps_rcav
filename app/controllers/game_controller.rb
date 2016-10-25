# define the gamecontroller class.  It must be as it shows up here!!
# this is the only time to use capital letters
# we created the GameController class, now we are inheriting attributes from the
# Application_Controller class, which already exists
# now we call the action from back in the routes, which is user_plays_rock

class GameController < ApplicationController

  def game_turn(user_move, computer_move)
    if user_move == computer_move
      result = "tied"
    elsif user_move == "paper" && computer_move == "rock"
      result = "won"
    elsif user_move == "paper" && computer_move == "scissors"
      result = "lost"
    elsif user_move == "scissors" && computer_move == "rock"
      result = "lost"
    elsif user_move == "scissors" && computer_move == "paper"
      result = "won"
    elsif user_move == "rock" && computer_move == "paper"
      result = "lost"
    elsif user_move == "rock" && computer_move == "scissors"
      result = "won"
    end
      return result
  end

  def user_plays_rock
    @user_move = "rock"
    @computer_move = ["rock", "paper", "scissors"].sample
    @game_result = game_turn(@user_move, @computer_move)

    render("game/play_rock.html.erb")
  end

  def user_plays_paper
    @play = rand(100)
    render("game/play_paper.html.erb")
  end

  def user_plays_scissors
    @play = rand(100)
    render("game/play_scissors.html.erb")
  end

end

# now go to views, where all our HTML will live.  create a subfolder called
# game, then create the erb file in it.
