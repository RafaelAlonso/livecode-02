class Task
  attr_reader :id,:desc,:done
  attr_writer :desc

  def initialize(piroca)
    @id = piroca['id']
    @desc = piroca['desc']
    @done = piroca['done']

  end


end
