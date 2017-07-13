require "byebug"
#phase 1, quadratic 0(n^2), space complexity is 0(1)

def my_min(array)
  sorted = false
  until sorted
    sorted = true

    array.each_index do |idx|
      next if idx + 1 == array.length
      if array[idx] > array[idx + 1]
        array[idx], array[idx + 1] = array[idx + 1], array[idx]
        sorted = false
      end
    end
  end

  array.first
end

 list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]

#phase 2, time complexity  0(1) is constant, and space complexity is 0(1)
def my_min2(array)
  minimum = array.first
    array.each_index do |idx|
      if array[idx] < minimum
        minimum = array[idx]
      end
    end
    minimum
end

# Largest Contiguous Sug-sum: time complexity O(n^2), space complexity: O(n)

def sub_sum(array)
  sums = []
  i = 0
  j = 0

  while i < array.length
    while j < array.length
       sums << array[i..j]
       j += 1
     end
   i += 1
   j = i
 end
 sums.sort_by{|x| x.reduce(:+)}.last.reduce(:+)
 end

 #  O(n) time with O(1) memory

 def sub_sum_improved(array)
   max = array[0]
   current_sum = array[0]
   i = 0
  (1...array.length).each do |i|
   max = [array[i], array[i] + max].max
   current_sum = [current_sum, max].max
 end
 current_sum
  end
