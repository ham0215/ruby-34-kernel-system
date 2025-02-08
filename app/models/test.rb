class Test
  def self.run
    gitlab = ::Gitlab::ObjectifiedHash.new({
      system: true
    })

    hoge = Hoge.new(gitlab)
    hoge.get_system
  end
end
