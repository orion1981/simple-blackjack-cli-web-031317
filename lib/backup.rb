def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
 rand(1..11)
end

def display_card_total(deal_card)
  puts "Your cards add up to #{deal_card}"
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
 sum_round = 0
 2.times do
   sum_round += deal_card
 end
 display_card_total(sum_round)
 return sum_round
end


def hit?(number)
  prompt_user
  foo = get_user_input 
  if foo == "h"
    deal_card
    return display_card_total
  elsif foo == "s"
    return display_card_total
  else
    puts invalid_command
    prompt_user
  end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  initial_round
  hit?
  display_card_total
  end_game
end
