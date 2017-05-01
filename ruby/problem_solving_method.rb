def random_number(number)
  fibonacci = [1,0]
  n = number - 2
  p = 0
  q = 1
n.times do
  num = p
  p = q
  q = num + q
  fibonacci << q
  end
      return fibonacci
end


print "Please input a number of your choice: "
number = gets.chomp.to_i
p random_number(number)


def bubble_sort(fibonacci)
  a = fibonacci.length
 swapped = true
while swapped do
	swapped = false
    (a-1).times do |new_number_list|
      if fibonacci[new_number_list] > fibonacci[new_number_list+1]
        fibonacci[new_number_list], fibonacci[new_number_list+1] = fibonacci[new_number_list+1], fibonacci[new_number_list]
        swapped = true
      end
    end
    swapped
  end

  fibonacci
end

example = [1,2,6,4,88,343,6]
p bubble_sort(example)