# define the gamecontroller class.  It must be as it shows up here!!
# this is the only time to use capital letters
# we created the GameController class, now we are inheriting attributes from the
# Application_Controller class, which already exists
# now we call the action from back in the routes, which is user_plays_rock

class GameController < ApplicationController

  def user_plays_rock
    render("game/play_rock.html.erb")
  end

end

# no go to views, where all our HTML will live.  create a subfolder called
# game, then create the erb file in it.
