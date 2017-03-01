class HappyBirthdayAnimation
  def ask_questions
    @person = ask("Whos birthday is it?") {|q| q.echo = true}
  end

  def frames
    return [] unless @person
    [
      create_frame(1, "#{birthday_cake} Happy Birthday @#{@person}! #{birthday_cake}"),
      create_frame(4, "Happy Birthday to you"),
      create_frame(2, "Happy Birthday to you"),
      create_frame(2, "Happy Birthday, dear @#{@person}!"),
      create_frame(3, "Happy Birthday to you!"),
      create_frame(5, "Have an awesome day, @#{@person}! #{hugging_face}")
    ]
  end

  private

  def create_frame(delay, content)
    AnimationFrame.new(content, {
      delay: delay,
      override_previous_frame: true
    })
  end

  def birthday_cake
    ':birthday:'
  end

  def candle
    ':candle:'
  end

  def dancer
    ':dancer:'
  end

  def hugging_face
    ':hugging_face:'
  end
end
