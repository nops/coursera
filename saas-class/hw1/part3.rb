def combine_anagrams(words) 
	# <YOUR CODE HERE>
	return words.group_by {|w| w.downcase.split('').sort.join}.values
end