def stock_picker(days)
	max = days.max
	min = days.min 

	max_day = days.index(max)
	min_day = days.index(min)
	  
	best_days = [max_day+1,min_day+1]

	return best_days

end

puts stock_picker([15,3,6,7,9,4,19,2])