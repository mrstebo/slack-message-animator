class AnimationFrame
  attr_accessor :content, :delay, :override_previous_frame

  def initialize(content, options)
    @content = content
    @delay = options.fetch(:delay, 1)
    @override_previous_frame = options.fetch(:override_previous_frame, false)
  end
end
