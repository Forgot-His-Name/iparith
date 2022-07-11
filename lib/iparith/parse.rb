module IPArith

  def self.macstr_valid?(macstr)
    return nil unless macstr.is_a? String

    rg_raw = /\A([a-f0-9]{12})\z/
    mdata = rg_raw.match(macstr)

    mdata ? true : nil
  end

  def self.parse_macstr(mac_str)
    return nil unless mac_str.is_a? String

    cleaned_str = mac_str.downcase
    cleaned_str.gsub!(/[-:.]/, '')
    cleaned_str.gsub!('с', 'c') # replace russian c

    rg_raw = /\A([a-f0-9]{12})\z/
    mdata = rg_raw.match(cleaned_str)
    return mdata[1] if mdata

    nil
  end

  def self.ipstr_valid?(ipstr)
    ::IPAddr.new ipstr
    true
  rescue ::IPAddr::InvalidAddressError, ::IPAddr::AddressFamilyError
    nil
  end

end
