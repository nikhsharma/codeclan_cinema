class Screening

  attr_reader :id
  attr_writer :show_time

  def initialize(options)
    @id = options["id"].to_i
    @show_time = options["show_time"]
    @ticket_id = options["ticket_id"].to_i
  end

  def save()
    sql = "INSERT INTO screenings (show_time, ticket_id) VALUES ($1, $2) RETURNING id;"
    values = [@show_time, @ticket_id]
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

  def self.all()
    sql = "SELECT * FROM screenings;"
    screenings = SqlRunner.run(sql)
    return screenings.map {|screening| Screening.new(screening)}
  end

  def self.delete_all()
    sql = "DELETE FROM screenings;"
    SqlRunner.run(sql)
  end

end
