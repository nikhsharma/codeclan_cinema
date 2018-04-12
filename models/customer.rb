class Customer

  attr_reader :id

  def initialize(options)
    @id = options["id"]
    @name = options["name"]
    @funds = options["funds"]
  end

  def save()
    sql = "INSERT INTO customers (name, funds) VALUES ($1, $2) RETURNING id;"
    values = [@name, @funds]
    result = SqlRunner.run(sql, values)
    return result[0]["id"].to_i
  end

  def self.all()
    sql = "SELECT * FROM customers"
    customers =  SqlRunner.run(sql)
    return customers.map {|customer| Customer.new(customer)}
  end

end
