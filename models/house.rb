require_relative('sqlrunner')

class House

  attr_reader :id, :house_name

  def initialize(house_hash)
    @id = house_hash['id'].to_i
    @house_name = house_hash['house_name']
  end

### Instance methods

  def save()
    sql = "INSERT INTO houses (house_name) VALUES ('#{@house_name}') RETURNING id"
    houses_array = SqlRunner.run(sql)
    @id = houses_array.first['id'].to_i
  end

### Class Methods

  def self.all
    sql = "SELECT * FROM houses" 
    houses = SqlRunner.run(sql)
    result = houses.map {|house| House.new(house)}
    return result
  end

  def self.find(specified_id)
    sql = "SELECT * FROM houeses WHERE id = #{specified_id}"
    house = SqlRunner.run(sql).first
    result = House.new(house)
  end

end