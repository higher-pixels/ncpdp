require 'test_helper'

class NCPDP::Segments::PricingTest < Test::Unit::TestCase
  setup do
    @string = "AM11D9DCDN01DQ709IDU709I"
    @hash = {"AM"=>"11", "D9"=>"", "DC"=>"", "DN"=>"01", "DQ"=>"709I", "DU"=>"709I"}
  end

  should 'parse correctly' do
    segment = NCPDP::Segment.parse(@string)
    assert_equal @hash, segment.hash
  end

  should 'create from hash' do
    assert_equal @string, NCPDP::Segment.parse(@string).to_s
  end
end