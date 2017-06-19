class DisappointedAnimation
  def ask_questions
  end

  def frames
    [
      neutral_face,
      slightly_frowning_face,
      white_frowning_face,
      disappointed
    ].map do |content|
      create_frame(1, content)
    end
  end

  private

  def create_frame(delay, content)
    AnimationFrame.new(content, {
      delay: delay,
      override_previous_frame: true
    })
  end

  def neutral_face
    ':neutral_face:'
  end

  def slightly_frowning_face
    ':slightly_frowning_face:'
  end

  def white_frowning_face
    ':white_frowning_face:'
  end

  def disappointed
    ':disappointed:'
  end
end
