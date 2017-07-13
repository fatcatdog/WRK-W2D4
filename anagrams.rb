require "byebug"

class String
# big(0) Time complexity will be n! due to our permutations method. The longer the word, the factorial longer it takes to produce an answer.
  def anagrams(string2)
    #break into characters
    anagrams_arr = []
    self.chars.permutation(self.length).to_a.each do |x|
      anagrams_arr << x.join
    end
    anagrams_arr.include?(string2)
  end


  def second_anagram?(string2)
    return false if self.length != string2.length
    idx1 = 0
    idx2 = 0
    # while idx1 < self.length
      while idx2 < self.length 
        if self[0] == string2[idx2]
          self.delete!(self[0])
          string2.delete!(string2[idx2])
        else
          idx2 += 1

        end
        idx2 = 0
      end
p self
p string2
  end

#   while self.length > 0
#     while string2.length > 0
#       if self[0] == string2[0]
#         self.delete!(self[0])
#         string2.delete!(string2[0])
#       else
#         return false
#       end
#
#     end
#   end
# true
#
# end


end
