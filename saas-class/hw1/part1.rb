def palindrome?(string)
	# your code here
	return string.downcase.gsub(/\W/, '') == string.downcase.gsub(/\W/, '').reverse
end

def count_words(string)
	# your code here
	count = Hash.new(0)
	string.downcase.gsub(/\W/, ' ').split.each { |h| count[h] += 1 }
	return count
end