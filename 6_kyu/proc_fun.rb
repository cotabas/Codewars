def array_procs(arr, *procz)
  procz.empty? ? arr : procz.map { |pro| arr = arr.map(&pro) }[-1]
end
