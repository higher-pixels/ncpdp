require 'test_helper'

class NCPDP::Segments::WorkersCompensationTest < Test::Unit::TestCase
  setup do
    @string = "AM06CFEMPLOYERCGCHCICJCKCLDY19980526DZ88888TS01TT999999999TUPAYTO NAMETV123 MAIN STTWTownTXGATY555550998XJ8005555555TZ03UA00591260505"
    @hash = {"AM"=>"06", "CF"=>"EMPLOYER", "CG"=>"", "CH"=>"", "CI"=>"", "CJ"=>"", "CK"=>"", "CL"=>"", "DY"=>"19980526", "DZ"=>"88888", "TS"=>"01", "TT"=>"999999999", "TU"=>"PAYTO NAME", "TV"=>"123 MAIN ST", "TW"=>"Town", "TX"=>"GA", "TY"=>"555550998", "XJ"=>"8005555555", "TZ"=>"03", "UA"=>"00591260505"}
  end

  should 'parse correctly' do
    segment = NCPDP::Segment.parse(@string)
    assert_equal @hash, segment.hash
  end

  should 'create from hash' do
    assert_equal @string, NCPDP::Segment.parse(@string).to_s
  end

end