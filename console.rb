require('pry-byebug')
require_relative('models/customer.rb')
require_relative('models/film.rb')
require_relative('models/ticket.rb')
require_relative('models/screening.rb')
require_relative('db/sql_runner.rb')

Screening.delete_all()
Ticket.delete_all()
Customer.delete_all()
Film.delete_all()

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

screening1 = Screening.new(
  {
    "show_time" => "15:00",
    "film_id" => film1.id
  }
)

screening1.save()


screening2 = Screening.new(
  {
    "show_time" => "20:00",
    "film_id" => film1.id
  }
)

screening2.save()

screening3 = Screening.new(
  {
    "show_time" => "15:00",
    "film_id" => film2.id
  }
)

screening3.save()

screening4 = Screening.new(
  {
    "show_time" => "20:00",
    "film_id" => film2.id
  }
)

screening4.save()

ticket1 = Ticket.new(
  {
    "customer_id" => customer1.id,
    "film_id" => film1.id,
    "screening_id" => screening2.id
  }
)

ticket1.save()

ticket2 = Ticket.new(
  {
    "customer_id" => customer1.id,
    "film_id" => film2.id,
    "screening_id" => screening2.id
  }
)

ticket2.save()


ticket3 = Ticket.new(
  {
    "customer_id" => customer2.id,
    "film_id" => film1.id,
    "screening_id" => screening3.id
  }
)

ticket3.save()

ticket4 = Ticket.new(
  {
    "customer_id" => customer2.id,
    "film_id" => film1.id,
    "screening_id" => screening3.id
  }
)

ticket4.save()

ticket5 = Ticket.new(
  {
    "customer_id" => customer2.id,
    "film_id" => film1.id,
    "screening_id" => screening3.id
  }
)

ticket5.save()

ticket6 = Ticket.new(
  {
    "customer_id" => customer2.id,
    "film_id" => film1.id,
    "screening_id" => screening3.id
  }
)

ticket6.save()

ticket7 = Ticket.new(
  {
    "customer_id" => customer2.id,
    "film_id" => film1.id,
    "screening_id" => screening3.id
  }
)

ticket7.save()

ticket8 = Ticket.new(
  {
    "customer_id" => customer2.id,
    "film_id" => film1.id,
    "screening_id" => screening3.id
  }
)

ticket8.save()


ticket9 = Ticket.new(
  {
    "customer_id" => customer2.id,
    "film_id" => film1.id,
    "screening_id" => screening3.id
  }
)

ticket9.save()

ticket10 = Ticket.new(
  {
    "customer_id" => customer2.id,
    "film_id" => film1.id,
    "screening_id" => screening3.id
  }
)

ticket10.save()

ticket11 = Ticket.new(
  {
    "customer_id" => customer2.id,
    "film_id" => film1.id,
    "screening_id" => screening3.id
  }
)

ticket11.save()

ticket12 = Ticket.new(
  {
    "customer_id" => customer2.id,
    "film_id" => film1.id,
    "screening_id" => screening3.id
  }
)

ticket12.save()

ticket13 = Ticket.new(
  {
    "customer_id" => customer2.id,
    "film_id" => film1.id,
    "screening_id" => screening3.id
  }
)

ticket13.save()



binding.pry
nil
