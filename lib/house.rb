class House
  attr_reader :price,
              :address,
              :rooms

  def initialize(price, address)
    @price = price[1..6]
    @address = address
    @rooms = []
  end

  def add_room(room)
    @rooms << room
  end

  def rooms_from_category(symbol)
     @rooms.find_all do |room|
       room.category == symbol
     end
  end


end
