require 'faraday'
require 'faraday_middleware'
require 'constants'

module Api
  HEADERS = {}

  def self.connection
    @connection ||= Faraday.new(url: Constants::CONFIG['base_api_url'], headers: HEADERS) do |conn|
      conn.request  :json
      conn.response :json, :content_type => /\bjson$/ # parses JSON response.body automatically
      conn.adapter  Faraday.default_adapter
    end
  end
end
