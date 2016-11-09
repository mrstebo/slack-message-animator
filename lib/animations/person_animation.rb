class PersonAnimation
  def initialize(people, options = {})
    @people = people
    @frames = options.fetch(:frames, 1)
  end

  def frames
    (0..@frames).map do
      create_frame(4, generate_phrase_for(@people.sample))
    end
  end

  private

  def create_frame(delay, content)
    AnimationFrame.new(content, {
      delay: delay,
      override_previous_frame: false
    })
  end

  def generate_phrase_for(person)
    [
      "I heard @#{person} likes to #{Faker::SlackEmoji.activity} while having #{Faker::SlackEmoji.food_and_drink} :wink:"
    ].sample
  end
end
