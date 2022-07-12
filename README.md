# iparith

ip [arithmometer](https://rubygems.org/gems/iparith), based on ipaddr gem.

# usage

## validations

### IPArith.macstr_valid?

string is valid mac address without delimeters

### IPArith.ipstr_valid?

string is parseble ip address

### IPArith.prefix_valid?

string is valid ip prefix, which means has all zero bits where bits in mask are zero

## parsers

### IPArith.parse_macstr

return mac address without delimeters or nil if parse failed
