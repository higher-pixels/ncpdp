module NCPDP::Records
  class TransactionDetail < NCPDP::Record
    attr_reader :segments

    # ----- Transaction Detail
    # 880-K4  Text Indicator
    # 701     Segment Identifier  G1=Data Detail Record
    # 880-K5  Transaction Reference Number
        # ----- NCPDP Transaction Header
        # 1Ø1-A1  BIN Number
        # 1Ø2-A2  Version Release Number
        # 1Ø3-A3  Transaction Code
        # 1Ø4-A4  Processor Control Number
        # 1Ø9-A9  Transaction Count
        # 2Ø2-B2  Service Provider ID Qualifier
        # 2Ø1-B1  Service Provider ID
        # 4Ø1-D1  Date of Service
        # 11Ø-AK  Software Vendor/Certification ID
        # ------ NCDPDP DATA SEGMENTS
    # 880-K4  Text Indicator

    def initialize(source, segments = [])
      if source.is_a? Hash
        @hash = source
        @segments = segments
      elsif source.is_a? String
        @hash = parse_fixed_width(schema, source)
        @segments = []
        source.split("\x1E").drop(1).each do |segment_string|
          @segments << NCPDP::Segment.parse(segment_string)
        end
      end
    end

    def to_s
      string = create_fixed_width(hash.slice(*schema.keys), schema)
      string << "\x1E"
      string << segments.map(&:to_s).join
      string.chomp!("\x1E")
      string << "\x03"
    end

    private

    def schema
      {
        text_indicator: 1,
        segment_identifier: 2,
        transaction_reference_number: 10,
        bin_number: 6,
        version: 2,
        transaction_code: 2,
        processor_control_number: 10,
        transaction_count: 1,
        service_provider_id_qualifier: 2,
        service_provider_id: 15,
        date_of_service: 8,
        software: 10
      }
    end
  end
end