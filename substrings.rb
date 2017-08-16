dictionary = {"i"=>0, "test" => 0, "it" => 0, "so" => 0, "such" => 0, "how"=>0, "does"=>0, "long" => 0, "go" => 0, "is"=>0}


def substrings(sentence,dictionary)

	sentence = sentence.downcase.split(" ")
    
	dictionary.each do |key,value|
		sentence.each do |word|
			if word.include? key
				dictionary[key]+=1
			end #if statement
        end #for loop
	end #each loop

return dictionary

end #method


puts substrings("testing it how does it work such bad",dictionary)