class ItsAllComingBackToMeNowLyricsAnimation
  def ask_questions
  end

  def frames
    animation = []
    animation.push(create_frame(5, "#{dancer}#{dancer} It's All Coming Back To Me Now - Pandora's Box #{dancer}#{dancer}"))
    lyrics.each_with_index do |lyric, index|
      animation.push(create_frame(3, "#{dancer}#{notes} #{lyric} #{notes}#{dancer}", index > 0))
    end
    animation.push(create_frame(1, "#{dancer}#{dancer}#{dancer}#{dancer}#{dancer}#{dancer}"))
    animation
  end

  private

  def create_frame(delay, content, override_previous_frame = true)
    AnimationFrame.new(content, {
      delay: delay,
      override_previous_frame: override_previous_frame
    })
  end

  def dancer
    ':dancer:'
  end

  def notes
    ':notes:'
  end

  def lyrics
    [
      "There were nights when the wind was so cold",
      "That my body froze in bed",
      "If I just listened to it",
      "Right outside the window",
      "There were days when the sun was so cruel",
      "That all the tear turned to dust",
      "And I just knew my eyes were Drying up forever",
      "I finished crying in the instant that you left",
      "But I can't remember where or when or how",
      "And I banished every memory you and I had ever made!",
      "But when you touch me like this",
      "And you hold me like that",
      "I just have to admit",
      "That it's all coming back to me",
      "When I touch you like this",
      "And I hold you like that",
      "It's so hard to believe but",
      "It's all coming back to me",
      "It's all coming back",
      "It's all coming back to me now",
      "There were moments of gold",
      "And there were flashes of light",
      "There were things I'd never do again",
      "But then they always seemed right",
      "There were nights of sacred pleasure",
      "It was more than any laws allow!",
      "Baby, baby",
      "If I kiss you like this",
      "And if you whisper like that",
      "It was lost long ago",
      "But it's all coming back to me",
      "If you want me like this",
      "And if you need me like that",
      "It was dead long ago",
      "But it's all coming back to me",
      "It's so hard to resist",
      "And it's all coming back to me",
      "I can barely recall",
      "But it's all coming back to me now",
      "There were those empty threats and hollow lies",
      "And whenever you tried to hurt me",
      "I just hurt you even worse",
      "And so much deeper",
      "There were hours that just went on for days",
      "When alone at last, we'd count up all the chances",
      "That were lost to us",
      "Forever",
      "But you were history with the slamming of the door",
      "And I made myself so strong again somehow",
      "And I never wasted any of my time on you since then!",
      "But if I touch you like this",
      "And if you kiss me like that",
      "It was so long ago",
      "But it's all coming back to me",
      "If you touch me like this",
      "And if I kiss you like that",
      "It was gone with the wind",
      "But it's all coming back to me",
      "It's all coming back",
      "It's all coming back to me now",
      "There were moments of gold",
      "There were flashes of light",
      "There were things we'd never do again",
      "But then they always seemed right",
      "There were nights of endless pleasure",
      "It was more than all your laws allow!",
      "Baby, baby, baby",
      "When you touch me like this",
      "And when you hold me like that",
      "It was gone with the wind",
      "But it's all coming back to me",
      "When you see me like this",
      "Then we see what we want to see",
      "All coming back to me",
      "The flesh and the fantasies",
      "All coming back to me",
      "I can barely recall",
      "But it's all coming back to me now!",
      "If you forgive me of this",
      "If I forgive you of that",
      "We forgive and forget",
      "And it's all coming back to me",
      "When you see me like this",
      "And when I see you like that",
      "We see just what we want to see",
      "All coming back to me",
      "The flesh and the fantasies",
      "All coming back to me",
      "I can barely recall but it's all coming back to me now...",
      "And when you kiss me like this",
      "When you hold me like that",
      "And if I touch you like this",
      "And if we..."
    ]
  end
end
