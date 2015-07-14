class Hamming
	VERSION = 2

	def self.compute(strand_1,strand_2)

		raise ArgumentError, "The two strands must have the same length." if strand_1.length != strand_2.length

		strand_1 = strand_1.split("")
		strand_2 = strand_2.split("")
		
		character = 0
		results = []

		strand = strand_1.select do |letter|
			result = letter != strand_2[character]
			if result != false
				results << letter
			end 
			character += 1
			

		end
		results.count	 
	end   
end 

Hamming.compute('A', 'A')






