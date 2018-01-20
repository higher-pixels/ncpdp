module NCPDP::Records
  class TransmissionTrailer < NCPDP::Record
    # 880-K4  Text Indicator
    # 701     Record Identifier
    # 806-5C  Batch Number
    # 751     Record Count
    # 504-F4  Message
    # 880-K4  Text Indicator

    private

    def fixed_width_schema
      { text_indicator: 1,
        segment_identifier: 2,
        batch_number: 7,
        record_count: 10,
        message: 35,
        terminate: 1 }
    end
  end
end