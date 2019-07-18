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

def diplay_results(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

loop do
  choice = ''
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

  diplay_results(choice, computer_choice)

  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for playing. Goodbye!")
