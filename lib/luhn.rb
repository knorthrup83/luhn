module Luhn
	def self.is_valid?(number)
		digit = number.to_s.reverse!
		sum = 0
		index = 0
		digit.each_char do |c|
			n = c.to_i			
			n *= 2 if index % 2 == 1
			n -= 9 if n >= 10
			sum += n
			index += 1
		end
		sum % 10 == 0
	end
end