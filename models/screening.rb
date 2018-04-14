class Screening

  attr_reader :id

  def initialize(options)
    @id = options["id"].to_i
    @show_time = options["show_time"]
    @film_id = options["film_id"].to_i
    @ticket_id = options["ticket_id"].to_i
  end

end
