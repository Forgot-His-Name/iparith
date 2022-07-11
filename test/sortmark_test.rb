require 'test_helper'

class SortmarkTest < Minitest::Test

  def test_sortmark
    assert_nil IPArith.addr_to_int ''
    assert_nil IPArith.addr_to_int nil
    assert_nil IPArith.addr_to_int 0
    assert_nil IPArith.addr_to_int '0.0.0.a'
    assert_nil IPArith.addr_to_int '0.0.0.0.0'
    assert_nil IPArith.addr_to_int '1.10.100.1000'

    assert_equal 2_130_706_433, IPArith.addr_to_int('127.0.0.1')
    assert_equal 3_232_235_520, IPArith.addr_to_int('192.168.0.0')
    assert_equal 16_843_009, IPArith.addr_to_int('1.1.1.1')
    assert_equal 4_294_967_295, IPArith.addr_to_int('255.255.255.255')
  end

end
