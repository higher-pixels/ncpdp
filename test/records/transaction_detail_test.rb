require 'test_helper'

class NCPDP::TransactionDetailTest < Test::Unit::TestCase
  setup do
    @string = "G1          J1997 51B1          1011316971054     201601140000000000AM041D1F1G1H1JC1C24445555C60AM01C419330706C52CASALLYCBDOEC7CM225 MAIN STREETCNCENTERVILLECOPACP171110001CQCX01CY123456AM0720CYCLOBENZAPRINE HCL2410MG28EAD200000100125D300D530D61D765162019050D80DE20160114DF0DK00E103E760000EM1EUEVXFA3B7BYH556XGMNE2NXAM11D9DCDN01DQ854ADU854AAM025L5N5P5Q5R6FMAAM032JHILL ORTHOPEDIC CENTER - DAVENPORT2K2606 DR2MCENTERVILLE2NPA2P171110001DB1234567890DRHILL ORTHO MIDLVLEZ01PM8656873313AM06CFCGCHCICJCKCLDY20160110DZ444555TS01TT999999999TUORTHOPEDIC CENTER - DAVENPORTTV225 MAIN STREETTWCENTERVILLETXPATY17111001XJ9005555555TZ03UA00378075101"
    @hash = { text_indicator: "",
              segment_identifier: "G1",
              transaction_reference_number: "",
              bin_number: "J1997",
              version: "51",
              transaction_code: "B1",
              processor_control_number: "",
              transaction_count: "1",
              service_provider_id_qualifier: "01",
              service_provider_id: "1316971054",
              date_of_service: "20160114",
              software: "0000000000"}
  end

  should 'parse correctly' do
    record = NCPDP::Record.parse(@string)
    assert_equal @hash, record.hash
  end

  should 'identify the segments' do
    record = NCPDP::Record.parse(@string)
    assert_equal 7, record.segments.length
  end

  should 'create from hash' do
    record = NCPDP::Records::TransactionDetail.new(@hash, NCPDP::Record.parse(@string).segments)
    assert_equal @string, record.to_s
  end

end