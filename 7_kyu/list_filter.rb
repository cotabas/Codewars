def filter_list(l)
  l.delete_if { |x| x.is_a? String }
end
