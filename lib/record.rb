
module NCPDP
  class Record
    attr_reader :hash

    include NCPDP::Parsers

    def initialize(source)
      if source.is_a? String
        @hash = parse_fixed_width(fixed_width_schema, source)
      elsif source.is_a? Hash
        @hash = source
      end
    end

    def self.parse(string)
      segment_id = string.match(/^\x2(..)/)[1]
      if klass = segments[segment_id]
        klass.new(string)
      else
        raise 'Unknown NCPDP Segment'
      end
    end

    def self.segments
      { '00' => Records::TransmissionHeader,
        'G1' => Records::TransactionDetail,
        '99' => Records::TransmissionTrailer }
    end

    def to_s
      create_fixed_width(hash, fixed_width_schema)
    end

    private

    def fixed_width_schema
      { text_indicator: 1,
        segment_identifier: 2 }
    end

    def parse_from_string(string)
      parse_fixed_width(schema, string)
    end

  end
end

require_relative './records/transaction_detail'
require_relative './records/transmission_header'
require_relative './records/transmission_trailer'
