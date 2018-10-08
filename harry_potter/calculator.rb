def calculate(books)
  if books.size > 1
    if (books[0] != books[1])
    (books.size*8.00)-((books.size*8.00 / 100)*5)
    else
    books.size*8.00
    end
  else
    8.00
  end
end
