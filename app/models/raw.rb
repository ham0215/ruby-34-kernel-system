class Raw
  attr_reader :gitlab_resources

  def initialize
    @gitlab_resources = ::Gitlab::ObjectifiedHash.new({
      system: true
    })
  end
end
