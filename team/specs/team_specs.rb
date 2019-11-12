require('minitest/autorun')
require('minitest/rg')
require_relative('../team.rb')

class TestTeam < MiniTest::Test

  def test_team_name
    team = Team.new('Wildcats', ['Bob', 'John', 'David'], 'Coach Smith')
    assert_equal('Wildcats', team.name)
  end

  def test_team_players
    team = Team.new('Wildcats', ['Bob', 'John', 'David'], 'Coach Smith')
    assert_equal(['Bob', 'John', 'David'], team.players)
  end

  def test_team_coach
    team = Team.new('Wildcats', ['Bob', 'John', 'David'], 'Coach Smith')
    assert_equal('Coach Smith', team.coach)
  end

  def test_team_add_player
    team = Team.new('Wildcats', ['Bob', 'John', 'David'], 'Coach Smith')
    team.add_player('Jane')
    assert_equal('Jane', team.players.last())
  end

  def test_is_player_in_team__true
    team = Team.new('Wildcats', ['Bob', 'John', 'David'], 'Coach Smith')
    assert_equal(true, team.is_player_in_team('Bob'))
  end

  def test_is_player_in_team__false
    team = Team.new('Wildcats', ['Bob', 'John', 'David'], 'Coach Smith')
    assert_equal(false, team.is_player_in_team('Alan'))
  end

  def test_add_points_on_win__win
    team = Team.new('Wildcats', ['Bob', 'John', 'David'], 'Coach Smith')
p team.points
    team.add_points_on_win('win')
    p team.points
    assert_equal(10, team.points )
  end

  def test_add_points_on_win__lose
    team = Team.new('Wildcats', ['Bob', 'John', 'David'], 'Coach Smith')
    team.add_points_on_win('lose')
    assert_equal(0, team.points )
  end

end
