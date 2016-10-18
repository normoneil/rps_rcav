class GameController < ApplicationController

  def user_plays_rock
    render("game/play_rock.html.erb")
  end

end
