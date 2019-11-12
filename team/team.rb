class Team

  #get and set
  attr_accessor :name, :players, :coach, :points

  def initialize(name, players, coach)
    @name = name
    @players = players
    @coach = coach
    @points = 0
  end

  def add_player(new_player)
    @players.push(new_player)
  end

  def is_player_in_team(name)
    for x in @players
      if (x == name)
       return true
      else
      return false
      end
    end
  end

  def add_points_on_win(game_result)
    if (game_result == 'win')
      @points += 10
    else
      return
    end
  end


end
