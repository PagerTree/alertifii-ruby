require 'oj'
require 'excon'

require 'alertifii/message'
require 'alertifii/response'
require 'alertifii/receipt'
require 'alertifii/version'

# alertifii interface for ruby
module Alertifii
  # headers to include in every request.
  HEADERS = { 'Content-Type' => 'application/json', 'User-Agent' => "alertifii (ruby gem) v#{VERSION}" }
  # excon connection to use for every request.
  Excon = Excon.new('https://api.alertifii.com', headers: HEADERS)
end
