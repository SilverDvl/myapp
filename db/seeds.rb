# Create some books
books = Book.create([
  { id: 1, title: 'Book A', author: 'Author A', publication_year: 2021, total_chapters: 20 },
  { id: 2, title: 'Book B', author: 'Author B', publication_year: 2022, total_chapters: 15 }
])

# Create some users
users = User.create([
  { id: 1, user_name: 'User1', password: 'password', email: 'user1@example.com' },
  { id: 2, user_name: 'User2', password: 'password', email: 'user2@example.com' }
])

# Create some reviews
Review.create([
  { id: 1, content: 'Great book!', rating: 5, review_date: Date.today, user: users.first, book: books.first },
  { id: 2, content: 'Not bad.', rating: 4, review_date: Date.today, user: users.last, book: books.last }
])
