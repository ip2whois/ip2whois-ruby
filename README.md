IP2WHOIS Ruby SDK
========================
[![Latest Stable Version](https://img.shields.io/gem/v/ip2whois_ruby.svg)](https://rubygems.org/gems/ip2whois_ruby)
[![Total Downloads](https://img.shields.io/gem/dt/ip2whois_ruby.svg)](https://rubygems.org/gems/ip2whois_ruby)

This Ruby module enables user to easily implement the checking of WHOIS information for a particular domain into their solution using the API from https://www.ip2whois.com. It is a WHOIS lookup api that helps users to obtain domain information, WHOIS record, by using a domain name. The WHOIS API returns a comprehensive WHOIS data such as creation date, updated date, expiration date, domain age, the contact information of the registrant, mailing address, phone number, email address, nameservers the domain is using and much more. IP2WHOIS supports the query for [1113 TLDs and 634 ccTLDs](https://www.ip2whois.com/tld-cctld-supported).

This module requires API key to function. You may sign up for a free API key at https://www.ip2whois.com/register.



Usage Example
============
### Lookup Domain Information

```
require 'ip2whois_ruby'

Ip2whoisRuby::Configuration.api_key = 'YOUR_API_KEY'

result = Ip2whoisRuby::Api.lookup('example.com')
```



### Convert Normal Text to Punycode

```
require 'ip2whois_ruby'

result = Ip2whoisRuby::Api.get_punycode('xn--tst-qla.de')
```



### Convert Punycode to Normal Text

```
require 'ip2whois_ruby'

result = Ip2whoisRuby::Api.get_normal_text('täst.de')
```



LICENCE
=====================
See the LICENSE file.
