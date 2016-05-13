
def welcome
  return puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  card_dealt = rand(1..11)
  return card_dealt
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
  return card_total
end

def prompt_user
  # code #prompt_user here
  return puts "Type 'h' to hit or 's' to stay"

end

def get_user_input
  # code #get_user_input here
  return user_input = gets.chomp

end

def end_game(card_total)
  # code #end_game here
  return puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  first_round = deal_card + deal_card
  display_card_total(first_round)

end

def hit?(card_total)
prompt_user
input = get_user_input
  if input == "s"
    card_total
  elsif input == "h"
    card_total += deal_card
  else
    invalid_command
  end
  return card_total
end
      

def invalid_command
  # code invalid_command here
  return puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  card_total = initial_round
  loop do 
    if card_total < 21
      card_total = hit?(card_total)
      display_card_total(card_total)
    elsif card_total > 21
      display_card_total(card_total)
      end
      return end_game(card_total)
    end
        
end

