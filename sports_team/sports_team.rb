class SportsTeam

attr_accessor :team_name, :players, :coach
  def initialize(team,players_array,coach, points = 0)
    @team_name = team
    @players = players_array
    @coach = coach
    @points = points
  end

  def team_name
    @team_name
  end

  def players
    @players
  end

  def coach
    @coach
  end

  def update_coach(new_coach)
    @coach = new_coach
  end

  def add_player(player)
    @players.push(player)
  end

  def check_player(player)
    for person in @players
        if(player == person)
          return "That player is in the roster"
        end
    end
    return "That player is not in the roster"
  end

  def change_points(result)
    if(result.downcase == "win")
      @points += 5
    else
      @points -= 5
    end
  end

  def points
    @points
  end

end
