def dice_result
  rand(1..6)
end

def game_turn(position)
  roll = dice_result
  if roll == 5 || roll == 6
    position += 1
  elsif roll == 1
    position -= 1 unless position == 0
  end
  [position, roll]
end

def draw_stairs(position)
  system("clear") || system("cls")
  puts "Tour en cours... Position actuelle : marche #{position}"
  10.downto(0) do |i|
    if i == position
      puts "|  😀  | <- toi"
    else
      puts "|      |"
    end
  end
  puts "--------"
  sleep(0.3)
end

def play_game_with_animation
  position = 0
  turns = 0
  while position < 10
    position, roll = game_turn(position)
    draw_stairs(position)
    puts "Dé: #{roll}"
    sleep(0.5)
    turns += 1
  end
  puts "\n🎉 Bravo ! Tu as atteint la 10e marche en #{turns} tours ! 🎉"
end

def play_game_without_display
  position = 0
  turns = 0
  while position < 10
    position, _ = game_turn(position)
    turns += 1
  end
  turns
end

def simulate_100_games
  total_turns = 0
  100.times do
    total_turns += play_game_without_display
  end
  average_turns = total_turns / 100.0
  puts "\n📊 Moyenne de tours après 100 parties : #{average_turns.round(2)}"
end

def menu
  puts "Bienvenue dans le jeu de la montée des marches 🪜 !"
  puts "Choisis ton mode :"
  puts "1 - 🎮 Animation"
  puts "2 - 📊 Simulation 100 parties"
  print "> "
  choice = gets.chomp.to_i

  if choice == 1
    play_game_with_animation
  elsif choice == 2
    simulate_100_games
  else
    puts "Choix invalide. Relance le programme et choisis 1 ou 2."
  end
end

menu
