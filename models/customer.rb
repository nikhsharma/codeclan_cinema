class Customer

  def initialize(options)
    @id = options["id"]
    @name = options["name"]
    @funds = options["funds"]
  end

  def self.all()
    sql = "SELECT * FROM customers"
    return SqlRunner.run(sql)
  end

end
