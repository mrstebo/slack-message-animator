module SessionInitializer
  def self.init(team_name, email, password, channel)
    Capybara.default_max_wait_time = 20

    Capybara.register_driver :chrome do |app|
      Capybara::Selenium::Driver.new(app, browser: :chrome)
      # Capybara::Selenium::Driver.new(app, browser: :chrome, switches: ['--incognito'])
    end
    Capybara.default_driver = :chrome
    Capybara.javascript_driver = :chrome

    session = Capybara::Session.new(:chrome)

    session.visit "https://#{team_name}.slack.com/messages/#{channel}/"

    if session.first('strong', text: /^email address$/) && session.first('strong', text: /^password$/)
      session.fill_in 'email', with: email
      session.fill_in 'password', with: password
      session.find('#signin_btn').click
    else
      session.click_on 'Sign in with Google'
      session.fill_in 'identifier', with: email
      session.find('#identifierNext').click
      session.fill_in 'password', with: password
      session.find('#passwordNext').click
    end

    session.assert_selector '#channels'
    # Just incase we were not directed to the right channel :/
    session.visit "https://#{team_name}.slack.com/messages/#{channel}/"

    session
  end
end
