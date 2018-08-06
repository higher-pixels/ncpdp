require 'test_helper'

class NCPDP::TransmissionTest < Test::Unit::TestCase
  setup do
    @string = "00T777777777               1213   201611281210T11200787505               
G1          J1997 51B1          1011316971054     201601140000000000AM041D1F1G1H1JC1C24445555C60AM01C419330706C52CASALLYCBDOEC7CM225 MAIN STREETCNCENTERVILLECOPACP171110001CQCX01CY123456AM0720CYCLOBENZAPRINE HCL2410MG28EAD200000100125D300D530D61D765162019050D80DE20160114DF0DK00E103E760000EM1EUEVXFA3B7BYH556XGMNE2NXAM11D9DCDN01DQ854ADU854AAM025L5N5P5Q5R6FMAAM032JHILL ORTHOPEDIC CENTER - DAVENPORT2K2606 DR2MCENTERVILLE2NPA2P171110001DB1234567890DRHILL ORTHO MIDLVLEZ01PM8656873313AM06CFCGCHCICJCKCLDY20160110DZ444555TS01TT999999999TUORTHOPEDIC CENTER - DAVENPORTTV225 MAIN STREETTWCENTERVILLETXPATY17111001XJ9005555555TZ03UA00378075101
991213   0000000003                                   "
  end

  # should 'create from hash' do
  #   # transmission = NCPDP::Transmission.new()
  #   transmission = NCPDP::Transmission.new([transmission_header])
  #   debugger
  #   assert_equal @string.split("\n").first, transmission.to_s
  #   transaction_detail = NCPDP::Record.parse(transmission.records[1].to_s)
  #   transaction_trailer =
  #   # {:text_indicator=>"\x02", :segment_identifier=>"00", :transmission_type=>"T", :sender_id=>"777777777", :batch_number=>"1213", :creation_date=>"20161128", :creation_time=>"1210", :file_type=>"T", :version=>"11", :receiver_id=>"200787505", :terminate=>"\x03"}
  #   # transmission = NCPDP::Transmission.new
  #   # transmission << NCPDP::Record::TransmissionHeader
  #   # transmission << NCPDP::Segment::TransactionHeader
  #   #
  #   # transmission << NCPDP::Record::TransmissionTrailer
  # end

  should 'parse' do
    transmission = NCPDP::Transmission.new(@string)
    assert_equal 3, transmission.records.length
  end

  private

  def transmission_header
    NCPDP::Records::TransmissionHeader.new(
    { text_indicator: "\x02",
      segment_identifier: "00",
      transmission_type: "T",
      sender_id: "777777777",
      batch_number: "1213",
      creation_date: "20161128",
      creation_time: "1210",
      file_type: "T",
      version: "11",
      receiver_id: "200787505",
      terminate: "\x03" })
  end

  def transaction_detail

  end

end