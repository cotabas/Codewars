def permutations(string)
  answer = []
  string.split('').permutation(string.length).uniq.each { |perm| answer << perm.join }
  answer
end

# &!!! of course.. pass the block, so the one liner could be each(&:join)
# though everyone used .map(&:join) there might be reason each wouldn't work
# I don't see why though, everyone seems to use map more than each on CW
# further reading seems to indicate that I could use map inline like I tried with each
# .map { |perm| perm.join }.uniq
