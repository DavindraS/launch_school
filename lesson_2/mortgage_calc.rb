Kernel.puts("What is the loan amount?")
loan_total = Kernel.gets().chomp().to_f()
p loan_total
Kernel.puts("What is the APR? Please state in percentage (ex. if it's 5% enter 5)")
apr = Kernel.gets().chomp().to_f()
p apr
Kernel.puts("What is the length of the loan in months? (ex. if 2 years enter 24)")
loan_length = Kernel.gets().chomp().to_i()
p loan_length
monthly_interest_rate = (apr / 12) / 100
p monthly_interest_rate
monthly_payment = loan_total * (monthly_interest_rate / (1 - (1 + monthly_interest_rate)**(-loan_length)))
p monthly_payment
Kernel.puts("Your monthly payment is going to be $#{monthly_payment}")
