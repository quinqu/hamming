class Hamming
  attr_reader :dna1, :dna2

  def self.compute(dna1, dna2)
    hamming_count = 0
    if dna1.length == 0 || dna2.length == 0
      return 0
    elsif dna1.length != dna2.length 
      raise ArgumentError.new("Not same lengths")
    else
      arr1 = dna1.split("")
      arr2 = dna2.split("")

      arr1.length.times do |i|
        if arr1[i] != arr2[i]
          hamming_count += 1
        end 
      end 

    end 
    return hamming_count
  end 

end 

