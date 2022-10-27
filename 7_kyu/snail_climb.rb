def snail(column, day, night, total = 0)
  column - day <= 0 ? total + 1 : snail(column - day + night, day, night, total + 1)
end
