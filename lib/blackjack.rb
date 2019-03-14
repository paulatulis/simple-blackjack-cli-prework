def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
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
current_card_total = deal_card + deal_card
display_card_total(current_card_total)
return current_card_total
end

def hit?(current_card_total)
    prompt_user
  user_input = get_user_input
  while user_input != "h" && user_input != "s"
    invalid_command
    prompt_user
    user_input = get_user_input
  end
  if user_input == "h"
    current_card_total += deal_card
  end
  return current_card_total
end

def invalid_command
 "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome 
  current_card_total = initial_round
  while current_card_total < 21
  card_total = hit?(current_card_total)
  card_total = display_card_total(card_total)
end
if current_card_total > 21
end_game(card_total)
end
end
    
