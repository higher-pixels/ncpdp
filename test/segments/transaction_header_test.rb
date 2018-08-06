require 'test_helper'

class NCPDP::Segments::TransactionHeaderTest < Test::Unit::TestCase
  setup do
    @string = "121212D0E123232323bb1014563663bbbbbbbb2007091598765bbbbb"
    @hash = {"A1"=>"121212", "A2"=>"D0", "A3"=>"E1", "A4"=>"23232323bb", "A9"=>"1", "B2"=>"01", "B1"=>"4563663bbbbbbbb", "D1"=>"20070915", "AK"=>"98765bbbbb"}
  end

  should 'create from string correctly' do
    segment = NCPDP::Segments::TransactionHeader.new(@string)
    assert_equal @hash, segment.hash
  end

  should 'create from hash correctly' do
    segment = NCPDP::Segments::TransactionHeader.new(@hash)
    assert_equal @string, segment.to_s
  end

end