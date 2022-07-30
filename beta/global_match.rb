def js_like_ruby_regex s
  answer = []
  regex = /(\?+|!+)/
  while s.length > 0
    next_regex = (regex.match s).to_s
    answer << next_regex
    s.delete_prefix!(next_regex)
  end
  answer
end
