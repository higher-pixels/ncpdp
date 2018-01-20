module NCPDP
  module Segments
    class Pricing
      include NCPDP::Segments

      # 111-AM  Segment Identification
      # 4Ø9-D9  Ingredient Cost Submitted
      # 412-DC  Dispensing Fee Submitted
      # 477-BE  Professional Service Fee Submitted
      # 433-DX  Patient Paid Amount Submitted
      # 438-E3  Incentive Amount Submitted
      # 478-H7  Other Amount Claimed Submitted Count
      # 479-H8  Other Amount Claimed Submitted Qualifier
      # 48Ø-H9  Other Amount Claimed Submitted
      # 481-HA  Flat Sales Tax Amount Submitted
      # 482-GE  Percentage Sales Tax Amount Submitted
      # 483-HE  Percentage Sales Tax Rate Submitted
      # 484-JE  Percentage Sales Tax Basis Submitted
      # 426-DQ  Usual and Customary Charge
      # 43Ø-DU  Gross Amount Due
      # 423-DN  Basis of Cost Determination
      # 113-N3  Medicaid Paid Amount

      def schema
        {'AM' =>	'Segment Identification',
         'D9' =>	'Ingredient Cost Submitted',
         'DC' =>	'Dispensing Fee Submitted',
         'BE' =>	'Professional Service Fee Submitted',
         'DX' =>	'Patient Paid Amount Submitted',
         'E3' =>	'Incentive Amount Submitted',
         'H7' =>	'Other Amount Claimed Submitted Count',
         'H8' =>	'Other Amount Claimed Submitted Qualifier',
         'H9' =>	'Other Amount Claimed Submitted',
         'HA' =>	'Flat Sales Tax Amount Submitted',
         'GE' =>	'Percentage Sales Tax Amount Submitted',
         'HE' =>	'Percentage Sales Tax Rate Submitted',
         'JE' =>	'Percentage Sales Tax Basis Submitted',
         'DQ' =>	'Usual and Customary Charge',
         'DU' =>	'Gross Amount Due',
         'DN' =>	'Basis of Cost Determination',
         'N3' =>	'Medicaid Paid Amount'}
      end
    end
  end
end