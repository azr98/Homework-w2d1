require('minitest/rg')
require('minitest/autorun')
require_relative('../sports_team')

class SportsTeamTest < MiniTest::Test

  def test_team_name
    g2 = SportsTeam.new('G2',['Wunder','Jankos','Caps','Perkz','Mikeyx'], 'Grabzz')
    name = g2.team_name
    assert_equal('G2', name)
  end

  def test_team_players
    g2 = SportsTeam.new('G2',['Wunder','Jankos','Caps','Perkz','Mikeyx'], 'Grabzz')
    players = g2.players
    assert_equal(['Wunder','Jankos','Caps','Perkz','Mikeyx'], players)
  end

  def test_team_coach
    g2 = SportsTeam.new('G2',['Wunder','Jankos','Caps','Perkz','Mikeyx'], 'Grabzz')
    coach = g2.coach
    assert_equal('Grabzz', coach)
  end

  def test_update_coach
    g2 = SportsTeam.new('G2',['Wunder','Jankos','Caps','Perkz','Mikeyx'], 'Grabzz')
    g2.coach = "Ocelote"
    assert_equal('Ocelote',g2.coach)
  end

  def test_add_player
    g2 = SportsTeam.new('G2',['Wunder','Jankos','Caps','Perkz','Mikeyx'], 'Grabzz')
    g2.add_player('Promisq')
    assert_equal(6,g2.players.size)
  end


  def test_player_in_roster
    g2 = SportsTeam.new('G2',['Wunder','Jankos','Caps','Perkz','Mikeyx'], 'Grabzz')
    test_player = g2.check_player('Caps')
    assert_equal('That player is in the roster',test_player )
  end

  def test_player_not_in_roster
    g2 = SportsTeam.new('G2',['Wunder','Jankos','Caps','Perkz','Mikeyx'], 'Grabzz')
    test_player = g2.check_player('Faker')
    assert_equal("That player is not in the roster", test_player)
  end

  def test_change_points_win
    g2 = SportsTeam.new('G2',['Wunder','Jankos','Caps','Perkz','Mikeyx'], 'Grabzz')
    g2.change_points('win')
    assert_equal(5,g2.points)
  end

  def test_change_points_loss
    g2 = SportsTeam.new('G2',['Wunder','Jankos','Caps','Perkz','Mikeyx'], 'Grabzz')
    g2.change_points('loss')
    assert_equal(-5,g2.points)
  end
end
