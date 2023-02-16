class Merchant 

  attr_reader :id,
              :name

  def initialize(data)
    binding.pry
    @id = data[:id]
    @name = data[:name]
  end
end