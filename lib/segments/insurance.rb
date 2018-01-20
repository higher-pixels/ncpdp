module NCPDP
  module Segments
    class Insurance
      include NCPDP::Segments

      # 111-AM  Segment Identification
      # 3Ø2-C2  Cardholder ID
      # 312-CC  Cardholder First Name
      # 313-CD  Cardholder Last Name
      # 314-CE  Home Plan
      # 524-FO  Plan ID
      # 3Ø9-C9  Eligibility Clarification Code
      # 3Ø1-C1  Group ID
      # 3Ø3-C3  Person Code
      # 3Ø6-C6  Patient Relationship Code
      # 99Ø-MG  Other Payer BIN Number
      # 991-MH  Other Payer Processor Control Number
      # 356-NU  Other Payer Cardholder ID
      # 992-MJ  Other Payer Group ID
      # 359-2A  Medigap ID
      # 36Ø-2B  Medicaid Indicator
      # 361-2D  Provider Accept Assignment Indicator
      # 997-G2  CMS Part D Defined Qualified Facility
      # 115-N5  Medicaid ID Number
      # 116-N6  Medicaid Agency Number

      def schema
        { 'AM' => 'Segment Identification',
          'C2' => 'Cardholder ID',
          'CC' => 'Cardholder First Name',
          'CD' => 'Cardholder Last Name',
          'CE' => 'Home Plan',
          'FO' => 'Plan ID',
          'C9' => 'Eligibility Clarification Code',
          'C1' => 'Group ID',
          'C3' => 'Person Code',
          'C6' => 'Patient Relationship Code',
          'MG' => 'Other Payer BIN Number',
          'MH' => 'Other Payer Processor Control Number',
          'NU' => 'Other Payer Cardholder ID',
          'MJ' => 'Other Payer Group ID',
          '2A' => 'Medigap ID',
          '2B' => 'Medicaid Indicator',
          '2D' => 'Provider Accept Assignment Indicator',
          'G2' => 'CMS Part D Defined Qualified Facility',
          'N5' => 'Medicaid ID Number',
          'N6' => 'Medicaid Agency Number' }
      end
    end

  end
end