class AnimationRunner
  MESSAGE_INPUT_EDITOR = '.ql-editor'

  def initialize(session, animation)
    @session = session
    @animation = animation
  end

  def animate
    @session.assert_selector MESSAGE_INPUT_EDITOR
    sleep 4

    frames.each_with_index do |frame, index|
      if index > 0 && frame.override_previous_frame
        edit_previous_message(frame.content)
      else
        create_new_message(frame.content)
      end
      sleep frame.delay
    end
  end

  private

  def frames
    @frames ||= @animation.frames
  end

  def create_new_message(message)
    message.lines.each do |line|
      @session.find(MESSAGE_INPUT_EDITOR).native.send_keys line.chomp
      @session.find(MESSAGE_INPUT_EDITOR).native.send_keys [:control, :return]
    end
    @session.find(MESSAGE_INPUT_EDITOR).native.send_keys :return
  end

  def edit_previous_message(message)
    @session.find(MESSAGE_INPUT_EDITOR).native.send_keys :up
    @session.first(MESSAGE_INPUT_EDITOR).native.send_keys [:shift, :home]
    @session.first(MESSAGE_INPUT_EDITOR).native.send_keys :backspace
    message.lines.each do |line|
      @session.first(MESSAGE_INPUT_EDITOR).native.send_keys line.chomp
      @session.first(MESSAGE_INPUT_EDITOR).native.send_keys [:control, :return]
    end
    @session.first(MESSAGE_INPUT_EDITOR).native.send_keys :return
  end
end
