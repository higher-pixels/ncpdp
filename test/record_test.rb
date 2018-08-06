require 'test_helper'

class NCPDP::RecordTest < Test::Unit::TestCase
  setup do
    @string = Fixtures.record(:transmission_header)
    @hash = Fixtures.record(:transmission_header_hash)
  end

  test 'should parse a string correctly' do
    record = NCPDP::Record.parse(@string)
    assert_equal NCPDP::Records::TransmissionHeader, record.class
    assert_equal @hash, record.hash
  end

end