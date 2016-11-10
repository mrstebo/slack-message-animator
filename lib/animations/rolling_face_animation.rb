class RollingFaceAnimation
  def initialize(options = {})
    @length = options.fetch(:length, 20)
  end

  def frames
    animation = (0..@length-1).map do |i|
      current_face = i % 2 == 0 ? face : upside_down_face
      create_frame(0.25, "#{cactus}#{' '* (@length - i)}#{current_face}#{point_left}")
    end
    animation.push(create_frame(1, "#{cactus}#{ouch}"))
    animation
  end

  private

  def create_frame(delay, content)
    AnimationFrame.new(content, {
      delay: delay,
      override_previous_frame: true
    })
  end

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
