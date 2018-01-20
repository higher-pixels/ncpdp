module NCPDP
  module Segments
    class Claim
      include NCPDP::Segments

      # 111-AM  Segment Identification
      # 455-EM  Prescription/Service Reference Number Qualifier
      # 4Ø2-D2  Prescription/Service Reference Number
      # 436-E1  Product/Service ID Qualifier
      # 4Ø7-D7  Product/Service ID
      # 456-EN  Associated Prescription/Service Reference Number
      # 457-EP  Associated Prescription/Service Date
      # 458-SE  Procedure Modifier Code Count
      # 459-ER  Procedure Modifier Code
      # 442-E7  Quantity Dispensed
      # 4Ø3-D3  Fill Number
      # 4Ø5-D5  Days Supply
      # 4Ø6-D6  Compound Code
      # 4Ø8-D8  Dispense as Written/Product Selection Code
      # 414-DE  Date Prescription Written
      # 415-DF  Number of Refills Authorized
      # 419-DJ  Prescription Origin Code
      # 354-NX  Submission Clarification Code Count
      # 42Ø-DK  Submission Clarification Code
      # 46Ø-ET  Quantity Prescribed
      # 3Ø8-C8  Other Coverage Code
      # 429-DT  Special Packaging Indicator
      # 453-EJ  Originally Prescribed Product/Service ID Qualifier
      # 445-EA  Originally Prescribed Product/Service Code
      # 446-EB  Originally Prescribed Quantity
      # 33Ø-CW  Alternate ID
      # 454-EK  Scheduled Prescription ID Number
      # 6ØØ-28  Unit of Measure
      # 418-DI  Level of Service
      # 461-EU  Prior Authorization Type Code
      # 462-EV  Prior Authorization Number Submitted
      # 463-EW  Intermediary Authorization Type ID
      # 464-EX  Intermediary Authorization ID
      # 343-HD  Dispensing Status
      # 344-HF  Quantity Intended to be Dispensed
      # 345-HG  Days Supply Intended to be Dispensed
      # 357-NV  Delay Reason Code
      # 88Ø-K5  Transaction Reference Number
      # 391-MT  Patient Assignment Indicator (Direct Member Reimbursement Indicator)
      # 995-E2  Route of Administration
      # 996-G1  Compound Type
      # 114-N4  Medicaid Subrogation Internal Control Number/Transaction Control Number (ICN/TCN)
      # 147-U7  Pharmacy Service Type



      def schema
        { 'AM' =>	'Segment Identification',
        'EM' =>	'Prescription/Service Reference Number Qualifier',
        'D2' =>	'Prescription/Service Reference Number',
        'E1' =>	'Product/Service ID Qualifier',
        'D7' =>	'Product/Service ID',
        'EN' =>	'Associated Prescription/Service Reference Number',
        'EP' =>	'Associated Prescription/Service Date',
        'SE' =>	'Procedure Modifier Code Count',
        'ER' =>	'Procedure Modifier Code',
        'E7' =>	'Quantity Dispensed',
        'D3' =>	'Fill Number',
        'D5' =>	'Days Supply',
        'D6' =>	'Compound Code',
        'D8' =>	'Dispense as Written/Product Selection Code',
        'DE' =>	'Date Prescription Written',
        'DF' =>	'Number of Refills Authorized',
        'DJ' =>	'Prescription Origin Code',
        'NX' =>	'Submission Clarification Code Count',
        'DK' =>	'Submission Clarification Code',
        'ET' =>	'Quantity Prescribed',
        'C8' =>	'Other Coverage Code',
        'DT' =>	'Special Packaging Indicator',
        'EJ' =>	'Originally Prescribed Product/Service ID Qualifier',
        'EA' =>	'Originally Prescribed Product/Service Code',
        'EB' =>	'Originally Prescribed Quantity',
        'CW' =>	'Alternate ID',
        'EK' =>	'Scheduled Prescription ID Number',
        '28' =>	'Unit of Measure',
        'DI' =>	'Level of Service',
        'EU' =>	'Prior Authorization Type Code',
        'EV' =>	'Prior Authorization Number Submitted',
        'EW' =>	'Intermediary Authorization Type ID',
        'EX' =>	'Intermediary Authorization ID',
        'HD' =>	'Dispensing Status',
        'HF' =>	'Quantity Intended to be Dispensed',
        'HG' =>	'Days Supply Intended to be Dispensed',
        'NV' =>	'Delay Reason Code',
        'K5' =>	'Transaction Reference Number',
        'MT' =>	'Patient Assignment Indicator (Direct Member Reimbursement Indicator)',
        'E2' =>	'Route of Administration',
        'G1' =>	'Compound Type',
        'N4' =>	'Medicaid Subrogation Internal Control Number/Transaction Control Number (ICN/TCN)',
        'U7' =>	'Pharmacy Service Type' }
      end
    end
  end
end