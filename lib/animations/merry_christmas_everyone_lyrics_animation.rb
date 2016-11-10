class MerryChristmasEveryoneLyricsAnimation
  def frames
    animation = []
    animation.push(create_frame(5, "#{christmas_tree}#{christmas_tree}#{christmas_tree} Merry Christmas Everyone - Shakin' Stevens #{christmas_tree}#{christmas_tree}#{christmas_tree}"))
    lyrics.each do |lyric|
      animation.push(create_frame(2, "#{christmas_tree}#{notes} #{lyric} #{notes}#{christmas_tree}"))
    end
    animation.push(create_frame(1, "#{christmas_tree}#{christmas_tree}#{christmas_tree}#{christmas_tree}#{christmas_tree}#{christmas_tree}"))
    animation
  end

  private

  def create_frame(delay, content)
    AnimationFrame.new(content, {
      delay: delay,
      override_previous_frame: true
    })
  end

  def christmas_tree
    ':christmas_tree:'
  end

  def notes
    ':notes:'
  end

  def lyrics
    [
      'Snow is fallin\'',
      'All around me',
      'Children playin\'',
      'Having fun',
      'It\'s the season',
      'Love and understanding',
      'Merry Christmas everyone',
      'Time for parties',
      'And celebrations',
      'People dancin\'',
      'All night long',
      'Time for presents',
      'And exchanging kisses',
      'Time for singing Christmas songs',
      'We\'re gonna have a party tonight',
      'I\'m gonna find that girl',
      'Underneath the mistletoe',
      'We\'ll kiss by candle light',
      'Room is waiting',
      'Records playing',
      'All the old songs',
      'Love to give',
      'Oh, I wish that',
      'Everyday was Christmas',
      'What a nice way',
      'To spend the year',
      'We\'re gonna have a party tonight',
      'I\'m gonna find that girl',
      'Underneath the mistletoe',
      'We\'ll kiss by candle light',
      'Snow is fallin\' (Snow is fallin\')',
      'All around me (All around me)',
      'Children playin\' (Children playin\')',
      'Having fun (Having fun)',
      'It\'s the season',
      'Love and understanding',
      'Merry Christmas everyone',
      'Merry Christmas everyone',
      'Ooh Merry Christmas everyone',
      'Snow is fallin\' (Snow is fallin\')',
      'All around me (All around me)',
      'Children playin\' (Children playin\')',
      'Having fun (Having fun)',
      'It\'s the season',
      'Love and understanding',
      'Merry Christmas everyone',
      'Snow is fallin\' (Snow is fallin\')',
      'All around me (All around me)',
      'Children playin\' (Children playin\')',
      'Having fun (Having fun)',
      'It\'s the season',
      'Love and understanding',
      'Merry Christmas everyone',
      'Oh, snow is fallin\' (Snow is fallin\')',
      'All around me (All around me)',
      'Children playin\' (Children playin\')',
      'Having fun (Having fun)',
      'It\'s the season',
      'Love and understanding',
      'Merry Christmas everyone',
      'Merry Christmas everyone',
      'Oohh Merry Christmas everyone'
    ]
  end
end
