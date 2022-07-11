require 'test_helper'

class CheckPrefixTest < Minitest::Test

  def test_prefix
    assert IPArith.prefix_valid? '192.168.0.0/24'
    assert IPArith.prefix_valid? '192.168.0.1/32'
    assert IPArith.prefix_valid? '0.0.0.0/0'
    assert IPArith.prefix_valid? '2.2.0.0/16'
    assert IPArith.prefix_valid? '2.2.2.0/24'
    assert IPArith.prefix_valid? '2.2.2.2/32'
    assert IPArith.prefix_valid? '2.2.2.2'
    assert IPArith.prefix_valid? '2.2.2.0'

    assert !IPArith.prefix_valid?('192.168.0.1/24')
    assert !IPArith.prefix_valid?('0.0.0.1/16')
    assert !IPArith.prefix_valid?('1.1.1.1/16')
    assert !IPArith.prefix_valid?('2.2.2.0/16')
  end

end
