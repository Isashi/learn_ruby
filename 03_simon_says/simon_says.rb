#write your code here
def echo(x)
	x
end

def shout(x)
	x.upcase
end

def repeat(x, number=2)
	z=(x+" ")*(number-1)+x
end

def start_of_word(x, number=0)
	x[0..(number-1)]
end

def first_word(x)
	x.split(' ').first
end

def titleize(sentence)
	short_words =["and","the","over","but"]
	result=""
	sentence_splitted=sentence.split(' ')
	
	result = result + sentence_splitted[0].capitalize

	for i in 1..sentence_splitted.length-1 do		
		capword = sentence_splitted[i]
		if capword != "and" && capword != "the" && capword != "over" && capword != "but"
			capword = capword.capitalize
		end

		result = result + " " + capword
	end
	return result
	
end