require 'vcr'

VCR.configure do |c|
  c.stub_with :webmock
  c.cassette_library_dir     = 'features/cassettes'
  c.default_cassette_options = { :record => :new_episodes }
  c.ignore_localhost = true
end

VCR.cucumber_tags do |t|
  t.tag '@auth0'
end
