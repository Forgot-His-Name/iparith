module IPArith

  def self.prefix_valid?(ipstr)
    netstr, mask = ipstr.split('/')

    pref = ::IPAddr.new ipstr

    # mask must be assumed /32 if not defined
    # /32 prefixes always valid in this check
    # so, we just return true after successfuly parse ipstr
    return true unless mask

    pref.to_s == netstr
  rescue ::IPAddr::InvalidAddressError, ::IPAddr::AddressFamilyError
    nil
  end

end
