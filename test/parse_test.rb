require 'test_helper'

class ParseTest < Minitest::Test

  def test_macstr_validation
    assert_nil IPArith.macstr_valid? ''
    assert_nil IPArith.macstr_valid? nil
    assert_nil IPArith.macstr_valid? 0
    assert_nil IPArith.macstr_valid? '1.2.3.4'
    assert_nil IPArith.macstr_valid? 'ab:ab:ab:ab:ab:ab'
    assert_nil IPArith.macstr_valid? 'ab-ab-ab-ab-ab-ab'
    assert_nil IPArith.macstr_valid? 'ababa.babab.ab'

    assert IPArith.macstr_valid? 'abababababab'
    assert IPArith.macstr_valid? '112233445566'
  end

  def test_macstr_parse
    assert_nil IPArith.parse_macstr ''
    assert_nil IPArith.parse_macstr nil
    assert_nil IPArith.parse_macstr 0
    assert_nil IPArith.parse_macstr '1.2.3.4'

    assert_equal 'abababababab', IPArith.parse_macstr('ab:ab:ab:ab:ab:ab')
    assert_equal 'abababababab', IPArith.parse_macstr('ab-ab-ab-ab-ab-ab')
    assert_equal 'abababababab', IPArith.parse_macstr('ababa.babab.ab')
    assert_equal 'abababababab', IPArith.parse_macstr('abababababab')
    assert_equal 'cccccccccccc', IPArith.parse_macstr('сссссссссссс')
  end

  def test_ipstr_validation
    assert_nil IPArith.ipstr_valid? ''
    assert_nil IPArith.ipstr_valid? nil
    assert_nil IPArith.ipstr_valid? 0
    assert_nil IPArith.ipstr_valid? '0.0.0.a'
    assert_nil IPArith.ipstr_valid? '0.0.0.0.0'
    assert_nil IPArith.ipstr_valid? '10.100.10.1000'
    assert_nil IPArith.ipstr_valid? '1.2.3.4   '
    assert_nil IPArith.ipstr_valid? '   1.2.3.4'
    assert_nil IPArith.ipstr_valid? '1. 2.3.4'
    assert_nil IPArith.ipstr_valid? '1.23.4'

    assert IPArith.ipstr_valid? '0.0.0.0'
    assert IPArith.ipstr_valid? '127.0.0.1'
    assert IPArith.ipstr_valid? '192.168.0.0'
    assert IPArith.ipstr_valid? '1.1.1.1'
    assert IPArith.ipstr_valid? '255.255.255.255'
  end

end
