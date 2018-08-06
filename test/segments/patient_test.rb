require 'test_helper'

class NCPDP::Segments::PatientTest < Test::Unit::TestCase
  setup do
    @string = "AM01C419660818C52CAFirstCBLastC7CMSTREETCNTOWNCOTXCP55555CQ5555551212CX01CY999999999"
    @hash = {"AM"=>"01", "C4"=>"19660818", "C5"=>"2", "CA"=>"First", "CB"=>"Last", "C7"=>"", "CM"=>"STREET", "CN"=>"TOWN", "CO"=>"TX", "CP"=>"55555", "CQ"=>"5555551212", "CX"=>"01", "CY"=>"999999999"}
  end

  should 'parse correctly' do
    segment = NCPDP::Segment.parse(@string)
    assert_equal @hash, segment.hash
  end

  should 'create from hash' do
    assert_equal @string, NCPDP::Segment.from_hash(@hash).to_s
  end

end