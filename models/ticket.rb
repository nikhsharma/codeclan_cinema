class Ticket


  def initialize(options)
    @id = options["id"]
    @customer_id = options["customer_id"]
    @film_id = options["film_id"]
  end

  def self.all()
    sql = "SELECT * FROM tickets"
  end

end
