require 'uri'
require 'net/http'
require 'simpleidn'
require_relative "configuration"
require_relative "version"

module Ip2whoisRuby
  class Api
    # Lookup domain WHOIS information.
    def self.lookup(params = {})
      if params[:format] == nil
        params[:format] = 'json'
      end

      uri = URI.parse("https://api.ip2whois.com/v2?key=" + Ip2whoisRuby::Configuration.api_key + "&format=" + params[:format] + "&domain=" + params[:domain])
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
    def self.get_punycode(params = {})
        return SimpleIDN.to_unicode(params[:domain])
    end

    # Get Normal text.
    def self.get_normal_text(params = {})
        return SimpleIDN.to_ascii(params[:domain])
    end

  end
end
