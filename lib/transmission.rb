module NCPDP
  class Transmission
    attr_reader :records

    def initialize(source)
      if source.is_a? String
        @records = records_from_string(source)
      elsif source.is_a? Array
        @records = source
      end
    end

    def records_from_string(string)
      string.gsub!("\n", '')
      records = []
      string.scan(/\x02[^\x02]*\x03/).each do |record_string|
        records << Record.parse(record_string)
      end
      return records
    end

    def to_s
      records.map(&:to_s).join("\n")
    end

  end


end