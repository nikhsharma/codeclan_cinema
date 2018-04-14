class Ticket

  attr_reader :id

  def initialize(options)
    @id = options["id"].to_i
    @customer_id = options["customer_id"].to_i
    @film_id = options["film_id"].to_i
    @screening_id = options["screening_id"].to_i
  end

  def save()
    sql = "SELECT * FROM screenings WHERE id = $1;"
    values = [@screening_id]
    screenings = SqlRunner.run(sql, values)[0]
    screening = Screening.new(screenings)

    if screening.sale_count < screening.ticket_limit
      sql = "INSERT INTO tickets (customer_id, film_id, screening_id) VALUES ($1, $2, $3) RETURNING id;"
      values = [@customer_id, @film_id, @screening_id]
      result = SqlRunner.run(sql, values)
      @id = result[0]["id"].to_i
    end
  end

  def delete()
    sql = "DELETE FROM tickets WHERE id = $1;"
    values = [@id]
    SqlRunner.run(sql, values)
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
