require 'uri'
require 'net/http'
require 'simpleidn'
require_relative "configuration"
require_relative "version"

module Ip2whoisRuby
  class Api
    # Lookup domain WHOIS information.
    def self.lookup(domain)
      uri = URI.parse("https://api.ip2whois.com/v2?key=" + Ip2whoisRuby::Configuration.api_key + "&format=json&domain=" + domain)
      http = Net::HTTP.new(uri.host, uri.port)
      http.use_ssl = true
      request = Net::HTTP::Get.new(uri.request_uri)

      response = http.request(request)

      if response == nil
        return false
      else
        return response
      end
    end

    # Get Punycode.
    def self.get_punycode(domain)
        return SimpleIDN.to_unicode(domain)
    end

    # Get Normal text.
    def self.get_normal_text(domain)
        return SimpleIDN.to_ascii(domain)
    end

  end
end
