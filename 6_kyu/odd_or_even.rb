def find_outlier(integers)
  integers.select(&:odd?).length == 1 ? integers.select(&:odd?)[0] : integers.select(&:even?)[0]
end
