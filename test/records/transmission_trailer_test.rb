require 'test_helper'

class NCPDP::TransmissionTrailerTest < Test::Unit::TestCase
  setup do
    @string = "991213   0000000003                                   "
    @hash = { text_indicator: "\x02", segment_identifier: "99", batch_number: "1213", record_count: "0000000003", message: "", terminate: "\x03" }
  end

  should 'parse correctly' do
    record = NCPDP::Record.parse(@string)
    assert_equal @hash, record.hash
  end

  should 'render correctly' do
    record = NCPDP::Record.parse(@string)
    assert_equal @string, record.to_s
  end
end