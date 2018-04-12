class Ticket


  def initialize(options)
    @id = options["id"]
    @customer_id = options["customer_id"]
    @film_id = options["film_id"]
  end

  def save()
    sql = "INSERT INTO tickets (customer_id, film_id) VALUES ($1, $2) RETURNING id;"
    values = [@customer_id, @film_id]
    result = SqlRunner.run(sql, values)
    return result[0]["id"].to_i
  end

  def self.all()
    sql = "SELECT * FROM tickets;"
    tickets = SqlRunner.run(sql)
    tickets.map {|ticket| Ticket.new(ticket)}
  end

  def self.delete_all()
    sql = "DELETE FROM tickets;"
    SqlRunner.run(sql)
  end

end
