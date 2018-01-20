module NCPDP::Records
  class TransmissionHeader < NCPDP::Record
    # 880-K4  Text Indicator
    # 701     Segment Identifier
    # 880-K6  Transmission Type
    # 880-K1  Sender ID
    # 806-5C  Batch Number
    # 880-K2  Creation Date
    # 880-K3  Creation Time
    # 702     File Type
    # 102-A2  Version /Release Number
    # 880-K7  Receiver ID
    # 880-K4  Text Indicator


    private

    def fixed_width_schema
      { text_indicator: 1,
        segment_identifier: 2,
        transmission_type: 1,
        sender_id: 24,
        batch_number: 7,
        creation_date: 8,
        creation_time: 4,
        file_type: 1,
        version: 2,
        receiver_id: 24,
        terminate: 1 }
    end
  end
end