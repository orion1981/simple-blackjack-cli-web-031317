def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(number)
  puts "Your cards add up to #{number}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(number)
  puts "Sorry, you hit #{number}. Thanks for playing!"
end

def initial_round
  card_total = (deal_card + deal_card)
  display_card_total(card_total)
  return card_total
end

def hit?(number)
  cur_hand_total = number
  prompt_user
  call = get_user_input

  if call == "s"
    return cur_hand_total
  elsif call == "h"
    cur_hand_total += deal_card
    return cur_hand_total
  end
end

def runner
  welcome
  cur_hand_total = initial_round

  until cur_hand_total > 21
    cur_hand_total = hit?(cur_hand_total)
    display_card_total(cur_hand_total)
  end

  end_game(cur_hand_total)
end
