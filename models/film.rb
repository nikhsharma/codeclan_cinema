class Film

  attr_reader :id

  def initialize(options)
    @id = options["id"]
    @title = options["title"]
    @price = options["price"]
  end

  def self.all()
    sql = "SELECT * FROM films"
    return SqlRunner.run(sql)
  end

end
