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

    if session.find('strong', text: /^email address$/) && session.find('strong', text: /^password$/)
      session.fill_in 'email', with: email
      session.fill_in 'password', with: password
      session.find('#signin_btn').click
    else
      session.click_on 'Sign in with Google'
      session.fill_in 'Email', with: email
      session.click_on 'Next'
      session.fill_in 'Password', with: password
      session.click_on 'Sign in'
    end
    session
  end
end
