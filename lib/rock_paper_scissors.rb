class RockPaperScissors

  # Exceptions this class can raise:
  class NoSuchStrategyError < StandardError ; end

  def self.winner(player1, player2)
    p1 = player1.last 
    p2 = player2.last
    unless ['R','P','S'].include?(p1) && ['R','P','S'].include?(p2)
      raise NoSuchStrategyError.new("Strategy must be one of R,P,S")  
    end
    if (p1 == 'R' && p2 == 'P') || (p1 == 'S' && p2 == 'R') || (p1 == 'P' && p2 == 'S')
      return player2
    else
      return player1
    end
  end

  def self.tournament_winner(tournament)
    if tournament.first.first.is_a?(String) # base case is arr of arr of str
      return winner(tournament.first, tournament.last) # base case
    else
      winner(tournament_winner(tournament.first), tournament_winner(tournament.last))
    end
  end

end
