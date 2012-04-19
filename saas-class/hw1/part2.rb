class WrongNumberOfPlayersError < StandardError ; end 
class NoSuchStrategyError < StandardError ; end

def rps_game_winner(game)
  raise WrongNumberOfPlayersError unless game.length == 2
  # your code here
  raise NoSuchStrategyError unless (game.transpose[1].uniq.map {|l| l.upcase} - ["P", "S", "R"]) == []
  
  if game[0][1] == game[1][1]
    return game[0]
  elsif game[0][1] == "R"
    if game[1][1] == "S"
      return game[0]
    else
      return game[1]
    end
  elsif game[0][1] == "S"
    if game[1][1] == "R"
      return game[1]
    else
      return game[0]
    end
  else
    if game[1][1] == "S"
      return game[1]
    else
      return game[0]
    end
  end
end

def rps_tournament_winner(game)
  if game.flatten.length == 4
    return rps_game_winner(game)
  end
  if game.flatten.length == 16
    winners = game.flatten(2)
  else
    winners = game.flatten(4)  
  end

  while winners.length > 1
    winners = winners.each_slice(2).map { |w| rps_game_winner(w) }
  end
  return winners[0]
end