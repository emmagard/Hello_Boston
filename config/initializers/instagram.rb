

Instagram.configure do |config|
  config.client_id = ENV['INSTAGRAM_API_CLIENT_ID']
  config.client_secret = ENV['INSTAGRAM_API_CLIENT_SECRET']
  # For secured endpoints only
  #config.client_ips = '<Comma separated list of IPs>'
end
