class Test
  def self.run
    gitlab = ObjectifiedHash.new({
      system: true
    })

    hoge = Hoge.new(gitlab)
    hoge.get_system
  end
end
