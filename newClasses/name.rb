class Name
  attr_reader :title, :first_name, :middle_name, :last_name
  attr_writer :title
  
  def initialize(title, first_name, middle_name, last_name)
    @title =title
    @first_name =first_name
    @middle_name =middle_name
    @last_name =last_name
  end
  
end

name = Name.new("Mrs.", "Juniper", "Louise", "Layman")
puts name.title + " " +
  name.first_name + " " +
  name.middle_name + " " +
  name.last_name