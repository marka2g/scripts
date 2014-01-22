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


# 2863.15 * 96
# 3524: 274862.4 - (1812.26 * 96)
# 3525: 812.26 * 96
# 3526: 1812.26 * 96
# 3527: 274862.4 - 173976.96
# 3528: 100885.44000000003 - 40000
# 3529: 60885.44/8
# 3530: 7610.68/12
# 3531: 60885.44/2
# 3532: 30442.72/12
# 3533: 30442.72/96
# 3534: diff = 2914.59 - 1859.55
# 3535: monthly_diff = 2914.59 - 1859.55
# 3536: monthly_diff * 96
# 3537: yearly_diff = monthly_diff * 96
# 3538: yearly_diff.to_i
# 3539: yearly_diff.to_f
# 3540: yearly_diff.to_s
# 3541: diff_monthly_payment = 2914.59 - 1859.55
# 3542: diff_yearly_payment
# 3543: monthly_diff = 2914.59 - 1859.55
# 3544: yearly_diff = monthly_diff * 96
# 3545: diff = 2914.59 - 1859.55
# 3546: yearly_diff
# 3547: yearly_diff = term_difference
# 3548: term_difference = nil
# 3549: yearly_diff = term_difference
# 3550: yearly_diff = monthly_diff * 96
# 3551: term_diff = monthly_diff * 96