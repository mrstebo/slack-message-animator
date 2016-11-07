class DogCarAnimation
  def initialize(options = {})
    @length = options.fetch(:length, 10)
  end

  def frames
    length = @length
    animation = (0..length).map {|i| AnimationFrame.new(0.2, "#{dog}#{' '* (length - i)}#{car}")}
    animation + [
      AnimationFrame.new(1, "#{boom}#{car}"),
      AnimationFrame.new(0.3, "#{boom}#{boom}#{car}"),
      AnimationFrame.new(0.5, "#{boom}#{boom}#{boom}#{car}"),
      AnimationFrame.new(0.8, "#{boom}#{boom}#{boom}#{boom}"),
      AnimationFrame.new(1, "#{boom}#{boom}"),
      AnimationFrame.new(4, boom),
      AnimationFrame.new(1, ':face_with_rolling_eyes:')
    ]
  end

  private

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
