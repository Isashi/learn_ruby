class Book
# write your code here
	attr_accessor :title

	def title
		words = @title.split(" ")
		exc = ["and", "in", "the", "of", "a", "an"]
		words.each_with_index do |word, index|
			word.capitalize! unless (exc.include? word) && (index > 0)
		end
		
		title = words.join(" ")
	end
end
