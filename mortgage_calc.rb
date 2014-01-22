require 'pry'

print "Enter loan amount: "
principle = gets.chomp.to_i
print "Enter length of time in months: "
term_in_months = gets.chomp.to_i
print "Enter interest rate: "
interest_rate = gets.chomp.to_f/100
monthly_interest_rate = interest_rate/12

binding.pry

i = (1+monthly_interest_rate)**(12/12)-1
annuity = (1-(1/(1+i))**term_in_months)/i

monthly_payment = principle/annuity

puts "\n$%.2f per month" % [monthly_payment]


# i = interest_rate/100/12

# # M = monthly payment
# # P = principle of loan
# # i = interest rate *
# # n = number of payments

# M = 		P * [i(1+1)**n/(1 + i)**n]

