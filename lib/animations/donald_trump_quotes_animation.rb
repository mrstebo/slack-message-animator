require 'net/http'
require 'json'

class DonaldTrumpQuotesAnimation
  def initialize(options = {})
    @length = options.fetch(:length, 1)
  end

  def frames
    (0..@length-1).map do |i|
      create_frame(4, "Donald Trump: #{get_quote}")
    end
  end

  private

  def create_frame(delay, content)
    AnimationFrame.new(content, {
      delay: delay,
      override_previous_frame: false
    })
  end

  def get_quote
    uri = URI('https://api.whatdoestrumpthink.com/api/v1/quotes/random')
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE
    response = http.get(uri.request_uri)
    content = JSON.parse(response.body)
    content['message']
  end
end
