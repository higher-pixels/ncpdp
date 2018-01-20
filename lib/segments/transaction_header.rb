module NCPDP
  module Segments
    class TransactionHeader
      include NCPDP::Segments::FixedWidth


      # 1Ø1-A1  BIN Number
      # 1Ø2-A2  Version Release Number
      # 1Ø3-A3  Transaction Code
      # 1Ø4-A4  Processor Control Number
      # 1Ø9-A9  Transaction Count
      # 2Ø2-B2  Service Provider ID Qualifier
      # 2Ø1-B1  Service Provider ID
      # 4Ø1-D1  Date of Service
      # 11Ø-AK  Software Vendor/Certification ID

      def schema
        { 'A1' => 'BIN Number',
          'A2' => 'Version Release Number',
          'A3' => 'Transaction Code',
          'A4' => 'Processor Control Number',
          'A9' => 'Transaction Count',
          'B2' => 'Service Provider ID Qualifier',
          'B1' => 'Service Provider ID',
          'D1' => 'Date of Service',
          'AK' => 'Software Vendor/Certification ID' }
      end

      def fixed_width_schema
        { 'A1' => 6,
          'A2' => 2,
          'A3' => 2,
          'A4' => 10,
          'A9' => 1,
          'B2' => 2,
          'B1' => 15,
          'D1' => 8,
          'AK' => 10 }
      end

    end
  end
end