# frozen_string_literal: true

require 'appium_lib'
require 'rspec'

CAPABILITIES = {
  'deviceName' => 'Emulator',
  'platformName' => 'Android',
  'automationName' => 'UiAutomator2',
  'appPackage' => 'com.google.android.deskclock',
  'appActivity' => 'com.android.deskclock.DeskClock'
}

RSpec.configure do |config|
  config.before(:each) do
    @driver = Appium::Driver.new(CAPABILITIES)
    @driver.start_driver
  end

  config.after(:each) do
    @driver.driver_quit
  end
end
