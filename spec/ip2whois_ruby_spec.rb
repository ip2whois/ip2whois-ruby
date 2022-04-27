require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "Ip2whoisRuby" do
  it "work correctly with domain lookup" do
    Ip2whoisRuby::Configuration.api_key = $test_api_key
    result = Ip2whoisRuby::Api.lookup('example.c')
    data = JSON.parse(result.body)
    if $test_api_key == 'YOUR_API_KEY'
      expect(data['error']['error_message']).to eq 'API key not found.'
    else
      expect(data['error']['error_message']).to eq 'Invalid domain.'
    end
  end

  it "work correctly with get punycode" do
    result = Ip2whoisRuby::Api.get_punycode('xn--tst-qla.de')
    expect(result).to eq 'täst.de'
  end

  it "work correctly with get normal text" do
    result = Ip2whoisRuby::Api.get_normal_text('täst.de')
    expect(result).to eq 'xn--tst-qla.de'
  end

end
