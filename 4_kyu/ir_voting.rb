def runoff(voters)  
  voters[0].size.times do
#     Send the remaining candidates
    hash = vote_hash(voters)
    
#     Check for a tie
    return nil if hash.size == 0

#     Check winner
    hash[0].each { |key, val| return key if val > (voters.size / 2) }
#     Choose the loser
    loser = hash[0].sort_by { |key, val| val }.first[1]
    
#     Remove losers and those that they tied with
    voters.each do |voter|
      hash[0].each do |key, val|
        voter.delete(key) if val == loser
      end  
    end    
  end  
end

#     Make a hash of each round with the given candidates and votes
def vote_hash(voters)
  hash = {}
  voters[0].size.times do |i|
    hash.store(i, Hash.new)
    
    voters[0].each do |cand|
      hash[i].store(cand, 0)
    end
    
    voters.each do |voter|
      hash[i][voter[i]] += 1
    end
  end
  hash
end
