require 'test_helper'

class NCPDP::Segments::PrescriberTest < Test::Unit::TestCase
  setup do
    @string = "AM032JFIRST2KSW AVE2MLUFKIN2NTX2P759043166DB1861432056DRLAST MDEZ01PM8001234567"
    @hash = {"AM"=>"03", "2J"=>"FIRST", "2K"=>"SW AVE", "2M"=>"LUFKIN", "2N"=>"TX", "2P"=>"759043166", "DB"=>"1861432056", "DR"=>"LAST MD", "EZ"=>"01", "PM"=>"8001234567"}
  end

  should 'parse correctly' do
    segment = NCPDP::Segment.parse(@string)
    assert_equal @hash, segment.hash
  end

  should 'create from hash' do
    assert_equal @string, NCPDP::Segment.parse(@string).to_s
  end

end