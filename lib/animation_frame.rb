class AnimationFrame
  attr_reader :delay, :content

  def initialize(delay, content)
    @delay = delay
    @content = content
  end
end
