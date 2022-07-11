require 'ipaddr'
require_relative 'iparith/check'
require_relative 'iparith/parse'

module IPArith

  def self.addr_to_int(str)
    addr = ::IPAddr.new str
    addr.to_i
  rescue ::IPAddr::InvalidAddressError, ::IPAddr::AddressFamilyError
    nil
  end

end
