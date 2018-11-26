class Car
  include Company

  def initialize(type)
    @type = type
    validate!
  end

  def valid?
    validate!
  rescue
    false
  end

  def validate!
    raise "Type can't be nill" if @type.nil?
    raise "Type should be no more than 6 symbols" if @type.length > 21
    raise "Type has invalid format" if @type !~ /^[a-z0-9]/i
  end
end
