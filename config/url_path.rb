module Config
  class UrlPath
    REGION = 'us'

    def self.token_url
      "https://#{get_host(REGION)}/oauth/token"
    end

    private

    def get_host(region)
      "#{region}.battle.net"
    end
  end
end