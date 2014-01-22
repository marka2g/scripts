class Mortgage

	def initialize(options = {})
		@principle = options[:principle]
		@term_in_months = options[:term_in_months]
		@annual_interest_rate = options[:annual_interest_rate]
	end

	def calculate
		monthly_payment = @principle/annuity
		puts "\n$%.2f per month" % [monthly_payment]
	end

	def annuity
		(1-(1/(1+interest_rate))**@term_in_months)/interest_rate
	end

	def monthly_interest_rate 
		(@annual_interest_rate/100)/12
	end

	def interest_rate
		(1+ monthly_interest_rate)**(12/12)-1
	end

end