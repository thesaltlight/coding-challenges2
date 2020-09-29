def colorful?(number)
  digits = digits(number)
  products = digit_subset_products(digits)
  # Check if duplicates are present within the array
  products == products.uniq
end

def digits(number)
  # 1. convert number into string
  # 2. split the string by each digit
  # 3. iterate to convert string digits into integer (map)
  number.to_s.split('').map { |num| num.to_i }
end

def digit_subset_products(digits)
  products = []
  # Determine array size so that we know how many times to iterate through the following iterations
  (1..digits.size).each do |i| 
    # Get the range of array indexes to iterate through (use j)
    (0..(digits.size - i)).each do |j|
      product = 1
      # Retrieve the element by its index; returning the single element in an array in order to iterate
      digits[j...(j + i)].each do |digit|
        # Multiply the last product with the retrieved element
        product = product * digit
      end
      # Shovel into array
      products << product
    end
  end
  products
end
