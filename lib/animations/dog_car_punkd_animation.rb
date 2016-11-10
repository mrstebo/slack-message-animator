class DogCarPunkdAnimation
  def initialize(options = {})
    @length = options.fetch(:length, 20)
  end

  def frames
    animation = (0..@length-1).map {|i| create_frame(0.2, "#{dog}#{' '* (@length - i)}#{car}")}
    animation + [
      create_frame(2, "#{dog_face}#{no_way}#{car}"),
      create_frame(2, "#{dog_face}#{point_right}#{car}"),
      create_frame(1, "#{dog_face}#{boot}#{car}"),
      create_frame(0.5, "#{dog_face}#{boot}#{boom}#{car}"),
      create_frame(0.5, "#{dog_face}#{boot}#{boom}#{boom}#{car}"),
      create_frame(0.5, "#{dog_face}#{boot}#{boom}#{boom}#{boom}#{car}"),
      create_frame(0.8, "#{dog_face}#{boot}#{boom}#{boom}#{boom}#{boom}"),
      create_frame(0.5, "#{dog_face}#{boot}#{boom}#{boom}"),
      create_frame(0.5, "#{dog_face}#{boot}#{boom}"),
      create_frame(1, "#{dog_face}#{oh_yeah}")
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
