class Warrior
  RANKS = ["Pushover", "Novice", "Fighter", "Warrior", "Veteran", "Sage", "Elite", "Conqueror", "Champion", "Master", "Greatest"]
  attr_accessor :rank, :level, :experience, :achievements
  
  def initialize
    @rank = RANKS[0]
    @level = 1
    @experience = 100
    @achievements = []
  end
  
  def training(event)
#     event array:
#     0 achievement
#     1 experience
#     2 level requirement
    
    return 'Not strong enough' unless @level >= event[2]
    
    @experience = @experience + event[1] > 10_000 ? 10_000 : @experience + event[1]    
    @achievements << event[0]
    level_up
    event[0]
  end
  
  def level_up
    @level = @experience / 100
    @rank = RANKS[(@level / 10).floor]
  end
  
  def battle(enemy)
    return 'Invalid level' if enemy < 1 || enemy > 100
    
    return "You've been defeated" if @level <= enemy - 5 && (@level / 10).floor < (enemy / 10).floor
    
    outcome = ''
    if @level < enemy
      @experience += 20 * (enemy - @level) ** 2
      outcome = 'An intense fight' 
    elsif @level > enemy + 1
      outcome = 'Easy fight'
    elsif @level >= enemy 
      @experience += @level == enemy ? 10 : 5
      outcome = 'A good fight'
    end
    level_up
    outcome
  end
end

# This kata was a lot of fun, thank you to the maker <3
