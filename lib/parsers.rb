module NCPDP
  module Parsers
    def parse_fixed_width(fields, string)
      field_sizes = fields.values # [11,1,8,11,24,1,8] #<- the size of each field
      field_pattern = "A#{field_sizes.join('A')}"
      headers = fields.keys
      values = string.unpack(field_pattern)
      Hash[headers.zip(values)]
    end

    def create_fixed_width(source, schema)
      string = ''
      schema.each do |field, size|
        string = string + ("%-#{size}.#{size}s" % source[field])
      end
      return string
    end
  end
end