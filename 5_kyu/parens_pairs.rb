def valid_parentheses(string)
  start = 101
  while start == 101
    start = 102
    string.chars.each_with_index do |char, dex|
      if char == '('
        start = dex
      elsif char == ')' && start != 102
        string.slice!(start)
        string.slice!(dex - 1)
        start = 101
        break
      end
    end
  end
  string.match(/[()]/).nil?
end
