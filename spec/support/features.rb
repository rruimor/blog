Dir[File.dirname(__FILE__) + '/features/*.rb'].each {|file| require file }

RSpec.configure do |config|
  config.include Features::SessionHelpers, type: :feature
end