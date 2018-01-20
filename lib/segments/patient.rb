module NCPDP
  module Segments
    class Patient
      include NCPDP::Segments

      def to_s
        # there must be a group separator (hex 1D) between the Patient and Claim segments, but not between the other segments.
        string = hash.to_a.map(&:join).join("\x1C")
        string = "\x1C" + string + "\x1D" + "\x1E"
      end


      # 111-AM	Segment Identification
      # 331-CX  Patient ID Qualifier
      # 332-CY  Patient ID
      # 3Ø4-C4  Date of Birth
      # 3Ø5-C5  Patient Gender Code
      # 31Ø-CA  Patient First Name
      # 311-CB  Patient Last Name
      # 322-CM  Patient Street Address
      # 323-CN  Patient City
      # 324-CO  Patient State or Province
      # 325-CP  Patient Zip/Postal Code
      # 326-CQ  Patient Phone number
      # 3Ø7-C7  Place of Service
      # 333-CZ  Employer ID
      # 334-1C  Smoker/Non-smoker Code
      # 335-2C  Pregnancy Indicator
      # 35Ø-HN  Patient E-Mail Address
      # 384-4X  Patient Residence

      def schema
        { 'AM' =>	 'Segment Identification',
          'CX' =>  'Patient ID Qualifier',
          'CY' =>  'Patient ID',
          'C4' =>  'Date of Birth',
          'C5' =>  'Patient Gender Code',
          'CA' =>  'Patient First Name',
          'CB' =>  'Patient Last Name',
          'CM' =>  'Patient Street Address',
          'CN' =>  'Patient City',
          'CO' =>  'Patient State or Province',
          'CP' =>  'Patient Zip/Postal Code',
          'CQ' =>  'Patient Phone number',
          'C7' =>  'Place of Service',
          'CZ' =>  'Employer ID',
          '1C' =>  'Smoker/Non-smoker Code',
          '2C' =>  'Pregnancy Indicator',
          'HN' =>  'Patient E-Mail Address',
          '4X' =>  'Patient Residence' }
      end
    end
  end
end