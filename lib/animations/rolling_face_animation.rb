class RollingFaceAnimation
  def initialize(options = {})
    @length = options.fetch(:length, 10)
  end

  def frames
    animation = (0..@length).map do |i|
      current_face = i % 2 == 0 ? face : upside_down_face
      AnimationFrame.new(0.25, "#{cactus}#{' '* (@length - i)}#{current_face}#{point_left}")
    end
    animation.push(AnimationFrame.new(1, "#{cactus}#{ouch}"))
    animation
  end

  private

  def cactus
    ':cactus:'
  end

  def point_left
    ':point_left:'
  end

  def face
    ':simple_smile:'
  end

  def upside_down_face
    ':upside_down_face:'
  end

  def ouch
    ':face_with_head_bandage:'
  end
end
