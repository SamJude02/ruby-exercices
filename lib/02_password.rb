def signup
  puts "Crée ton mot de passe :"
  print "> "
  password = gets.chomp
  return password
end

def login(password)
  puts "Connecte-toi en entrant ton mot de passe :"
  print "> "
  input = gets.chomp

  while input != password
    puts "Mauvais mot de passe. Essaie encore :"
    print "> "
    input = gets.chomp
  end

  puts "Mot de passe correct ! Accès autorisé ✅"
end

def welcome_screen
  puts "-" * 40
  puts "Bienvenue dans ta zone secrète 😎"
  puts "Tu es maintenant connecté(e) à la base secrète."
  puts "-" * 40
end

def perform
  password = signup
  login(password)
  welcome_screen
end

perform
