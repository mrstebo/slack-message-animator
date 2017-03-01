class ClockAnimation
  def ask_questions
  end

  def frames
    animation = (1..12).map do |i|
      create_frame(1, clock(i))
    end
    animation.push(create_frame(1, "#{metal}#{angry}#{metal}"))
    animation
  end

  private

  def create_frame(delay, content)
    AnimationFrame.new(content, {
      delay: delay,
      override_previous_frame: true
    })
  end

  def clock(hour)
    ":clock#{hour}:"
  end

  def metal
    ':metal:'
  end

  def angry
    ':angry:'
  end
end
