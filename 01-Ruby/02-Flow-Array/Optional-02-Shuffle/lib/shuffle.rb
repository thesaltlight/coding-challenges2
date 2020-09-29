def shuffle(array)
  #  input: an array
  # restriction: don't change the original array
    #clone the original array by creating a new array = array_a
  old = array.dup
  randomised = []
  # randomly select elements in array_a by index 
  until old.empty?
    i = rand(old.length)
    # append that element into array_b
    randomised.push(old[i])
    old.delete_at(i)
    end
  # output is a new array with same elements from the first array
  randomised
end
