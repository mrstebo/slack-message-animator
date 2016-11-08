class DogCarPunkdAnimation
  def initialize(options = {})
    @length = options.fetch(:length, 10)
  end

  def frames
    length = @length
    animation = (0..length).map {|i| AnimationFrame.new(0.2, "#{dog}#{' '* (length - i)}#{car}")}
    animation + [
      AnimationFrame.new(2, "#{dog_face}#{punch}#{car}"),
      AnimationFrame.new(2, "#{dog_face}#{point_right}#{car}"),
      AnimationFrame.new(1, "#{dog_face}#{boot}#{car}"),
      AnimationFrame.new(0.5, "#{dog_face}#{boot}#{boom}#{car}"),
      AnimationFrame.new(0.5, "#{dog_face}#{boot}#{boom}#{boom}#{car}"),
      AnimationFrame.new(0.5, "#{dog_face}#{boot}#{boom}#{boom}#{boom}#{car}"),
      AnimationFrame.new(0.8, "#{dog_face}#{boot}#{boom}#{boom}#{boom}#{boom}"),
      AnimationFrame.new(0.5, "#{dog_face}#{boot}#{boom}#{boom}"),
      AnimationFrame.new(0.5, "#{dog_face}#{boot}#{boom}"),
      AnimationFrame.new(1, "#{dog_face}#{oh_yeah}")
    ]
  end

  private

  def car
    ':car:'
  end

  def dog
    ':dog2:'
  end

  def dog_face
    ':dog:'
  end

  def boom
    ':boom:'
  end

  def point_right
    ':point_right:'
  end

  def no_way
    ':fu:'
  end

  def boot
    ':athletic_shoe:'
  end

  def oh_yeah
    ':+1:'
  end
end
