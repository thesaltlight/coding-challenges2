def find_book(books, book_to_find)
  books.each_with_index do |book, index|
    if book == book_to_find
      puts index
    end
  end
end

def find_book_enhanced(books, book_to_find)
  # TODO: return index of `book_to_find` in the array of `books`
  # Use binary search
  from = 0
  to = books.length - 1
  while from <= to
    pivot = (from + to) / 2
    if book_to_find > books[pivot]
      from = pivot + 1
    elsif book_to_find < books[pivot]
      to = pivot - 1
    else
      return pivot
    end
  end
  return nil
end
