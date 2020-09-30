def sum_recursive(min, max)
  # guard clause
  return -1 if min > max

  # base case - min equals max, tells the recursion to stop at line 10
  if min == max
    max
  else
    # Min plus redefining the min to add to the old min
    min + sum_recursive(min + 1, max)
  end
end
