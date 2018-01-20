module NCPDP
  class Segment
    def self.segments
      {'00' => Segments::TransactionHeader,
       '01' => Segments::Patient,
       '04' => Segments::Insurance,
       '07' => Segments::Claim,
       '11' => Segments::Pricing,
       '02' => Segments::PharmacyProvider,
       '03' => Segments::Prescriber,
       '06' => Segments::WorkersCompensation,
       '21' => Segments::ResponseStatus,
       '22' => Segments::ResponseClaim }
    end

    def self.from_hash(hash)
      segment_id = hash['AM']
      segment_id
      klass = segments[segment_id]
      if klass = segments[segment_id]
        klass.new(hash)
      else
        raise "Unknown NCPDP Segment #{segment_id}"
      end
    end


    def self.parse(string)
      segment_id = string.match(/\x1cAM(..)\x1c/)[1]
      if klass = segments[segment_id]
        klass.new(string)
      else
        raise "Unknown NCPDP Segment #{segment_id}"
      end
    end
  end

  module Segments

    module FixedWidth
      module ClassMethods
      end

      module InstanceMethods
        def initialize(source)
          if source.is_a? String
            @hash = parse_fixed_width(fixed_width_schema, source)
          elsif source.is_a? Hash
            @hash = source
          end
        end

        def to_s
          create_fixed_width(hash, fixed_width_schema)
        end

        def human_readable
          hash.slice(*schema.keys).map {|code, description| [schema[code], description]}.to_h
        end
      end

      def self.included(receiver)
        receiver.send(:attr_reader, :hash)
        receiver.extend         ClassMethods
        receiver.send :include, InstanceMethods
        receiver.send :include, NCPDP::Parsers
      end
    end

    module ClassMethods
    end

    module InstanceMethods

      def initialize(source)
        if source.is_a? String
          elements = source.split(/[\x1C\x1E\x3\x1D]/).delete_if(&:blank?)
          @hash = Hash[elements.map {|e| [e[0..1], e[2..-1]]}]
        elsif source.is_a? Hash
          @hash = source
        end
      end

      def to_s
        string = hash.to_a.map(&:join).join("\x1c")
        string = "\x1C" + string + "\x1E"
      end

      def human_readable
        hash.slice(*schema.keys).map {|code, description| [schema[code], description]}.to_h
      end

    end

    def self.included(receiver)
      receiver.send(:attr_reader, :hash)
      receiver.extend         ClassMethods
      receiver.send :include, InstanceMethods
    end

  end
end

require_relative './segments/insurance'
require_relative './segments/patient'
require_relative './segments/claim'
require_relative './segments/pricing'
require_relative './segments/pharmacy_provider'
require_relative './segments/prescriber'
require_relative './segments/workers_compensation'
require_relative './segments/response_status'
require_relative './segments/response_claim'
require_relative './segments/transaction_header'
