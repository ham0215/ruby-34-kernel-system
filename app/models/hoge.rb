class Hoge
  # delegate :system, to: :raw
  def system(...)
    _ = raw
    _.system(...)
  end

  def initialize(raw)
    @raw = raw
  end

  def get_system
    system
  end

  private

  attr_reader :raw
end
