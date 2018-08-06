require 'test_helper'

class NCPDP::Segments::PharmacyProviderTest < Test::Unit::TestCase
  setup do
    @string = "AM025L1901 E ST.5NTOWN5PPHARMACY5Q55544412125R6183445096FIL"
    @hash = {"AM"=>"02", "5L"=>"1901 E ST.", "5N"=>"TOWN", "5P"=>"PHARMACY", "5Q"=>"5554441212", "5R"=>"618344509", "6F"=>"IL"}
  end

  should 'parse correctly' do
    segment = NCPDP::Segment.parse(@string)
    assert_equal @hash, segment.hash
  end

  should 'create from hash' do
    assert_equal @string, NCPDP::Segment.parse(@string).to_s
  end

end