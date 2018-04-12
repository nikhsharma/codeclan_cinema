require('pry-byebug')
require_relative('models/customer.rb')
require_relative('models/film.rb')
require_relative('models/ticket.rb')


customer1 = Customer.new(
  {
    "name" => "Bob",
    "funds" => 50
  }
)

customer2 = Customer.new(
  {
    "name" => "Steve",
    "funds" => 30
  }
)

film1 = Film.new(
  {
    "title" => "A Quiet Place",
    "price" => 11
  }
)

film2 = Film.new(
  {
    "title" => "Isle of Dogs",
    "price" => 11
  }
)

ticket1 = Ticket.new(
  {
    "customer_id" => customer1.id,
    "film_id" => film1.id
  }
)

ticket2 = Ticket.new(
  {
    "customer_id" => customer1.id,
    "film_id" => film2.id
  }
)
ticket3 = Ticket.new(
  {
    "customer_id" => customer2.id,
    "film_id" => film1.id
  }
)
