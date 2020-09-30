def recursion(min, max)
  # base case => If the min value is greather than the max value, it should return -1
  #   if min value is greater than max value, sum of the integers between a min value and a max value (min and max included) using recursion 
  if min > max
    return -1
  else
    return if min <= max # base case
    (min..max).sum
    recursion(min, max)  
  end
end

  # output recursion(1, 3) => 6
  