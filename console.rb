require('pry-byebug')
require_relative('models/customer.rb')
require_relative('models/film.rb')
require_relative('models/ticket.rb')
require_relative('db/sql_runner.rb')


customer1 = Customer.new(
  {
    "name" => "Bob",
    "funds" => 50
  }
)

customer1.save()

customer2 = Customer.new(
  {
    "name" => "Steve",
    "funds" => 30
  }
)

customer2.save()

film1 = Film.new(
  {
    "title" => "A Quiet Place",
    "price" => 11
  }
)

film1.save()

film2 = Film.new(
  {
    "title" => "Isle of Dogs",
    "price" => 10
  }
)

film2.save()

ticket1 = Ticket.new(
  {
    "customer_id" => customer1.id,
    "film_id" => film1.id
  }
)

ticket1.save()

ticket2 = Ticket.new(
  {
    "customer_id" => customer1.id,
    "film_id" => film2.id
  }
)

ticket2.save()


ticket3 = Ticket.new(
  {
    "customer_id" => customer2.id,
    "film_id" => film1.id
  }
)

ticket3.save()

binding.pry
nil
