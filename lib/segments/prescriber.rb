module NCPDP
  module Segments
    class Prescriber
      include NCPDP::Segments

      # 111-AM  Segment Identification
      # 466-EZ  Prescriber ID Qualifier
      # 411-DB  Prescriber ID
      # 427-DR  Prescriber Last Name
      # 498-PM  Prescriber Phone Number
      # 468-2E  Primary Care Provider ID Qualifier
      # 421-DL  Primary Care Provider ID
      # 47Ø-4E  Primary Care Provider Last Name
      # 364-2J  Prescriber First Name
      # 365-2K  Prescriber Street Address
      # 366-2M  Prescriber City Address
      # 367-2N  Prescriber State/Province Address
      # 368-2P  Prescriber ZIP/Postal Zone

      def schema
        {
         'AM' => 'Segment Identification',
         'EZ' => 'Prescriber ID Qualifier',
         'DB' => 'Prescriber ID',
         'DR' => 'Prescriber Last Name',
         'PM' => 'Prescriber Phone Number',
         '2E' => 'Primary Care Provider ID Qualifier',
         'DL' => 'Primary Care Provider ID',
         '4E' => 'Primary Care Provider Last Name',
         '2J' => 'Prescriber First Name',
         '2K' => 'Prescriber Street Address',
         '2M' => 'Prescriber City Address',
         '2N' => 'Prescriber State/Province Address',
         '2P' => 'Prescriber ZIP/Postal Zone' }
      end
    end
  end
end