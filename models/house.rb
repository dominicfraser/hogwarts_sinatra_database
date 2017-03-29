require_relative('sqlrunner')

class House

  attr_reader :id, :house_name

  def initialize(house_hash)
    @id = house_hash['id'].to_i
    @house_name = house_hash['house_name']
  end


end