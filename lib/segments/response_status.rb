module NCPDP
  module Segments
    class ResponseStatus
      include NCPDP::Segments

      # 111-AM  Segment Identification
      # 112-AN  Transaction Response Status
      # 5Ø3-F3  Authorization Number
      # 51Ø-FA  Reject Count
      # 511-FB  Reject Code
      # 546-4F  Reject Field Occurrence Indicator
      # 547-5F  Approved Message Code Count
      # 548-6F  Approved Message Code
      # 13Ø-UF  Additional Message Information Count
      # 132-UH  Additional Message Information Qualifier
      # 526-FQ  Additional Message Information
      # 131-UG  Additional Message Information Continuity
      # 55Ø-7F  Help Desk Phone Number Qualifier
      # 55Ø-8F  Help Desk Phone Number
      # 88Ø-K5  Transaction Reference Number
      # 993-A7  Internal Control Number
      # 987-MA  URL

      def schema
        { 'AM' =>  'Segment Identification',
          'AN' =>  'Transaction Response Status',
          'F3' =>  'Authorization Number',
          'FA' =>  'Reject Count',
          'FB' =>  'Reject Code',
          '4F' =>  'Reject Field Occurrence Indicator',
          '5F' =>  'Approved Message Code Count',
          '6F' =>  'Approved Message Code',
          'UF' =>  'Additional Message Information Count',
          'UH' =>  'Additional Message Information Qualifier',
          'FQ' =>  'Additional Message Information',
          'UG' =>  'Additional Message Information Continuity',
          '7F' =>  'Help Desk Phone Number Qualifier',
          '8F' =>  'Help Desk Phone Number',
          'K5' =>  'Transaction Reference Number',
          'A7' =>  'Internal Control Number',
          'MA' =>  'URL' }
      end
    end
  end
end

