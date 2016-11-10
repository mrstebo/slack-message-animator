class PokemonThemeSongLyricsAnimation
  def frames
    animation = []
    animation.push(create_frame(4, start_gif))
    lyrics.each_with_index do |lyric, index|
      animation.push(create_frame(2, "#{notes} #{lyric} #{notes}", index > 0))
    end
    animation.push(create_frame(0.2, "#{metal} *OH YEAH!* #{metal}"))
    animation.push(create_frame(1, end_gif, false))
    animation
  end

  private

  def create_frame(delay, content, override = true)
    AnimationFrame.new(content, {
      delay: delay,
      override_previous_frame: override
    })
  end

  def start_gif
    'http://i.giphy.com/96Xaju9KRM4ne.gif'
  end

  def end_gif
    'http://i.giphy.com/amrNGnZUeWhZC.gif'
  end

  def notes
    ':notes:'
  end

  def metal
    ':metal:'
  end

  def lyrics
    [
      "I wanna be the very best",
      "Like no one ever was",
      "To catch them is my real test",
      "To train them is my cause",
      "I will travel across the land",
      "Searching far and wide",
      "Each Pokemon to understand",
      "The power that's inside",
      "Pokemon, gotta catch 'em all",
      "Its you and me",
      "I know it's my destiny",
      "Pokemon, oh, you're my best friend",
      "In a world we must defend",
      "Pokemon, gotta catch 'em all",
      "A heart so true",
      "Our courage will pull us through",
      "You teach me and I'll teach you",
      "Pokemon, gotta catch 'em all",
      "Gotta catch 'em all",
      "Yeah",
      "Every challenge along the way",
      "With courage I will face",
      "I will battle every day",
      "To claim my rightful place",
      "Come with me, the time is right",
      "There's no better team",
      "Arm in arm we'll win the fight",
      "It's always been our dream",
      "Pokemon, gotta catch 'em all",
      "Its you and me",
      "I know it's my destiny",
      "Pokemon, oh, you're my best friend",
      "In a world we must defend",
      "Pokemon, gotta catch 'em all",
      "A heart so true",
      "Our courage will pull us through",
      "You teach me and I'll teach you",
      "Pokemon, gotta catch 'em all",
      "Gotta catch 'em all",
      "Gotta catch 'em all",
      "Gotta catch 'em all",
      "Yeah"
    ]
  end
end
