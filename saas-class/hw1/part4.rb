class Dessert
	def initialize(name, calories)
		# YOUR CODE HERE
		@name = name
		@calories = calories
	end
  
	def name
		return @name
	end
	
	def calories
		return @calories
	end

	def name=(name)
		@name = name
	end

	def calories=(calories)
		@calories = calories
	end
  
	def healthy?
		# YOUR CODE HERE
		if @calories < 200
			return true
		else
			return false
		end
	end

	def delicious?
		# YOUR CODE HERE
		return true
	end
end

class JellyBean < Dessert
	def initialize(name, calories, flavor)
		# YOUR CODE HERE
		super(name, calories)
		@flavor = flavor
	end

	def flavor
		return @flavor
	end

	def flavor=(flavor)
		@flavor = flavor
	end

	def delicious?
		# YOUR CODE HERE
		if @flavor == "black licorice"
			return false
		else
			return true
		end
	end
end