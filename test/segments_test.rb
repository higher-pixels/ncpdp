require 'test_helper'

class NCPDP::SegmentsTest < Test::Unit::TestCase
  setup do
    @string = "AM11D9DCDN01DQ709IDU709I"
  end

  should 'recognize the segment type as pricing' do
    segment = NCPDP::Segment.parse(@string)
    assert_equal NCPDP::Segments::Pricing, segment.class
  end

end