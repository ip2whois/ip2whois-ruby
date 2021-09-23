IP2WHOIS Ruby SDK
========================
This Ruby module enables user to easily implement the checking of WHOIS information for a particular domain into their solution using the API from https://www.ip2whois.com. It is a WHOIS lookup api that helps users to obtain domain information, WHOIS record, by using a domain name. The WHOIS API returns a comprehensive WHOIS data such as creation date, updated date, expiration date, domain age, the contact information of the registrant, mailing address, phone number, email address, nameservers the domain is using and much more. IP2WHOIS supports the query for [1113 TLDs and 634 ccTLDs](https://www.ip2whois.com/tld-cctld-supported).

This module requires API key to function. You may sign up for a free API key at https://www.ip2whois.com/register.



Usage Example
============
### Lookup Domain Information

#### Object Properties

| Property Name | Property Type | Description                                                  |
| ------------- | ------------- | ------------------------------------------------------------ |
| domain        |    string     | Domain name. |

```
require 'ip2whois_ruby'

Ip2whoisRuby::Configuration.api_key = 'YOUR_API_KEY'

result = Ip2whoisRuby::Api.lookup(
  domain: 'example.com'
)
```



### Convert Normal Text to Punycode

#### Object Properties

| Property Name | Property Type | Description                                                  |
| ------------- | :-----------: | ------------------------------------------------------------ |
| domain        |    string     | Domain name. |

```
require 'ip2whois_ruby'

result = Ip2whoisRuby::Api.get_punycode(
  domain: 'xn--tst-qla.de'
)
```



### Convert Punycode to Normal Text

#### Object Properties

| Property Name | Property Type | Description                                                  |
| ------------- | :-----------: | ------------------------------------------------------------ |
| domain        |    string     | Domain name. |

```
require 'ip2whois_ruby'

result = Ip2whoisRuby::Api.get_normal_text(
  domain: 'täst.de'
)
```



LICENCE
=====================
See the LICENSE file.
