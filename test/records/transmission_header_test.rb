require 'test_helper'

class NCPDP::TransmissionHeaderTest < Test::Unit::TestCase
  context 'transmission header' do
    setup do
      @string = "00T777777777               1213   201611281210T11200787505               "
      @hash = { text_indicator: "\x02",
                segment_identifier: "00",
                transmission_type: "T",
                sender_id: "777777777",
                batch_number: "1213",
                creation_date: "20161128",
                creation_time: "1210",
                file_type: "T",
                version: "11",
                receiver_id: "200787505",
                terminate: "\x03" }
    end

    should 'parse correctly' do
      record = NCPDP::Record.parse(@string)
      assert_equal @hash, record.hash
    end

    should 'create from hash' do
      record = NCPDP::Records::TransmissionHeader.new(@hash)
      assert_equal @string, record.to_s
    end
  end

end