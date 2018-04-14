def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return 1 + rand(11)
end

def display_card_total(num)
  puts "Your cards add up to #{num}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  x = deal_card + deal_card
  display_card_total(x)
  return x
end

def invalid_command
  puts "Please enter a valid command."
  prompt_user
end

def hit?(num)
  prompt_user
  answer = get_user_input
  total = num
  if answer != "s" && answer != "h"
    invalid_command
    prompt_user
  elsif answer == "s"
  return total
  elsif answer == "h"
  return deal_card + total
end
end


#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total = initial_round
  until total > 21
  total = hit?(total)
  display_card_total(total)
end
end_game(total)
end
    
