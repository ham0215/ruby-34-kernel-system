class ObjectifiedHash
  def initialize(hash)
    @hash = hash
  end

  private

  attr_reader :hash, :data

  def method_missing(method_name, *args, &block)
    if hash.key?(method_name.to_sym)
      hash[method_name.to_sym]
    else
      super
    end
  end

  def respond_to_missing?(method_name, include_private = false)
    hash.key?(method_name.to_sym) || super
  end
end

class Hoge
  def system(...)
    # なぜかKernel#systemが呼ばれる
    raw.system(...)
    # (...)がないと通る
    # raw.system
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

class Test
  def self.run
    gitlab = ObjectifiedHash.new({
      system: true
    })

    hoge = Hoge.new(gitlab)
    p hoge.get_system
  end
end

Test.run
