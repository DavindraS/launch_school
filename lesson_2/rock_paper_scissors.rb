VALID_CHOICES = %w(rock paper scissors lizard spock)
SHORTHAND_CHOICES = { 'r': 'rock', 'p': 'paper',
                      'sc': 'scissors', 'l': 'lizard',
                      'sp': 'spock' }
WINNING_MOVES = { rock: ['scissors', 'lizard'],
                  paper: ['rock', 'spock'],
                  scissors: ['paper', 'lizard'],
                  lizard: ['spock', 'paper'],
                  spock: ['scissors', 'rock'] }

def prompt(message)
  Kernel.puts("=> #{message}")
end

def win?(first, second)
  WINNING_MOVES[first.to_sym].include?(second)
end

def determine_winner(player, computer)
  if win?(player, computer)
    'player'
  elsif win?(computer, player)
    'computer'
  else
    'tie'
  end
end

def diplay_results(winner, player, computer)
  prompt("Player:#{player} Computer:#{computer}")
  if winner == 'player'
    prompt("You won!")
  elsif winner == 'computer'
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

loop do
  choice = ''
  player_score = 0
  computer_score = 0
  loop do
    loop do
      prompt("Choose one: #{VALID_CHOICES.join(', ')}")
      choice = Kernel.gets().chomp()

      if SHORTHAND_CHOICES.key?(choice.to_sym)
        choice = SHORTHAND_CHOICES[choice.to_sym]
        break
      elsif VALID_CHOICES.include?(choice)
        break
      else
        prompt("That's not a valid choice.")
      end
    end

    computer_choice = VALID_CHOICES.sample()

    prompt("You chose: #{choice}; Computer chose: #{computer_choice}")

    winner = determine_winner(choice, computer_choice)

    if winner == 'player'
      player_score += 1
    elsif winner == 'computer'
      computer_score += 1
    end

    diplay_results(winner, player_score, computer_score)

    break if player_score == 5 || computer_score == 5
  end
  prompt("Game Over!")
  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for playing. Goodbye!")
