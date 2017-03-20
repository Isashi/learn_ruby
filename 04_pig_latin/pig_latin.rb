def translate(string)
	vowel=["a","e","i","o","u"]
	alpha= ('a'..'z').to_a
	consonants = alpha - vowel
	string = string.split(" ")
	

	string.map do |word|

		if vowel.include? word[0]
			word = word + "ay"
		elsif (consonants.include? word[2]) && (consonants.include? word[1]) && (consonants.include? word[0])
			cut = word[0..2]
			word = word + cut + "ay"
			word.slice!(0)
			word.slice!(0)
			word.slice!(0)
			word	
		elsif (consonants.include? word[0]) && word[1..2]=="qu"
			cut = word[0..2]	
			word = word + cut + "ay"
			word.slice!(0)
			word.slice!(0)
			word.slice!(0)
			word
		elsif (consonants.include? word[1]) && (consonants.include? word[0])
			cut = word[0..1]
			word = word + cut + "ay"
			word.slice!(0)
			word.slice!(0)
			word
		elsif word[0..1]=="qu"
			cut = word[0..1]	
			word = word + cut + "ay"
			word.slice!(0)
			word.slice!(0)
			word		
		elsif consonants.include? word[0]
			cut = word[0]	
			word = word + cut + "ay"
			word.slice!(0)
			word
		end
	end.join(" ")
end


