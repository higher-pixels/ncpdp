module NCPDP
  module Segments
    class WorkersCompensation
      include NCPDP::Segments

      def schema
        {'AM' => 'Segment Identification',
         'DY' => 'Date of Injury',
         'CF' => 'Employer Name',
         'CG' => 'Employer Street Address',
         'CH' => 'Employer City Address',
         'CI' => 'Employer State/Province Address',
         'CJ' => 'Employer Zip/Postal Code',
         'CK' => 'Employer Phone Number',
         'CL' => 'Employer Contact Name',
         'CR' => 'Carrier ID',
         'DZ' => 'Claim/Reference ID',
         'TR' => 'Billing Entity Type Indicator',
         'TS' => 'Pay To Qualifier',
         'TT' => 'Pay To ID',
         'TU' => 'Pay To Name',
         'TV' => 'Pay To Street Address',
         'TW' => 'Pay To City Address',
         'TX' => 'Pay To State/Province Address',
         'TY' => 'Pay To ZIP/Postal Zone',
         'TZ' => 'Generic Equivalent Product ID Qualifier',
         'UA' => 'Generic Equivalent Product ID'}
      end
    end
  end
end