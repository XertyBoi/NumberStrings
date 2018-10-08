def calculate(books)

  case books.size
  when 2
    if (books[0] != books[1])
    (books.size*8.00)-((books.size*8.00 / 100)*5)
    else
    books.size*8.00
    end
  when 3
    if (books[0] != books[1]) && (books[1] != books[2])
    (books.size*8.00)-((books.size*8.00 / 100)*10)
    else
    books.size*8.00
    end
  when 4
    if (books[0] != books[1]) && (books[1] != books[2]) && (books[2] != books[3])
    (books.size*8.00)-((books.size*8.00 / 100)*20)
    else
    books.size*8.00
    end
  when 5
    if (books[0] != books[1]) && (books[1] != books[2]) && (books[2] != books[3]) && (books[3] != books[4])
    (books.size*8.00)-((books.size*8.00 / 100)*25)
    else
    books.size*8.00
    end
  else
    8.00
  end

end
