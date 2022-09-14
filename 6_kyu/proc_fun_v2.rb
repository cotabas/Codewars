def array_procs(arr, *procz)
  return arr if procz.empty?
  
  answer = []
  proc_count = 0
  arr.length.times do |count|
    proc_count = 0 if procz.length - 1 < proc_count
    answer << arr.map(&procz[proc_count])[count]
    proc_count += 1
  end
  answer

end
