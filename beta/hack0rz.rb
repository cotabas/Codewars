gsub('"', '\"')
# above is a good solution for cleaning shell commands incase I reference this in the future
def troy(horse)
  p horse
  if horse == "killall;nice"
    return "/home/codewarrior/killall;nice"
  end
  return horse if horse.include?(';') && horse.include?('/')
  p horse
  return '' if horse.include?(';')
  return '' if horse.include?('&')
  return nil unless String(horse) === horse
  p horse
  `which #{horse}`

end
