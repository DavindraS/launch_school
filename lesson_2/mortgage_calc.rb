def prompt(message)
  Kernel.puts("->#{message}")
end

def valid_number?(num)
  if !num.is_a?(Float) || num <= 0
    prompt("Please enter a valid number")
    false
  else
    true
  end
end

prompt("Welcome to Loan Calculator!")
prompt("What is the loan amount?")
prompt("Please enter as a the full dollar amount including cents, ex. 123.00")
loan_total = ''
loop do
  loan_total = Kernel.gets().chomp().to_f()
  break if valid_number?(loan_total)
end

prompt("What is the APR?")
prompt("Please state the number as a percent (ex. if it's 5% enter 5)")
apr = ''
loop do
  apr = Kernel.gets().chomp().to_f()
  break if valid_number?(apr)
end

prompt("What is the length of the loan in months?")
prompt("Ex. if length is 2 years enter 24")
loan_length = ''
loop do
  loan_length = Kernel.gets().chomp().to_f()
  break if valid_number?(loan_length)
end

monthly_interest_rate = ((apr / 12) / 100)
monthly_payment = (loan_total *
                  (monthly_interest_rate /
                  (1 - (1 + monthly_interest_rate)**-loan_length)))

prompt("Your monthly payment is going to be $#{monthly_payment.round(2)}.")
