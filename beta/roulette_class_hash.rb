class RouletteBet
  
  def initialize(bet)
    @bet = bet
    @the_hash = {
      :total_bet => total_bet,
      :max_profit => total_bet * 35,
      :odds_of_max_profit => 0,
      :odds_of_winning => ((@bet.length.to_f / 37) * 100).round(2),
      :average_profit => 0
    }
  end
  
  def [](key)
   @the_hash[key] 
  end
  
  private
  
  def total_bet
    @bet.values.sum
  end

end
