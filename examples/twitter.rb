dir = File.expand_path(File.join(File.dirname(__FILE__), '..', 'lib'))
require File.join(dir, 'web')
require 'pp'
config = YAML::load(File.read(File.join(ENV['HOME'], '.twitter')))

class Twitter
  include Web
  base_uri 'twitter.com'
  
  def initialize(user, pass)
    self.class.basic_auth user, pass
  end
  
  def timeline(which=:friends, options={})
    self.class.get("/statuses/#{which}_timeline.xml", options)['statuses'].map(&:to_struct)
  end
  
  def post(text)
    self.class.post('/statuses/update.xml', :query => {:status => text})['status'].to_struct
  end
end


twitter = Twitter.new(config['email'], config['password'])

twitter.timeline.each do |s|
  puts s.user.name, s.text, "#{s.created_at} #{s.id}", ''
end

# twitter.timeline(:friends, :query => {:since_id => 868482746}).each do |s|
#   puts s.user.name, s.text, "#{s.created_at} #{s.id}", ''
# end
# 
# pp twitter.post('this is a test')