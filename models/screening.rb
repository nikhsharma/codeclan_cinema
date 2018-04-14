class Screening

  attr_reader :id, :film_id, :ticket_limit
  attr_writer :show_time

  def initialize(options)
    @id = options["id"].to_i
    @show_time = options["show_time"]
    @film_id = options["film_id"].to_i
    @ticket_limit = 10
  end

  def save()
    sql = "INSERT INTO screenings (show_time, film_id) VALUES ($1, $2) RETURNING id;"
    values = [@show_time, @film_id]
    result = SqlRunner.run(sql, values)
    @id = result[0]["id"].to_i
  end

  def update()
    sql = "UPDATE screenings SET show_time = $1 WHERE id = $2;"
    values = [@show_time, @id]
    SqlRunner.run(sql, values)
  end

  def delete()
    sql = "DELETE FROM screenings WHERE id = $1;"
    values =[@id]
    SqlRunner.run(sql, values)
  end

  def sale_count()
    sql = "SELECT * FROM tickets WHERE screening_id = $1"
    values =[@id]
    return SqlRunner.run(sql, values).count
  end

  def self.all()
    sql = "SELECT * FROM screenings;"
    screenings = SqlRunner.run(sql)
    return screenings.map {|screening| Screening.new(screening)}
  end

  def self.delete_all()
    sql = "DELETE FROM screenings;"
    SqlRunner.run(sql)
  end

  def self.most_popular()
    all().max_by {|screening| screening.sale_count}
  end

end
