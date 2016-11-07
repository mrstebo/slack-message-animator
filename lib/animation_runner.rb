class AnimationRunner
  def initialize(session, animation)
    @session = session
    @animation = animation
  end

  def animate
    @session.assert_selector '#message-input'
    sleep 4
    @session.find('#message-input').native.send_keys frames.first.content
    @session.find('#message-input').native.send_keys :return
    sleep 1

    frames.each do |frame|
      @session.find('#message-input').native.send_keys :up
      @session.find('#msg_text').native.send_keys [:control, 'a'], frame.content, :return
      sleep frame.delay
    end
  end

  private

  def frames
    @frames ||= @animation.frames
  end
end
