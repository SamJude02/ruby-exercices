def say_hello(first_name)
  puts "Bonjour, #{first_name} !"
end

def ask_first_name
  puts "Quel est ton prénom ?"
  print "> "
  return gets.chomp
end

def perform
  first_name = ask_first_name
  say_hello(first_name)
end

perform

def half_pyramid
  puts "Salut, bienvenue dans ma demi-pyramide ! Combien d'étages veux-tu ?"
  print "> "
  height = gets.chomp.to_i

  puts "Voici la pyramide :"
  height.times do |i|
    puts "#" * (i + 1)
  end
end

def full_pyramid
  puts "Combien d'étages veux-tu pour la pyramide complète ?"
  print "> "
  height = gets.chomp.to_i

  puts "Voici la pyramide :"
  height.times do |i|
    spaces = " " * (height - i - 1)
    hashes = "#" * (2 * i + 1)
    puts spaces + hashes
  end
end

def wtf_pyramid
  puts "Bienvenue dans la pyramide WTF ! Donne-moi un nombre impair d'étages :"
  print "> "
  height = gets.chomp.to_i

  if height.even?
    puts "Il faut un nombre impair !"
    return
  end

  mid = height / 2
  (0..mid).each do |i|
    spaces = " " * (mid - i)
    hashes = "#" * (2 * i + 1)
    puts spaces + hashes
  end

  (mid - 1).downto(0) do |i|
    spaces = " " * (mid - i)
    hashes = "#" * (2 * i + 1)
    puts spaces + hashes
  end
end

def perform
  puts "Quelle pyramide veux-tu ?"
  puts "1 - Half"
  puts "2 - Full"
  puts "3 - WTF"
  print "> "
  choice = gets.chomp.to_i

  case choice
  when 1
    half_pyramid
  when 2
    full_pyramid
  when 3
    wtf_pyramid
  else
    puts "Choix invalide"
  end
end

perform

