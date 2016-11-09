require 'net/http'
require 'json'

class DonaldTrumpQuotesAnimation
  def initialize(options = {})
    @length = options.fetch(:length, 1)
  end

  def frames
    (0..@length-1).map do |i|
      create_frame(4, "#{get_trump_quote} - #{get_trump_gif}")
    end
  end

  private

  def create_frame(delay, content)
    AnimationFrame.new(content, {
      delay: delay,
      override_previous_frame: false
    })
  end

  def get_trump_quote
    uri = URI('https://api.whatdoestrumpthink.com/api/v1/quotes/random')
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE
    response = http.get(uri.request_uri)
    content = JSON.parse(response.body)
    content['message']
  end

  def get_trump_gif
    [
      'http://i.giphy.com/10tkf2u5HFDGWk.gif',
      'http://i.giphy.com/GHZ9RZFGqsWbK.gif',
      'http://i.giphy.com/l46CnTiHrzuBnkAOA.gif',
      'http://i.giphy.com/3o7TKWDGfvUWb9FMZi.gif',
      'http://i.giphy.com/l2JhGYxcjMcKqiaHu.gif',
      'http://i.giphy.com/3o7TKwiaIuMib5WVXO.gif',
      'http://i.giphy.com/l2JhIUyUs8KDCCf3W.gif',
      'http://i.giphy.com/l3vR3EssQ5ALagr7y.gif',
      'http://i.giphy.com/3oriO6a2KKLMej1GyQ.gif',
      'http://i.giphy.com/wJNGA01o1Zxp6.gif'
    ].sample
  end
end
