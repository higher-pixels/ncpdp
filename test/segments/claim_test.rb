require 'test_helper'

class NCPDP::Segments::ClaimTest < Test::Unit::TestCase
  setup do
    @string = "AM0720HYDROCODONE/ACETAMINOPHEN247.5-32528EAD2000001927703D300D530D61D700591260505D80DE20170113DF0DK00E103E7120000EM1EUEVXFDK29987XGTXE2NX"
    @hash = {"AM"=>"07", "20"=>"HYDROCODONE/ACETAMINOPHEN", "24"=>"7.5-325", "28"=>"EA", "D2"=>"000001927703", "D3"=>"00", "D5"=>"30", "D6"=>"1", "D7"=>"00591260505", "D8"=>"0", "DE"=>"20170113", "DF"=>"0", "DK"=>"00", "E1"=>"03", "E7"=>"120000", "EM"=>"1", "EU"=>"", "EV"=>"", "XF"=>"DK29987", "XG"=>"TX", "E2"=>"", "NX"=>""}
  end

  should 'parse correctly' do
    segment = NCPDP::Segment.parse(@string)
    assert_equal @hash, segment.hash
  end

  should 'create from hash' do
    assert_equal @string, NCPDP::Segment.parse(@string).to_s
  end

end