class Name
  def initialize(title)
    @title =title
  end
  
  def title
    @title
  end
  
  def first_name
    "Juniper"
  end
  
  def middle_name
    "Louise"
  end
  
  def last_name
    "Layman"
  end
end

name = Name.new("Mrs.")
puts name.title
puts name.first_name
puts name.middle_name
puts name.last_name