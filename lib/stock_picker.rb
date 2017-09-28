stock_data = [15,3,6,7,9,4,19,2,1,16,20,19,25,1]

def stock_picker(days)

	profit = [0,1,2]
	profit_test = 0
	min_day = 9999999999
	

	for i in (0..days.size-1) do
		
	   for j in (0..days.size-1) do
	   	

	   	profit_test = days[j]-days[i]

		   	if profit_test > profit[0] && i<j  # must buy before you can sell
                buy = i
                sell = j
		   		profit = [profit_test, buy, sell]

		   	end # if statement

	   end  # for j

	end # for i

	return profit

end # method

print "Profit: #{stock_picker(stock_data)[0]}, Buy on Day: #{stock_picker(stock_data)[1]} , Sell on Day: #{stock_picker(stock_data)[2]} \n"