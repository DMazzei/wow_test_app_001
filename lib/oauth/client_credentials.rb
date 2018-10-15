require 'net/http'
require 'uri'
require 'json'

module OAuth
  class ClientCredentials

    def get_token
      app_token = nil
      response = call_bnet_auth

      if response.code == 200
        credentials = JSON.parse(response.body)
        app_token = credentials['access_token']
      end

      app_token
    end

    private

    def call_bnet_auth
      uri = URI.parse(WowTestApp001::Config.UrlPath.token_url)

      http = Net::HTTP.new(uri.host, uri.port)
      http.use_ssl = (uri.scheme == 'https')

      request = Net::HTTP::Post.new(uri.request_uri)
      request.set_form_data(app_credentials)
      request['Content-Type'] = 'application/json'

      http.request(request)
    end

    def app_credentials
      {
        client_id: ENV['BNET_ID'],
        client_secret: ENV['BNET_SECRET'],
        grant_type: 'client_credentials',
      }
    end
  end
end
