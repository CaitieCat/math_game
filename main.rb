require_relative './player'
require_relative './question'

puts "First player, please enter your name: "

first_name = gets.chomp

puts "Second player, please enter your name: "

second_name = gets.chomp

player_one = Player.new(first_name)
player_two = Player.new(second_name)
players = [player_one, player_two]

puts "Welcome to the math_game " + player_one.name + " and " + player_two.name



loop do
    for each in players
        question = Question.new
        puts each.name + " what does " + question.first_num.to_s + " + " + question.second_num.to_s + " equal?"
        response = gets.chomp
        if question.sum != response.to_i
            puts "Seriously? No!"
            each.number_of_lives = each.number_of_lives - 1
        end
        puts player_one.name + ": " + player_one.number_of_lives.to_s + "/3 " + player_two.name + ": " + player_two.number_of_lives.to_s + "/3"
        if player_one.number_of_lives == 0 
            break
        elsif player_two.number_of_lives == 0
            break
        end
        puts "----- New Turn -----"
    end
    if player_one.number_of_lives == 0 
        winner = player_two.name
        remaining_lives = player_two.number_of_lives
        puts "Congratulations " + winner + "! You finished with " + remaining_lives.to_s + "/3 lives" 
        break
    elsif player_two.number_of_lives == 0
        winner = player_one.name
        remaining_lives = player_one.number_of_lives
        puts "Congratulations " + winner + "! You finished with " + remaining_lives.to_s + "/3 lives"
        break
    end
end
