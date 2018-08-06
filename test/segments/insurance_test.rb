require 'test_helper'

class NCPDP::SegmentsInsuranceTest < Test::Unit::TestCase
  setup do
    @string = "AM041DPO Box 28051FClinton1GIA1HTRISTAR Risk Management1J527332805C1C2888888888C61"
    @hash = { "AM"=>"04", "1D"=>"PO Box 2805", "1F"=>"Clinton", "1G"=>"IA", "1H"=>"TRISTAR Risk Management", "1J"=>"527332805", "C1"=>"", "C2"=>"888888888", "C6"=>"1" }
  end

  should 'parse correctly' do
    segment = NCPDP::Segment.parse(@string)
    assert_equal @hash, segment.hash
  end

  should 'represent as string' do
    assert_equal @string, NCPDP::Segment.parse(@string).to_s
  end

end