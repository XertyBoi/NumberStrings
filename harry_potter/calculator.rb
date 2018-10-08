def calculate(books)
  if books.size > 1
    if books.size == 2
      if (books[0] != books[1])
      (books.size*8.00)-((books.size*8.00 / 100)*5)
      else
      books.size*8.00
      end
    else
      if (books[0] != books[1]) && (books[1] != books[2])
      (books.size*8.00)-((books.size*8.00 / 100)*10)
      else
      books.size*8.00
      end
    end
  else
    8.00
  end
end
