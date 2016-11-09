class DogCarAnimation
  def initialize(options = {})
    @length = options.fetch(:length, 10)
  end

  def frames
    animation = (0..@length).map {|i| create_frame(0.2, "#{dog}#{' '* (@length - i)}#{car}")}
    animation + [
      create_frame(1, "#{boom}#{car}"),
      create_frame(0.3, "#{boom}#{boom}#{car}"),
      create_frame(0.5, "#{boom}#{boom}#{boom}#{car}"),
      create_frame(0.8, "#{boom}#{boom}#{boom}#{boom}"),
      create_frame(1, "#{boom}#{boom}"),
      create_frame(4, boom),
      create_frame(1, ':face_with_rolling_eyes:')
    ]
  end

  private

  def create_frame(delay, content)
    AnimationFrame.new(content, {
      delay: delay,
      override_previous_frame: true
    })
  end

  def car
    ':car:'
  end

  def dog
    ':dog2:'
  end

  def boom
    ':boom:'
  end
end
