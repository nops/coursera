class Class
	def attr_accessor_with_history(attr_name)
		attr_name = attr_name.to_s # make sure it's a string
		attr_reader attr_name # create the attribute's getter
		attr_reader attr_name+"_history" # create bar_history getter
		class_eval %Q{
			def #{attr_name}=(bar)
				@#{attr_name}=bar
				@history#{attr_name} ||= Array.new.push(nil)
				@history#{attr_name}.push(bar)
			end
			def #{attr_name}_history
				return @history#{attr_name}
			end
		}
	end
end