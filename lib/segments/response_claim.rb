module NCPDP
  module Segments
    class ResponseClaim
      include NCPDP::Segments

      # 111-AM  Segment Identification
      # 455-EM  Prescription/Service Reference Number Qualifier
      # 4Ø2-D2  Prescription/Service Reference Number
      # 551-9F  Preferred Product Count
      # 552-AP  Preferred Product ID Qualifier
      # 553-AR  Preferred Product ID
      # 554-AS  Preferred Product Incentive
      # 555-AT  Preferred Product Cost Share Incentive
      # 556-AU  Preferred Product Description
      # 114-N4  Medicaid Subrogation Internal Control Number/Transaction Control Number (ICN/TCN)



      def schema
        { 'AM' =>  'Segment Identification',
          'EM' =>  'Prescription/Service Reference Number Qualifier',
          'D2' =>  'Prescription/Service Reference Number',
          '9F' =>  'Preferred Product Count',
          'AP' =>  'Preferred Product ID Qualifier',
          'AR' =>  'Preferred Product ID',
          'AS' =>  'Preferred Product Incentive',
          'AT' =>  'Preferred Product Cost Share Incentive',
          'AU' =>  'Preferred Product Description',
          'N4' =>  'Medicaid Subrogation Internal Control Number/Transaction Control Number (ICN/TCN)' }
      end
    end
  end
end

